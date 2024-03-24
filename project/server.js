require('dotenv').config()
const sqlite3 = require('sqlite3').verbose()
const express = require('express')
const db = new sqlite3.Database('./database.db')

const app = express()
app.use(express.json())

// List all the teams
app.get('/joukkueet/', (req, res) => {
  db.all('SELECT * FROM joukkueet', (err, rows) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else {
      res.json(rows)
    }
  })
})

// Search team with ID
app.get('/joukkueet/:id', (req, res) => {
  const userId = req.params.id

  db.get('SELECT * FROM joukkueet WHERE id = ?', [userId], (err, row) => {
    if (err) {
      console.error(err)
      res.status(500).json({ error: 'Internal Server Error' })
    } else if (!row) {
      res.status(404).json({ error: 'User not found' })
    } else {
      res.json(row)
    }
  })
})

// Search by team name
app.get('/search/', (req, res) => {
  const teamName = req.query.team
  const sql = 'SELECT * FROM joukkueet WHERE nimi LIKE \'%\' || ? || \'%\''

  db.all(sql, [`%${teamName}%`], (err, rows) => {
    if (err) {
      console.error(err.message)
      return res.status(500).json({ error: 'Internal Server Error' })
    }
    res.status(200).json(rows)
  })
})

// Query with amount of losses and points
app.get('/query', (req, res) => {
  const { tappiot, pisteet } = req.query
  const tappiotValue = parseInt(tappiot)
  const pisteetValue = parseInt(pisteet)

  if (isNaN(tappiotValue) || isNaN(pisteetValue)) {
    return res.status(400).json({ error: 'Invalid query parameters' })
  }

  const sql = 'SELECT * FROM joukkueet WHERE Tappiot < ? AND Pisteet > ?'

  db.all(sql, [tappiotValue, pisteetValue], (err, rows) => {
    if (err) {
      console.error(err.message)
      return res.status(500).json({ error: 'Internal Server Error' })
    }
    res.status(200).json(rows)
  })
})

// Delete team from the table
app.delete('/joukkueet/:id', (req, res) => {
  const id = req.params.id

  db.run('DELETE FROM joukkueet WHERE id = ?', [id], function (err) {
    if (err) {
      console.error(err.message)
      return res.status(500).json({ error: 'Internal Server Error' })
    }
    if (this.changes === 0) {
      return res.status(404).json({ error: 'Entry not found' })
    }
    console.log(`Entry with id ${id} has been deleted`)
    res.status(204).send()
  })
})

// Add team into the table
app.post('/joukkueet', (req, res) => {
  const newJoukkue = req.body

  db.run('INSERT INTO joukkueet (nimi, Ottelut, Voitot, Tasapelit, Tappiot, Lisäpisteet, Pisteet) VALUES (?, ?, ?, ?, ?, ?, ?)',
    [newJoukkue.nimi,
      newJoukkue.Ottelut,
      newJoukkue.Voitot,
      newJoukkue.Tasapelit,
      newJoukkue.Tappiot,
      newJoukkue.Lisäpisteet,
      newJoukkue.Pisteet],
    function (err) {
      if (err) {
        console.error(err)
        return res.status(500).json({ error: 'Internal Server Error' })
      }
      res.status(201).json({ message: 'New joukkue added successfully' })
    })
})

const PORT = process.env.PORT || 8000

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`)
})

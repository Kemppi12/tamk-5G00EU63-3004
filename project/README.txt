GENERAL

Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
Date: 24-03-23

DESCRIPTION

Liiga Api

Liigan runkosarjan sarjataulukko kaudelta 2023-24.
Taulukkoon listattuna tulokset 60 ottelun jälkeen.

INSTALL

npm install sqlite3 --save
npm install express --save
npm install dotenv --save
npm install standard --save-dev

USAGE

Npm run start OR node server.js, starts the server on localhost:8080

API DESCRIPTION

The API provides endpoints for managing teams in Liiga sarjataulukko.
Below are the available endpoints along with their descriptions:

GET http://localhost:8080/joukkueet
   Description: Retrieves a list of all teams.

GET http://localhost:8080/joukkueet/{id}
   Description: Retrieves details of a specific team identified by their ID.
   Parameters:
     - id (integer): The unique identifier of the team.

GET http://localhost:8080/search?team=ilves
   Description: Retrieves details of teams matching the provided team name query parameter.
   Parameters:
     - team (string): The name of the team to search for.

GET http://localhost:8080/query?tappiot=15&pisteet=100
   Description: Retrieves a list of teams based on the specified criteria of maximum losses and minimum points.
   Parameters:
     - tappiot (integer): The maximum number of losses allowed.
     - pisteet (integer): The minimum number of points required.

DELETE http://localhost:8080/joukkueet/{id}
   Description: Deletes a team.
   Parameters:
     - id (integer): The unique identifier of the team to be deleted.

POST http://localhost:8080/joukkueet
   Description: Creates a new team.
   Request Body:
     - nimi (string)
     - ottelut (string)
     - voitot (int)
     - tasapelit (int)
     - tappiot (int)
     - lisäpisteet (int)
     - pisteet (int)

API EXAMPLES

<curl .... command exmaples>
1. Get list of all teams:
curl --silent --include http://localhost:8080/joukkueet

2. Get details of a specific team with id:
curl --silent --include http://localhost:8080/joukkueet/2

3. Search team by name:
curl --silent --include http://localhost:8080/search?team=ilves

4. Query with amount of losses and points:
curl --silent --include http://localhost:8080/query?tappiot=15&pisteet=100

5. Delete team by id:
curl -X DELETE http://localhost:8080/joukkueet/10

6. Add new team:
curl -X POST http://localhost:8080/joukkueet/ -H "Content-Type: application/json" -d '{
  "nimi": "Saipa",
  "Ottelut": 60,
  "Voitot": 5,
  "Tasapelit": 20,
  "Tappiot": 35,
  "Lisäpisteet": 10,
  "Pisteet": 45
}'



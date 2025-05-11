## Manual Installation:
- Install nodejs locally
- Clone the repo
- Install dependencies (npm install) 
- Start DB locally () 
 - `docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres`
 - Or go to the neon.tech and create a new database
- Change the .env file to update your database credentials
- run `npx prisma migrate dev`
- run `npx prisma generate`
- run `npm run build`
- run `npm run start`


 ## Docker Installation:
- Clone the repo
- Install docker
- Create a network `docker network create user_project`
- Start Postgres DB
 - `docker run --network user_project --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres`
- Build the image `docker build --network=host -t user-project .`
- Run the container `docker run -e DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres --network user_project -p 3000:3000 user-project`



## Docker compose installation steps:
- Install docker, docker-compose
- Run `docker compose up`
 
 
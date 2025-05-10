### Manual Installation:
- Install nodejs locally
- Clone the repo
- Install dependencies (npm install) 
- Start DB locally () 
 - `docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres`
 - Or go to the neon.tech and create a new database
- Change the .env file to update your database credentials
- run `npx prisma migrate`
- run `npx prisma generate`
- run `npm run build`
- run `npm run start`


 ## Docker Installation:
- Clone the repo



## Docker compose installation steps:
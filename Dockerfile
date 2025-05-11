FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

COPY prisma ./prisma/

RUN npm install

COPY . .

ENV DATABASE_URL=postgresql://postgres:mysecretpassword@localhost:5432/postgres


RUN npx prisma migrate dev

RUN npx prisma generate
# RUN npx prisma migrate dev --name init
RUN npm run build
 
EXPOSE 3000

CMD ["npm","run","start"]
# CMD ["sh", "-c", "npx prisma generate && npm run start"]



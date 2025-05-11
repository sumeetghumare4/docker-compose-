# Docker Compose User Application

A simple user management application built with Express.js, TypeScript, and PostgreSQL, containerized with Docker Compose.

## Overview

This project demonstrates how to set up a full-stack application using Docker Compose to manage multiple containers. It includes:

- A Node.js/Express backend service
- A PostgreSQL database
- Prisma ORM for database interactions

## Project Structure

docker-compose/ ├── Dockerfile # Node.js application container configuration ├── docker-compose.yml # Multi-container Docker application definition ├── package.json # Node.js dependencies and scripts ├── prisma/ # Prisma ORM configuration │ └── schema.prisma # Database schema definition └── src/ # Application source code └── index.ts # Main application entry point

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone the repository:
   ```bash
   git clone [https://github.com/sumeetghumare4/docker-compose-.git](https://github.com/sumeetghumare4/docker-compose-.git)
   cd docker-compose


2. Start the application using Docker Compose:
 - `docker-compose up`
- This command will:
  - Build the Node.js application image
  - Start the PostgreSQL database
  - Start the user application service
  - Connect the application to the database

3. Access the application at http://localhost:3000

### API Endpoints
`GET /` - Retrieve all users
`POST /`- Create a new user (automatically generates random username)

#### Development
 - Running in Development Mode
   - The application is configured to run in development mode with hot-reloading enabled.

#### Database Management
 - The PostgreSQL database is exposed on port 5432 and can be accessed with:

   - Host: localhost
   - Port: 5432
   - Username: postgres
   - Password: mysecretpassword
   - Database: postgres

#### Stopping the Application
- To stop the running containers:
 - `docker-compose down`    

### Contributing
For contribution guidelines, please refer to the Contribute.md file in this repository.

### License
ISC
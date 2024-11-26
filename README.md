# Containerized React Application with Docker

**Containerized React Application with Docker** is a demo project that demonstrates how to create, build, and deploy a React application using Docker. This project includes:
- A basic React app created with `create-react-app`.
- A **Dockerfile** for containerizing the application.
- Instructions to build the Docker image, create a container, and host the app using Docker.

---

## Features
- Simple React app built using `create-react-app`.
- Dockerfile to containerize the React application.
- Step-by-step instructions for building the Docker image, creating a container, and hosting the app.
- Easy deployment and portability with Docker.

---

## Project Structure

Containerized-React-App/ ├── public/ # Static assets (images, icons, index.html, etc.) ├── src/ # Source code (React components, styles) │ ├── App.js # Main app component (renders the core UI) │ ├── index.js # Entry point (renders the app to the DOM) ├── Dockerfile # Docker configuration for containerizing the app ├── package.json # Dependencies and scripts for the app └── README.md # Project documentation


---

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/uday077/Containerized-React-Application-with-Docker-project.git
cd Containerized-React-Application-with-Docker-project


## Install Dependencies

npm install

### Start the Development Server

npm start


This will start the app at http://localhost:3000.


Docker Setup
Build the Docker Image
To containerize the React app, you need to build the Docker image. The project includes a Dockerfile for this purpose.

docker build -t containerized-react-app .

* This command will create a Docker image with the name containerized-react-app.


Run the Docker Container
After building the image, you can create and run a Docker container from that image.

docker run -d -p 3000:3000 containerized-react-app



Dockerfile Explanation
Here's the Dockerfile used for this project:


# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose port 3000 to access the app
EXPOSE 3000

# Start the application when the container runs
CMD ["npm", "start"]


Usage
Clone the repository and install dependencies.
Build the Docker image using the Dockerfile.
Run the Docker container to see the React app hosted within it.


Technologies Used
React (via create-react-app)
Docker
Node.js







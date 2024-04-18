# STAGE 1: fist stage is Build stage 
FROM node:21

# My working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies through npm
RUN npm install

# Copy the rest of the application code
COPY . .


# Expose port 80 for accessing by internet
EXPOSE 3000

# Start nginx when the container starts
CMD ["node",  "index.js"]

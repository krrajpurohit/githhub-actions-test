# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port as an environment variable (customize as needed)
ENV PORT=3000

# Define the command to run your application
CMD [ "node", "app.js" ]
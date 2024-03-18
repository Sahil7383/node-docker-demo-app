#FROM line specifies the base image for your container
FROM node:latest 

#The WORKDIR line sets the working directory within the container where your application code will be placed.
WORKDIR /app

# Copy the package.json file to install dependencies
COPY package*.json .

# Install dependencies using npm
RUN npm install

# Copy your application code
COPY . .

# Expose the port your application listens on (optional)
EXPOSE 3000

# Specify the command to run when the container starts
# Replace "npm start" with your actual start script
CMD [ "npm", "start" ]   



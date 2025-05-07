# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app’s source code
COPY . .

# Expose port 8080
EXPOSE 8080

# Start the app
CMD ["npm", "start"]

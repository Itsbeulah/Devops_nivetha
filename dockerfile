# Use official Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package files first (for better layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Default command to run tests
CMD ["npm", "test"]

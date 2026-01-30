# Use Node.js 20 as base
FROM node:20
 
# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY app/package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application
COPY app/ .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]


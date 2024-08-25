FROM node:lts-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Nuxt.js application
RUN npm run build

# Expose the port Nuxt.js is running on (default: 3000)
EXPOSE 3000

# Start the Nuxt.js application
CMD ["npm", "start"]
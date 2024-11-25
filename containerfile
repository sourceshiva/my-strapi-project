# Use the official Node.js image as a base
FROM node:16

# Set the working directory
WORKDIR /srv/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the Strapi server port
EXPOSE 1337

# Start the Strapi application
CMD ["npm", "run", "develop"]
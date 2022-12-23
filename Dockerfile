# ==== CONFIGURE =====
# Use a Node 16 base image
FROM node:17-alpine 
# Set the working directory to /app inside the container
WORKDIR /app
# Copy app files
COPY package.json .

RUN npm i 

COPY . .
# ==== BUILD =====
# Install dependencies (npm ci makes sure the exact versions in the lockfile gets installed)
EXPOSE 3000
CMD [ "npm", "start"]
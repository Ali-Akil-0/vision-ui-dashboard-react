# ==== CONFIGURE =====
# Use a Node 16 base image
FROM node:17-alpine 

ENV NODE_ENV=production

WORKDIR /app
# Copy app files
COPY ["package.json", "package-lock.json", "./"]

RUN npm i 

COPY . .
# ==== BUILD =====
# Install dependencies (npm ci makes sure the exact versions in the lockfile gets installed)
EXPOSE 3000
CMD [ "npm", "start"]
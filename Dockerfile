# Specify a base image
FROM node:alpine

# Install some dependencies
WORKDIR /usr/app

# Copy package.json to the working dir
COPY package.json .

# if the above file gets modified, we gonna run the npm install
RUN npm install

# We copy all the files to the working dir
COPY . .

# Default command
CMD ["npm", "start"]
# Select base image to reference
FROM node:14

# Define working directory in the container
WORKDIR /app

# Copy local files to the container
COPY . /app

# Install dependencies in the package.json file inside the container
RUN npm install


# Make the container listen on port 8080 and run the server
EXPOSE 8080
CMD ["node", "index.js"]

# To deploy the container and run the server, run the following commands:

# docker build -t <image_name> .
# docker run -p 8080:8080 <image_name>

# To see server responses, run the following command:

# curl localhost:8080
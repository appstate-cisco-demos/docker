# Docker
## Pre-requisites
### Download Docker
Go to https://docs.docker.com/get-docker/ and download Docker based on your machine's OS

Confirm that Docker is installed on your machine by running the following command:

```
docker --version
```

### Clone this repository to your local machine

```
git clone https://github.com/appstate-cisco-demos/docker.git
```

## Building the Docker image

To build the Docker image that this repository uses, run the following command:

```
docker build -t <image_name> <path_to_Dockerfile>
```


## Running Docker containers

To deploy the container and run the server, run the following commands:

```
docker run -p 8080:8080 <image_name>
```
To see server responses, run the following command:

```
curl localhost:8080
```
To have an interactive terminal inside of the container, run the following command:

```
docker run -it -p 8080:8080 <image_name> /bin/bash
```
# Dockerized Turtlenode Website

This is a dockerized version of [Turtlenode.io](https://github.com/brandonlehmann/turtlenode.io) using my [docker-alpine-nginx-modsec](https://github.com/andrewnk/docker-alpine-nginx-modsec) image

1. Update ```config/turtlenode/config.js``` with your nodes
2. In the project's root dir, build the image ```docker build -t turtlenode .```
3. Run a container ```docker run -d -p 80:80 turtlenode```
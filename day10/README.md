# Day 10 – Live Development with Docker Bind Mounts

## Goal
Set up live code reload using `-v` (bind mount) so changes appear instantly without rebuilding the image.

## Commands Used

```bash
# Run Nginx with live folder sync
docker run -d -p 8080:80 --name my-live-web \
  -v $(pwd):/usr/share/nginx/html nginx:alpine

# Check running containers
docker ps

# Stop container
docker stop my-live-web

# Remove container
docker rm my-live-web

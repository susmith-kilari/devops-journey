# Day 13 – Docker Volumes: Bind Mounts vs Named Volumes

## Goal
Learn how to persist data in containers using two methods.

## Types of Volumes

### 1. Bind Mount
- Links local folder to container
- Used during development
- Example: edit code → see change instantly

### 2. Named Volume
- Docker-managed storage
- Survives container deletion
- Used in production

## Commands Used

### Bind Mount (Live Edit)
```bash
echo "Hello" > index.html
docker run -d -p 8080:80 --name web -v $(pwd):/usr/share/nginx/html nginx:alpine

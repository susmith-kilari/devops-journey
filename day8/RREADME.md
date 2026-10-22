# Day 8 – Run Your First Docker Container

## Goal
Run an Nginx web server in a Docker container and access it via browser.

## Commands Used

1. **Start container:**
   ```bash
   docker run -d -p 8080:80 --name my-nginx nginx

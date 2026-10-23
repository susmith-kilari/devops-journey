# Day 9 – Build a Custom Docker Image

## Goal
Package a custom static website into a Docker container using `Dockerfile`.

## Files Created
- `index.html`: My first web page
- `Dockerfile`: Instructions to build the image

## Commands Used

| Action | Command |
|------|-------|
| Build image | `docker build -t my-web-app .` |
| Run container | `docker run -d -p 8080:80 --name my-web my-web-app` |
| List images | `docker images` |
| View running | `docker ps` |
| Stop container | `docker stop my-web` |
| Remove container | `docker rm my-web` |

## Proof of Work
✅ Screenshot: Browser showing "Hello from Docker!"  
✅ Terminal: Output of `docker build` and `docker ps`  
✅ All files pushed to GitHub

## Key Learnings
- `Dockerfile` automates image creation
- `COPY` puts files into the image
- Base images like `nginx:alpine` save time and reduce size
- `docker build .` uses current directory as source
- Every `RUN`, `COPY`, `CMD` creates a layer — efficient and cacheable

## Next Steps
➡️ Day 10: Live Development with Bind Mounts – Edit code live without rebuilding!

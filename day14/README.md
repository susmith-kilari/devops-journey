# Day 14 – Docker Networking: Connect Containers Securely

## Goal
Understand how containers communicate using custom networks.

## Key Concepts
- Containers cannot talk unless on same network
- Use `--network` to connect them
- They can reach each other by **container name**
- Isolated from host and other networks

## Commands Used

### Create custom network
```bash
docker network create my-web-net

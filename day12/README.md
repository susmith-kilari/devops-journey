# Day 12 – Docker Compose: Web + DB Stack

## Goal
Run two containers together: Nginx web server + PostgreSQL database.

## Files Created
- `docker-compose.yml`: Defines services, network, volume

## Commands Used
```bash
# Start stack
docker compose up -d

# Check status
docker compose ps

# View logs
docker compose logs

# Stop stack
docker compose down

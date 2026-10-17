# Health Checker Script

This script monitors disk usage every 5 minutes and logs warnings if usage >80%.

## How It Works

- Runs via `cron` every 5 mins
- Uses `df /` to get root disk usage
- Logs to `health.log` with timestamp
- Warns if usage exceeds 80%

## Commands Used

| Command | Purpose |
|--------|--------|
| `df /` | Get disk usage |
| `awk '{print $5}'` | Extract percentage |
| `sed 's/%//'` | Remove % symbol |
| `chmod +x` | Make script executable |
| `crontab -e` | Schedule automatic runs |

## Why This Matters

Used to prevent server crashes due to full disk — common issue in production.

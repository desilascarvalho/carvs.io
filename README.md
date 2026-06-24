# carvs.io

Landing page for [Carvs Tech Consulting](https://carvs.io).

## Stack

- **Frontend:** Static HTML with optimized assets
- **Container:** Docker with nginx:alpine
- **Network:** Isolated Docker network (`media`)
- **Exposure:** Cloudflare Tunnel (no open ports on the server)
- **DNS/SSL:** Cloudflare (automatic SSL, CNAME flattening on apex)

## Infrastructure

```
Internet → Cloudflare (SSL + CDN)
             ↓
      Cloudflare Tunnel
             ↓
   [cloudflared container]  ←→  Docker network: media
             ↓
     [carvs-site container]
        nginx:alpine :80
```

## Running locally

```bash
docker build -t carvs-site .
docker run -p 8080:80 carvs-site
```

Open: http://localhost:8080

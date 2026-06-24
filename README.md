# carvs.io

Landing page da [Carvs Tech Consulting](https://carvs.io).

## Stack

- **Frontend:** HTML estático com assets otimizados
- **Container:** Docker com nginx:alpine
- **Rede:** Docker network isolada (`media`)
- **Exposição:** Cloudflare Tunnel (sem porta aberta no servidor)
- **DNS/SSL:** Cloudflare (SSL automático, CNAME flattening no apex)

## Infraestrutura

```
Internet → Cloudflare (SSL + CDN)
             ↓
      Cloudflare Tunnel
             ↓
   [cloudflared container]  ←→  rede Docker: media
             ↓
     [carvs-site container]
        nginx:alpine :80
```

## Como rodar localmente

```bash
docker build -t carvs-site .
docker run -p 8080:80 carvs-site
```

Acesse: http://localhost:8080

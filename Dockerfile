---
version: "2.1"
services:
  code-server:
    image: ghcr.io/linuxserver/code-server
    container_name: code-server
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - PASSWORD=password #optional
      - HASHED_PASSWORD= #optional
      - SUDO_PASSWORD=password #optional
      - SUDO_PASSWORD_HASH= #optional
      - PROXY_DOMAIN=code-server.my.domain #optional
    volumes:
      - /path/to/appdata/config:/config
    ports:
      - 8443:8443
    restart: unless-stopped

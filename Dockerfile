FROM ghost:3-alpine

ARG DOMAIN_SERVER
ARG PORT
EXPOSE 8080
RUN set -eux; \
    cd "$GHOST_INSTALL"; \
	su-exec node ghost config --ip 0.0.0.0 --port $PORT --no-prompt --db sqlite3 --url $DOMAIN_SERVER --dbpath "$GHOST_CONTENT/data/ghost.db";
  

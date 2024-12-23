FROM node:22-alpine
LABEL org.opencontainers.image.title="pino-pretty"
LABEL org.opencontainers.image.description="Basic PINO logs formatter"
LABEL org.opencontainers.image.authors="Gildas Cherruel <gildas.cherruel@genesys.com>"
LABEL org.opencontainers.image.version="0.0.2"
LABEL org.opencontainers.image.licenses="MIT"

RUN npm install -g pino-pretty \
    && npm cache clean --force

USER node

ENTRYPOINT [ "pino-pretty", "--colorize" ]
CMD [ "--colorize" ]

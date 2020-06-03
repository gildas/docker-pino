FROM node:9-alpine
LABEL maintainer="Gildas Cherruel <gildas@breizh.org>"
LABEL version="0.0.1"

RUN npm install -g pino-pretty \
    && npm cache clean --force

USER node

ENTRYPOINT [ "pino-pretty", "--colorize" ]
CMD [ "--colorize" ]

FROM node:alpine

MAINTAINER "Gustavo Esteban Borragán <gustavo.borragan@prefapp.es>"

LABEL docker_docsify_version_major="1" \
      docker_docsify_version_minor="0" \
      docker_docsify_version_patch="0" \
      docker_docsify_version_revision="1" \
      docker_docsify_version="1.0.0.1"

RUN npm install -g docsify-cli@latest && \
    mkdir -p /usr/local/docsify

ENV DEBUG 0 \
    PORT 3000 \
    DOCSIFY_VERSION latest \
    NODE_VERSION alpine

EXPOSE 3000

WORKDIR /usr/local/docsify

ENTRYPOINT [ "docsify", "serve", "--port", "3000" ]

CMD [ "." ]


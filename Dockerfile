FROM node:9.11.1-slim

RUN npm install -g bower && \
    echo '{ "allow_root": true }' > /root/.bowerrc

RUN mkdir -p /usr/src/j2m

WORKDIR /usr/src/j2m

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [/bin/bash]
FROM node20:alpine3.20

WORKDIR /tmp

COPY . .

EXPOSE 7860

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl gcompat iproute2 coreutils &&\
    apk add --no-cache bash &&\
    chmod +x app.js &&\
    npm install

ENV NAME=Huggingface

CMD ["npm", "start"]

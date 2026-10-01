FROM node:20-alpine AS builder

RUN npm install --global npm@11.20.0

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

FROM node:20-alpine

RUN rm -rf /usr/local/lib/node_modules/npm \
    /usr/local/bin/npm \
    /usr/local/bin/npx

WORKDIR /app

COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/server.js ./server.js

EXPOSE 3000

CMD ["node", "server.js"]

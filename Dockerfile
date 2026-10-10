FROM node:18-alpine

WORKDIR /app

COPY src/package.json ./
RUN npm install --omit=dev

COPY src/ ./

CMD ["node", "index.js"]

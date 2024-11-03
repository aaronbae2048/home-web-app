FROM node:21-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

RUN npm run build

ENV NODE_ENV=production

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
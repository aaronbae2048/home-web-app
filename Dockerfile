FROM node:21-alpine

WORKDIR /app

COPY app ./app

COPY public ./public

COPY .eslintrc.json next.config.mjs package.json postcss.config.js tailwind.config.ts tsconfig.json ./

RUN npm install

RUN npm run build

ENV NODE_ENV=production

EXPOSE 3000

CMD ["npm", "run", "start"]
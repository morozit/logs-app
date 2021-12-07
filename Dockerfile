FROM node

WORKDIR /app

COPY package.json /app

COPY . .

RUN npm install

ENV PORT 4444

EXPOSE $PORT

VOLUME [ "app/data" ]

CMD ["node", "app.js"]
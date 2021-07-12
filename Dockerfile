FROM node:14.16.1

EXPOSE 3000
WORKDIR /app

ADD src/app.js /app/src/app.js
ADD package.json /app/package.json

RUN npm install

ENTRYPOINT ["node"]
CMD ["src/app.js"]
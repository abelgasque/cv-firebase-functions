FROM node:23

WORKDIR /app

COPY package*.json ./

RUN npm install

ENV NODE_ENV="development"
ENV NODE_PORT="80"
ENV JWT_SECRET="3a1f8e4a6b9c2d5f8e1a7b4c9d2e5f8a"
ENV JWT_EXPIRE="10800"
ENV JWT_REFRESH_SECRET="81e7ca90-5f8d-42fc-98b5-0ce062dde2ad"
ENV JWT_REFRESH_EXPIRE_DAY="1"
ENV DB_SERVER="localhost"
ENV DB_PORT="3306"
ENV DB_DATABASE="security_db"
ENV DB_USERNAME="root"
ENV DB_PASSWORD="root"

COPY . .

EXPOSE 80

CMD ["node", "src/index.js"]
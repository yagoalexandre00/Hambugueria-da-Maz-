FROM node:20-alpine3.20
WORKDIR /app
COPY package* .
RUN npm install
COPY . .
RUN chown -R node:node /app
USER node
EXPOSE 3000
CMD ["npm", "start"]

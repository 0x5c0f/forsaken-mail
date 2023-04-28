FROM node:lts-alpine

WORKDIR /forsaken-mail

COPY . .
RUN npm install --production && npm cache clean --force

EXPOSE 25
EXPOSE 3000
CMD ["npm", "start"]

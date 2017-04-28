FROM node:6.10.2
RUN mkdir -p /usr/src/sportsstore4
COPY dist /usr/src/sportsstore4/app
COPY authMiddleware.js /usr/src/sportsstore4/
COPY data.js /usr/src/sportsstore4/
COPY deploy-server.js /usr/src/sportsstore4/server.js
COPY deploy-package.json /usr/src/sportsstore4/package.json
WORKDIR /usr/src/sportsstore4
RUN npm install
EXPOSE 3000
EXPOSE 3500
CMD ["npm", "start"]

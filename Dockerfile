FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm run test
RUN pip3 install --upgrade docker
EXPOSE 8000
CMD ["node","app.js"]

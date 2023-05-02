
  FROM node:14.16.0

  RUN mkdir -p /workspace
  
  WORKDIR /workspace

  ADD . /workspace/

  RUN npm install

  ENV port=8080

  EXPOSE 8080

  CMD [ "npm", "run", "start" ]
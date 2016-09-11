FROM mhart/alpine-node
ADD ./ /app/user
WORKDIR /app/user
RUN npm install
CMD [ "npm", "start" ]

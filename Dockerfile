FROM node:18

WORKDIR /usr/app

COPY ./dist /usr/app

EXPOSE 3000

CMD ["./setup.sh"]

FROM node:18

COPY ./dist .

EXPOSE 3000

CMD ["./setup.sh"]

FROM node:<node_version>

COPY . .

./build.sh

EXPOSE 3000

CMD ["./setup.sh"]

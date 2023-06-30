FROM node:<node_version>

COPY . .

EXPOSE 3000

CMD ["./setup.sh"]

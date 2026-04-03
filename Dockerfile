FROM node:18-alpine

WORKDIR /app

# Install Drop server from NPM (public)
RUN npm install -g @dropapp/server

# Create data directory
RUN mkdir -p /app/data

EXPOSE 3000

CMD ["drop-server", "--data", "/app/data", "--port", "3000"]
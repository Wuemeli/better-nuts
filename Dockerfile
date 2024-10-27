FROM oven/bun:1 AS base

WORKDIR /app
COPY package.json ./
RUN npm install --production
COPY . ./

# Ports
ENV PORT 80
EXPOSE 80

ENTRYPOINT ["npm", "start"]

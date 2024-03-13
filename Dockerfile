FROM node:20-alpine
COPY .releaserc.yaml .
COPY package*.json .
RUN npm ci
CMD ["npx", "semantic-release"]

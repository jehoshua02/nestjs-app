FROM node:20-alpine as development
WORKDIR /app
COPY --chown=node:node package*.json ./
RUN npm ci --include=dev
COPY --chown=node:node . .
CMD [ "npm", "run", "start:dev", "--", "-b", "swc" ]
EXPOSE 3000


FROM development as build
WORKDIR /app
RUN npm run build


FROM node:20-alpine as production
WORKDIR /app
ENV NODE_ENV production
COPY --chown=node:node package*.json ./
RUN npm ci --only=production
COPY --chown=node:node --from=build /app/dist ./dist
CMD [ "node", "dist/main.js" ]
EXPOSE 3000
USER node

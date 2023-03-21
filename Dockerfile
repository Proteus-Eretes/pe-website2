FROM node:lts-alpine as frontend-build

WORKDIR /src

COPY components ./components
COPY composables ./composables
COPY pages ./pages
COPY public ./public
COPY server ./server
COPY nuxt.config.ts .
COPY tsconfig.json .
COPY tailwind.config.ts .
COPY package.json .

RUN yarn install
RUN yarn build --standalone

FROM node:lts-alpine

COPY --from=frontend-build /src/.output /src/.output

EXPOSE 3000

ENTRYPOINT ["node","/src/.output/server/index.mjs"]

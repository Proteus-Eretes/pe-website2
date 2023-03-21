FROM node:lts-alpine as build

WORKDIR /src

COPY pages ./pages
COPY public ./public
COPY nuxt.config.ts .
COPY tsconfig.json .
COPY tailwind.config.ts .
COPY package.json .

RUN yarn install
RUN yarn build --standalone

FROM node:lts-alpine

COPY --from=build /src/.output /src/.output

EXPOSE 3000

ENTRYPOINT ["node","/src/.output/server/index.mjs"]

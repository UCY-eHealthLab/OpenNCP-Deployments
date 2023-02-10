FROM node:16.13.1-buster as builder
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build 

FROM nginx:stable-alpine as production-stage
COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
FROM node:20-slim as builder
WORKDIR /app
COPY . .
RUN npm install -g pnpm && pnpm install && npx nx build frontend

FROM nginx:stable-alpine
COPY --from=builder /app/dist/apps/frontend /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

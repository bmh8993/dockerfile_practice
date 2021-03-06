FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./* ./
HEALTHCHECK --interval=2s --timeout=5s --retries=5 CMD curl -f http://127.0.0.1/ || exit 1
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

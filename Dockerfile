FROM alpine:latest as builder
RUN echo "Hello Guys!! This is Multistage Build Example" > index.html

FROM httpd:2.4.48-alpine
RUN rm -rf /usr/local/apache2/htdocs/index.html
COPY --from=builder /index.html /usr/local/apache2/htdocs

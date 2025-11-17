#image ringan nginx
FROM nginx:alpine

#salin file ke web root nginx
COPY kopika.html /usr/share/nginx/html/kopika.html

#expose port 80/http
EXPOSE 80

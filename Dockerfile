FROM rockylinux:8

RUN dnf -y update && \
    dnf -y install nginx && \
    dnf clean all

# ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


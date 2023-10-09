# Sử dụng một hình ảnh cơ sở CentOS
FROM centos:latest

RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx

# Chạy Nginx trong chế độ foreground khi hình ảnh được khởi động
CMD ["nginx", "-g", "daemon off;"]

# Mở cổng 80 để cho phép truy cập vào Nginx
EXPOSE 80

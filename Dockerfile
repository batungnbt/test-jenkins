# Sử dụng một hình ảnh cơ sở CentOS
FROM centos:latest

# Cài đặt Nginx và các gói phụ thuộc
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install nginx && \
    yum clean all

# Chạy Nginx trong chế độ foreground khi hình ảnh được khởi động
CMD ["nginx", "-g", "daemon off;"]

# Mở cổng 80 để cho phép truy cập vào Nginx
EXPOSE 80

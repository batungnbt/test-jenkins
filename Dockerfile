# Sử dụng một hình ảnh cơ sở CentOS
FROM centos

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install nginx

# Chạy Nginx trong chế độ foreground khi hình ảnh được khởi động
CMD ["nginx", "-g", "daemon off;"]

# Mở cổng 80 để cho phép truy cập vào Nginx
EXPOSE 80

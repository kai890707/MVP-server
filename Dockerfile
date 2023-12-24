# 使用 webdevops/php:8.2-alpine 作为基础镜像
FROM webdevops/php:8.2-alpine

# 安装 Nginx
RUN apk --no-cache add nginx

# 设置 Nginx 配置文件
COPY nginx.conf /etc/nginx/nginx.conf

# 创建一个目录来挂载用户的 PHP 应用程序
WORKDIR /app

# 启动 Nginx 和 PHP-FPM
CMD ["supervisord", "--nodaemon"]

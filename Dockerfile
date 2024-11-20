FROM php:8.2-cli

# ติดตั้ง PHP extensions ที่จำเป็น
RUN docker-php-ext-install pdo pdo_mysql

# สร้างโฟลเดอร์สำหรับแอพ
WORKDIR /var/www/html

# เปิดพอร์ต 8080
EXPOSE 8080

# รัน PHP Built-in Server
CMD ["php", "-S", "0.0.0.0:8080"]
create user `portfolio`@`localhost` identified by '1234';
create user `portfolio`@`%` identified by '1234';
create user `root`@`%` identified by '1234';

create database portfolio character set =utf8mb4 collate=utf8mb4_unicode_ci;
grant all privileges on portfolio.* to `root`@`localhost`;
grant all privileges on portfolio.* to `root`@`%`;





UPDATE mysql.user SET authentication_string=password('1234') WHERE user='root'; 
FLUSH PRIVILEGES;

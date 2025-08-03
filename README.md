# Nginx + PHP-FPM Docker Solution

[![Docker](https://img.shields.io/badge/Docker-✓-blue?logo=docker)](https://www.docker.com/)
[![PHP](https://img.shields.io/badge/PHP-✓-777bb4?logo=php)](https://www.php.net/)
[![Nginx](https://img.shields.io/badge/Nginx-✓-009639?logo=nginx)](https://nginx.org/)

Готовое решение для запуска PHP-приложений в Docker с Nginx и PHP-FPM. Автоматически определяет версию PHP, корректно обрабатывает маршрутизацию и готова к деплою в Kubernetes.

## 🔥 Особенности

- 🐳 Единый Docker-образ с Nginx и PHP-FPM
- 🔄 Автоматическое определение версии PHP
- 🛠️ Готовая конфигурация для:
  - Обработки PHP-файлов
  - Оптимальных параметров PHP-FPM
- ☸️ Поддержка Helm для деплоя в Kubernetes

## 🚀 Быстрый старт

1. Соберите образ:
```bash
docker build -t nginx-php-app .
```

2. Запустите контейнер:
```bash
docker run -p 8080:80 nginx-php-app
```

3. Откройте в браузере:
```
http://localhost:8080/
```

## 🧩 Структура проекта

```
├── Dockerfile           - Основной Docker-образ
├── nginx.conf           - Оптимизированная конфигурация Nginx
├── index.php            - файл с шаблоном сайта
├── welcome.php          - Пример PHP-приложения
├── entrypoint.sh        - Скрипт инициализации
└── helm/                - Helm-чарт для Kubernetes (опционально)
```

## ⚙️ Настройка

### Пользовательская конфигурация Nginx
Отредактируйте `nginx.conf` для:
- Добавления новых location-блоков
- Настройки SSL
- Изменения корневой директории

## 🌐 Доступные URL

- `http://ваш-адрес/` - автоматически открывает index.php

## 🤝 Как можно помочь
- Хотите улучшить? Форкните и присылайте PR!


📌 **Протестировано на**: Docker 20+, Nginx 1.29, PHP 7.4/8.0/8.2

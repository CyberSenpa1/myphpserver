<?php
// Файл: welcome.php

// Приветственное сообщение
$welcomeMessage = "Добро пожаловать на наш сервер!";

// Получение IP-адреса сервера
$serverIP = $_SERVER['SERVER_ADDR'];

// Вывод информации
echo "<!DOCTYPE html>
<html>
<head>
    <title>Привет из k8s!</title>
    <meta charset='utf-8'>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
        .info {
            margin-top: 20px;
            padding: 10px;
            background: #f9f9f9;
            border-left: 4px solid #4CAF50;
        }
    </style>
</head>
<body>
    <div class='container'>
        <h1>$welcomeMessage</h1>
        <div class='info'>
            <strong>IP-адрес сервера:</strong> $serverIP
        </div>
    </div>
</body>
</html>";
?>
# ALSECO test-app backend

Чтобы подготовить сервер нужно:
1) Перейти в главную папку проекта и выполнить команду `npm i`
2) Выполнить DLL- и DML-скрипты:
    1. `mysql -u <логин> -p < dll.sql` и ввести пароль
    2. `mysql -u <логин> -p < dml.sql` и ввести пароль

Запуск сервера производится командой `npm run start`, сервер работает по адресу http://localhost:3000

**Версии продуктов**  
- MySQL 8.0.18  
- NodeJS v10.16.3
- npm 6.9.0

**Важно**  
Если ваши логин/пароль отличны от root/root, то необходимо заменить их в файле `/src/db.js`  
`...new Sequelize('alseco', <ваш логин>', '<ваш пароль>', {...`

﻿USE ALSECO;
SET CHARACTER SET utf8;
INSERT INTO employees(id,secondName,firstName,patronymic)
VALUES
(DEFAULT, 'Петухов', 'Елисей', 'Арсеньевич'),
(DEFAULT, 'Попов', 'Гурий', 'Еремеевич'),
(DEFAULT, 'Евдокимов', 'Альфред', 'Пантелеймонович'),
(DEFAULT, 'Некрасов', 'Аполлон', 'Яковович'),
(DEFAULT, 'Авдеев', 'Аверкий', 'Авдеевич'),
(DEFAULT, 'Васильев', 'Всеволод', 'Мартынович'),
(DEFAULT, 'Наумов', 'Лука', 'Иванович'),
(DEFAULT, 'Симонов', 'Велорий', 'Авксентьевич'),
(DEFAULT, 'Дьячков', 'Казимир', 'Платонович'),
(DEFAULT, 'Сергеев', 'Ибрагил', 'Юрьевич'),
(DEFAULT, 'Пахомов', 'Исаак', 'Андреевич'),
(DEFAULT, 'Морозов', 'Виссарион', 'Протасьевич'),
(DEFAULT, 'Калашников', 'Велорий', 'Евгеньевич'),
(DEFAULT, 'Фомин', 'Герман', 'Юлианович'),
(DEFAULT, 'Петухов', 'Ярослав', 'Николаевич'),
(DEFAULT, 'Шубин', 'Иосиф', 'Митрофанович'),
(DEFAULT, 'Лыткин', 'Велорий', 'Владимирович'),
(DEFAULT, 'Колесников', 'Мечеслав', 'Евсеевич'),
(DEFAULT, 'Егоров', 'Максимилиан', 'Александрович'),
(DEFAULT, 'Воробьёв', 'Леонид', 'Владленович'),
(DEFAULT, 'Артемьев', 'Назарий', 'Артемович'),
(DEFAULT, 'Афанасьев', 'Аверьян', 'Станиславович'),
(DEFAULT, 'Рожков', 'Августин', 'Викторович'),
(DEFAULT, 'Меркушев', 'Рубен', 'Андреевич'),
(DEFAULT, 'Давыдов', 'Демьян', 'Филиппович'),
(DEFAULT, 'Сафонов', 'Наум', 'Тихонович'),
(DEFAULT, 'Ковалёв', 'Эрнест', 'Максович'),
(DEFAULT, 'Иванков', 'Осип', 'Геннадьевич'),
(DEFAULT, 'Киселёв', 'Юлий', 'Семёнович'),
(DEFAULT, 'Ефремов', 'Тимофей', 'Феликсович'),
(DEFAULT, 'Александров', 'Сергей', 'Петрович'),
(DEFAULT, 'Зиновьев', 'Рубен', 'Игнатьевич'),
(DEFAULT, 'Самсонов', 'Ян', 'Дамирович'),
(DEFAULT, 'Дьячков', 'Алан', 'Мэлорович'),
(DEFAULT, 'Герасимов', 'Абрам', 'Денисович'),
(DEFAULT, 'Вишняков', 'Афанасий', 'Геннадьевич'),
(DEFAULT, 'Сысоев', 'Прохор', 'Тарасович'),
(DEFAULT, 'Князев', 'Ян', 'Денисович'),
(DEFAULT, 'Кудрявцев', 'Олег', 'Германнович'),
(DEFAULT, 'Зайцев', 'Устин', 'Яковович');

INSERT INTO material_values(`id`,`name`,`price`,`employeeId`)
VALUES
(DEFAULT, 'Беспроводная мышь', '27303', '1'),
(DEFAULT, 'Книга Чистый Код', '90217', '1'),
(DEFAULT, 'Проводная мышь', '40798', '1'),
(DEFAULT, 'Повербанк Xiaomi', '46558', '2'),
(DEFAULT, 'Фотоаппарат Nikon', '17314', '2'),
(DEFAULT, 'Монитор 16:9', '20636', '3'),
(DEFAULT, 'Книга Чистый Код', '38905', '3'),
(DEFAULT, 'Монитор 16:9', '99874', '3'),
(DEFAULT, 'Фотоаппарат Nikon', '14783', '4'),
(DEFAULT, 'Смартфон Xiaomi', '68387', '4'),
(DEFAULT, 'Колонка Яндекс.мини', '76120', '5'),
(DEFAULT, 'Проводная мышь', '43919', '5'),
(DEFAULT, 'Наушники Airdots3', '49781', '5'),
(DEFAULT, 'Повербанк Xiaomi', '18289', '6'),
(DEFAULT, 'Фотоаппарат Nikon', '27598', '6'),
(DEFAULT, 'Беспроводная мышь', '66610', '6'),
(DEFAULT, 'Ноутбук ASUS', '29082', '7'),
(DEFAULT, 'Смартфон Xiaomi', '79687', '7'),
(DEFAULT, 'Клавиатура Apple', '35767', '7'),
(DEFAULT, 'Ноутбук ASUS', '51050', '8'),
(DEFAULT, 'Ноутбук ASUS', '35011', '8'),
(DEFAULT, 'Моноблок Apple', '17242', '8'),
(DEFAULT, 'Наушники Airdots3', '22995', '9'),
(DEFAULT, 'Повербанк Xiaomi', '21093', '9'),
(DEFAULT, 'Проводная мышь', '58817', '10'),
(DEFAULT, 'Моноблок Apple', '102430', '10'),
(DEFAULT, 'Колонка Яндекс.мини', '24394', '10'),
(DEFAULT, 'Кресло офисное', '57320', '11'),
(DEFAULT, 'Клавиатура Apple', '85334', '11'),
(DEFAULT, 'Колонка Яндекс.мини', '83476', '12'),
(DEFAULT, 'Моноблок Apple', '8646', '12'),
(DEFAULT, 'Клавиатура Apple', '12387', '13'),
(DEFAULT, 'Книга Чистый Код', '90903', '13'),
(DEFAULT, 'Клавиатура Apple', '52353', '13'),
(DEFAULT, 'Моноблок Apple', '16145', '13'),
(DEFAULT, 'Клавиатура Apple', '30380', '14'),
(DEFAULT, 'Монитор 16:9', '59448', '14'),
(DEFAULT, 'Ноутбук Lenovo', '43431', '15'),
(DEFAULT, 'Монитор 16:9', '26360', '16'),
(DEFAULT, 'Ноутбук ASUS', '84722', '17'),
(DEFAULT, 'Ноутбук ASUS', '84722', '17'),
(DEFAULT, 'Клавиатура Apple', '41511', '17'),
(DEFAULT, 'Клавиатура Apple', '94317', '17'),
(DEFAULT, 'Проводная мышь', '81758', '18'),
(DEFAULT, 'Книга Чистый Код', '32330', '18'),
(DEFAULT, 'Ноутбук ASUS', '17512', '19'),
(DEFAULT, 'Кресло офисное', '22630', '19'),
(DEFAULT, 'Колонка Яндекс.мини', '39187', '19'),
(DEFAULT, 'Монитор 16:9', '6003', '19'),
(DEFAULT, 'Беспроводная мышь', '80866', '20'),
(DEFAULT, 'Наушники Airdots3', '57816', '20'),
(DEFAULT, 'Наушники Airdots3', '59068', '20'),
(DEFAULT, 'Смартфон Xiaomi', '86966', '21'),
(DEFAULT, 'Наушники Airdots3', '6105', '22'),
(DEFAULT, 'Механическая клавиатура', '30478', '22'),
(DEFAULT, 'Монитор 16:9', '41648', '23'),
(DEFAULT, 'Наушники Airdots3', '36767', '23'),
(DEFAULT, 'Ноутбук Lenovo', '98573', '23'),
(DEFAULT, 'Наушники Airdots3', '59058', '23'),
(DEFAULT, 'Повербанк Xiaomi', '17392', '23'),
(DEFAULT, 'Наушники Airdots3', '72518', '24'),
(DEFAULT, 'Ноутбук Lenovo', '54294', '24'),
(DEFAULT, 'Наушники Airdots3', '4693', '25'),
(DEFAULT, 'Ноутбук Lenovo', '35707', '25'),
(DEFAULT, 'Моноблок Apple', '96358', '26'),
(DEFAULT, 'Механическая клавиатура', '16786', '27'),
(DEFAULT, 'Клавиатура Apple', '34604', '28'),
(DEFAULT, 'Беспроводная мышь', '45520', '29'),
(DEFAULT, 'Фотоаппарат Nikon', '85204', '29'),
(DEFAULT, 'Механическая клавиатура', '78412', '30'),
(DEFAULT, 'Книга Чистый Код', '46317', '30'),
(DEFAULT, 'Клавиатура Apple', '31248', '30'),
(DEFAULT, 'Беспроводная мышь', '66119', '30'),
(DEFAULT, 'Смартфон Xiaomi', '1401', '30'),
(DEFAULT, 'Колонка Яндекс.мини', '15562', '31'),
(DEFAULT, 'Беспроводная мышь', '17033', '32'),
(DEFAULT, 'Фотоаппарат Nikon', '13736', '32'),
(DEFAULT, 'Беспроводная мышь', '56228', '32'),
(DEFAULT, 'Клавиатура Apple', '68465', '32'),
(DEFAULT, 'Монитор 16:9', '84303', '33'),
(DEFAULT, 'Беспроводная мышь', '52310', '34'),
(DEFAULT, 'Кресло офисное', '59652', '34'),
(DEFAULT, 'Ноутбук ASUS', '42384', '34'),
(DEFAULT, 'Повербанк Xiaomi', '92522', '34'),
(DEFAULT, 'Наушники Airdots3', '41124', '34'),
(DEFAULT, 'Книга Чистый Код', '90161', '35'),
(DEFAULT, 'Ноутбук Lenovo', '28232', '35'),
(DEFAULT, 'Проводная мышь', '33628', '35'),
(DEFAULT, 'Книга Чистый Код', '5336', '36'),
(DEFAULT, 'Колонка Яндекс.мини', '38433', '36'),
(DEFAULT, 'Смартфон Xiaomi', '87776', '37'),
(DEFAULT, 'Книга Чистый Код', '71046', '37'),
(DEFAULT, 'Ноутбук ASUS', '69093', '38'),
(DEFAULT, 'Книга Чистый Код', '36884', '38'),
(DEFAULT, 'Повербанк Xiaomi', '95905', '38'),
(DEFAULT, 'Колонка Яндекс.мини', '9736', '39'),
(DEFAULT, 'Ноутбук Lenovo', '28584', '39'),
(DEFAULT, 'Ноутбук ASUS', '32136', '39'),
(DEFAULT, 'Ноутбук ASUS', '34227', '40'),
(DEFAULT, 'Смартфон Xiaomi', '30814', '40'),
(DEFAULT, 'Колонка Яндекс.мини', '11080', '40');
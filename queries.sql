USE yeticave;


INSERT INTO categories (name) VALUES
('Доски и лыжи'),
('Крепления'),
('Ботинки'),
('Одежда'),
('Инструменты'),
('Разное');


INSERT INTO users (email, name, avatar, password) VALUES
('ignat.v@gmail.com', 'Игнат', 'img/user.jpg' ,'$2y$10$OqvsKHQwr0Wk6FMZDoHo1uHoXd4UdxJG/5UDtUiie00XaxMHrW8ka'),
('kitty_93@li.ru', 'Леночка', 'img/user.jpg', '$2y$10$bWtSjUhwgggtxrnJ7rxmIe63ABubHQs0AS0hgnOo41IEdMHkYoSVa'),
('warrior07@mail.ru', 'Руслан', 'img/user.jpg', '$2y$10$2OxpEH7narYpkOT1H5cApezuzh10tZEEQ2axgFOaKW.55LxIJBgWW');


INSERT INTO lots (end_date, name, image, description, start_price, author_id, category_id) VALUES
(
  NOW() + INTERVAL 1 MONTH,
  '2014 Rossignol District Snowboard',
  'img/lot-1.jpg',
  'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчкоми четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.',
  10999,
  1,
  1
),(
  NOW() + INTERVAL 1 MONTH, 
  'DC Ply Mens 2016/2017 Snowboard',
  'img/lot-2.jpg',
  'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчкоми четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.',
  15999,
  2,
  1
),(
  NOW() + INTERVAL 1 MONTH,
  'Крепления Union Contact Pro 2015 года размер L/XL',
  'img/lot-3.jpg',
  'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчкоми четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.',
  8000,
  3,
  2
),(
  NOW() + INTERVAL 1 MONTH,
  'Ботинки для сноуборда DC Mutiny Charocal',
  'img/lot-4.jpg',
  'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчкоми четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.',
  10999,
  1,
  3
),(
  NOW() + INTERVAL 1 MONTH,
  'Куртка для сноуборда DC Mutiny Charocal',
  'img/lot-5.jpg',
  'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчкоми четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.',
  7500,
  2,
  4
),(
  NOW() + INTERVAL 1 MONTH,
  'Маска Oakley Canopy',
  'img/lot-6.jpg',
  'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчкоми четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.',
  5400,
  3,
  6
);


INSERT INTO bids (price, user_id, lot_id) VALUES
(17000, 1, 2),
(9000, 2, 3),
(11000, 2, 4);


-- получить все категории
SELECT name FROM categories;


-- получить самые новые, открытые лоты.
-- Каждый лот должен включать название, стартовую цену, ссылку на изображение,
-- цену, колличество ставок, название категории.
SELECT l.name, start_price, image, MAX(b.price) AS price, COUNT(b.id) AS number_bids, c.name AS category FROM lots l
JOIN categories c ON c.id = l.category_id
LEFT JOIN bids b ON b.lot_id = l.id
WHERE l.end_date >= CURDATE()
AND winner_id IS NULL
GROUP BY l.id
ORDER BY l.creation_date DESC LIMIT 3;


-- Получить лот по его id.
-- Показать также название категории, к которой принадлежит лот.
-- SELECT l.name, c.name FROM lots l
-- JOIN categories c ON c.id = l.category_id
-- WHERE l.id = 2


-- Обновить название лота по его id.
-- UPDATE lots
-- SET name = 'update name'
-- WHERE id = 2


-- Получить список самых свежих ставок для лота по его id.
-- SELECT * FROM bids 
-- WHERE lot_id = 2
-- ORDER BY creation_date DESC
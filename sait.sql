---------------------------------------------------------------
-- Сайт https://oracleplsql.ru/
--SQL оператор CREATE TABLE



CREATE TABLE suppliers
( supplier_id int NOT NULL,
  supplier_name char(50) NOT NULL,
  contact_name char(50),
  CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
);

---------------------------------------------------------------
-- Сайт https://oracleplsql.ru/
--SQL оператор ALTER TABLE

--Добавить столбец в таблицу "suppliers"

alter table suppliers
add test_name char(50);

-- Добавить несколько столбцов в таблицу "suppliers"

alter table suppliers
add ( city_name char(50),
      vk_name char(45));

--Изменить столбец и столбцы (так же через запитую в скобках) в таблице

ALTER TABLE suppliers
  MODIFY test_name char(100) NOT NULL;

--Удалить столбец в таблиц

--Переименовать столбец в таблице

--Переименовать таблицу
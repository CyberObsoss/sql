--Название и продолжительность самого длительного трека.

select name_, duration from tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

-- Название треков, продолжительность которых не менее 3,5 минут.

select name_ from tracks
where duration > '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select name_ from collections c 
where release_year > 2017 and release_year < 2021;

-- Исполнители, чьё имя состоит из одного слова.

select name_ from artists
WHERE (LENGTH(name_) - LENGTH(replace(name_, ' ', ''))) = 0;

-- Название треков, которые содержат слово «мой» или «my».

select name_ from tracks t 
where name_ like '%мой%' and '%my%';
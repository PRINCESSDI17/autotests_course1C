﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Заполнение шапки заказа

Как Менеджер по продажам я хочу
Заполняю шапку документа Заказ 
чтобы для тестирования действий с документом Заказ   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки Заказ
* Заполнение шапки
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'Тестовая организация с ВУ'
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Тестовый контрагент оптовых цен"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "EUR"

// Диалог Выбора Файла-источника


&НаКлиенте
Процедура ПутьКФайлуНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	
	
	Режим = РежимДиалогаВыбораФайла.Открытие;
	
	ДиалогОткрытияФайла = Новый ДиалогВыбораФайла(Режим);
	
	ДиалогОткрытияФайла.ПолноеИмяФайла = " ";	
	
	// Отбор по типу  Файла
	Фильтр = "Comma separated file (*.csv)|*.csv";	
	ДиалогОткрытияФайла.Фильтр = Фильтр;
	
	ДиалогОткрытияФайла.МножественныйВыбор = Ложь;
	ДиалогОткрытияФайла.Заголовок = "Выберите файл";
	
	Если ДиалогОткрытияФайла.Выбрать() Тогда 
		
		ПутьКФайлуЗагрузки = ДиалогОткрытияФайла.ПолноеИмяФайла;
		
	КонецЕсли;
	
КонецПроцедуры

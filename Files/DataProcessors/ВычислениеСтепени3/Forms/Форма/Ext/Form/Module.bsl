﻿&НаКлиенте
Процедура ПриОткрытии(Отказ)

	НашеЧисло = 1;
	Степень   = 1;

КонецПроцедуры  

&НаКлиенте
Процедура ВозвестиЧислоВСтепень(Команда)
	
	Результат = ВычислитьСтепеньЧисла(НашеЧисло,Степень);
	СообщитьРезультат(НашеЧисло,Степень, Результат);
	ПроверитьРезультат(НашеЧисло,Степень, Результат);
	
КонецПроцедуры

&НаКлиенте
Функция ВычислитьСтепеньЧисла(Параметр1,Параметр2)
	
	Результат = 1;
	Для Индекс = 1 По Параметр2 Цикл
		Результат = Результат * Параметр1;	
	КонецЦикла;
	Возврат Результат;
	
КонецФункции 

&НаКлиенте
Процедура СообщитьРезультат(НашеЧисло,Степень, Результат)
	
	Сообщить("Число " + НашеЧисло + " в степени " + Степень +" равно " + Результат + ".");
	
КонецПроцедуры

&НаКлиенте
Процедура ПроверитьРезультат(НашеЧисло,Степень, Результат)
	
	Если Результат = Pow(НашеЧисло,Степень) Тогда
		Сообщить("Проверка прошла успешно.");
	Иначе 
		Сообщить("Результат не прошел проверку!");
	КонецЕсли;
	
КонецПроцедуры




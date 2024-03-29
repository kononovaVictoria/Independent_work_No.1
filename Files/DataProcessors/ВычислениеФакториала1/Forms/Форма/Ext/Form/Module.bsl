﻿&НаКлиенте
Процедура ВычислитьФакториал(Команда)             
	
	     НатурЧисло = НатуральноеЧисло; 
		 
		 Если НатурЧисло < 1 Тогда 
			 Сообщить("Факториал расчитывается только для целых чисел, которые больше 0.");
		 ИначеЕсли НатурЧисло = 1 Тогда
			 Сообщить("Факториал числа 1 равен 1.");
		 Иначе	
 			 ДелатьВычисления(НатурЧисло);
		 КонецЕсли;

КонецПроцедуры
	 
&НаКлиенте
Процедура ДелатьВычисления(НатурЧисло)
	
	ИскомыйФакториал1  = Факториал(НатурЧисло);
	ИскомыйФакториал2  = ФакториалЦикл(НатурЧисло); 
	
	Если ИскомыйФакториал1 = ИскомыйФакториал2 Тогда
    	ВыводОтвета(НатурЧисло, ИскомыйФакториал1); 
	Иначе
		ВыводОшибки(НатурЧисло, ИскомыйФакториал1, ИскомыйФакториал2);
	КонецЕсли;
	 	
КонецПроцедуры
	 
&НаКлиенте
Функция ФакториалЦикл(Значение)
	
	Результат = 1;
	
	Для Индекс = 1 По Значение  Цикл
		Результат = Результат * Индекс;	
	КонецЦикла;
	
	Возврат Результат;
		
КонецФункции

&НаКлиенте
Функция Факториал(Значение)
	
	Если Значение = 1 Тогда
		Возврат 1;
	Иначе
		Возврат Значение * Факториал(Значение - 1)
	КонецЕсли;
	
КонецФункции

&НаКлиенте
Процедура ВыводОтвета(Число,Факториал)
    
	Сообщить("Факториал числа " + Число + " равен " + Факториал + ".");
	
КонецПроцедуры

&НаКлиенте
Процедура ВыводОшибки(Число,Факториал,ФакториалЦикл)
    
	Сообщить("Ошибка в вычислениях. Факториал числа " + Число + ", вычисленный рекурсивно, равен " + Факториал + ". А факториал, вычисленный в цикле равен " + ФакториалЦикл + " .");
	
КонецПроцедуры



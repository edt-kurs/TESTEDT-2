﻿
#Область ОбработчикиСобытийФормы

&НаКлиенте
Процедура ЗапускАвтоматическогоПереносаДатыОтгрузкиЗаказов(Команда)
	
	// ЗапускАвтоматическогоПереносаДатыОтгрузкиЗаказовНаСервере();
	 
КонецПроцедуры

&НаСервере
Процедура ЗапускАвтоматическогоПереносаДатыОтгрузкиЗаказовНаСервере()
	
	ОбъектФормы = РеквизитФормыВЗначение("Объект");
	ОбъектФормы.АвтоматическийПереносДатыОтгрузкиПоЗаказам();
	
КонецПроцедуры

&НаСервере
Процедура ПодобратьЗаказыДляПереносаДатыОтгрузкиНаСервере()

	ОбъектФормы = РеквизитФормыВЗначение("Объект");
	СписокНеВзаимосвязанныхЗаказов = ОбъектФормы.СписокНеВзаимосвязанныхЗаказовЗаказовКлиентаДляПереносаДатыОтгрузки();
	Объект.Заказы.Очистить();
	Объект.Заказы.Загрузить(СписокНеВзаимосвязанныхЗаказов);
	
	СписокВзаимосвязанныхЗаказов = ОбъектФормы.СписокВзаимосвязанныхЗаказовЗаказовКлиентаДляПереносаДатыОтгрузки();
	Объект.СвязанныеЗаказы.Очистить();
	Объект.СвязанныеЗаказы.Загрузить(СписокВзаимосвязанныхЗаказов);
	
	Элементы.ЗаказыПеренестиДатуОтгрузкиНаДень.Видимость = Истина;
	Элементы.СвязанныеЗаказыПеренестиДатуОтгрузкиНаДеньВСвязанныхЗаказах.Видимость = Истина;
	
	
КонецПроцедуры

&НаКлиенте
Процедура ПодобратьЗаказыДляПереносаДатыОтгрузки(Команда)
	ПодобратьЗаказыДляПереносаДатыОтгрузкиНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПеренестиДатуОтгрузкиНаДеньНаСервере()

	ОбъектФормы = РеквизитФормыВЗначение("Объект");
	ОбъектФормы.ПеренестиДатуОтгрузкиЗаказов();
	Элементы.ЗаказыПеренестиДатуОтгрузкиНаДень.Видимость = Ложь;

КонецПроцедуры

&НаКлиенте
Процедура ПеренестиДатуОтгрузкиНаДень(Команда)
	ПеренестиДатуОтгрузкиНаДеньНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПеренестиДатуОтгрузкиНаДеньВСвязанныхЗаказахНаСервере()
	
	ОбъектФормы = РеквизитФормыВЗначение("Объект");
	ОбъектФормы.ПеренестиДатуОтгрузкиСвязанныхЗаказов();
	Элементы.СвязанныеЗаказыПеренестиДатуОтгрузкиНаДеньВСвязанныхЗаказах.Видимость = Ложь;
	
КонецПроцедуры

&НаКлиенте
Процедура ПеренестиДатуОтгрузкиНаДеньВСвязанныхЗаказах(Команда)
	ПеренестиДатуОтгрузкиНаДеньВСвязанныхЗаказахНаСервере();
КонецПроцедуры


#КонецОбласти 




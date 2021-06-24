
&НаКлиенте
Процедура ПереченьНоменклатурыКоличествоПриИзменении(Элемент)
	
	СтрокаТабличнойЧасти = Элементы.ПереченьНоменклатуры.ТекущиеДанные;
	РаботаСДокументами.РасчитатьСумму(СтрокаТабличнойЧасти);
	
КонецПроцедуры

&НаКлиенте
Процедура ПереченьНоменклатурыЦенаПриИзменении(Элемент)
	
	СтрокаТабличнойЧасти = Элементы.ПереченьНоменклатуры.ТекущиеДанные;
	РаботаСДокументами.РасчитатьСумму(СтрокаТабличнойЧасти);

КонецПроцедуры

&НаКлиенте
Процедура ПереченьНоменклатурыНоменклатураПриИзменении(Элемент)
	//получить текущую строку табличной части
	СтрокаТабличнойЧасти = Элементы.ПереченьНоменклатуры.ТекущиеДанные;
	                            
	//установить цену
	СтрокаТабличнойЧасти.Цена = РаботаСоСправочниками.РозничнаяЦена(Объект.Дата, СтрокаТабличнойЧасти.Номенклатура);
	
	//пересчитать сумму строки
	РаботаСДокументами.РасчитатьСумму(СтрокаТабличнойЧасти);
КонецПроцедуры

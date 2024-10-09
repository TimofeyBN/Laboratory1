begin
  var year := ReadInteger('Введите целый положительный номер года: ');
  Assert(year > 0);
  var rez: boolean;
  if year.Divs(4) and not year.Divs(100) then
    rez := True
  else if year.Divs(400) then
    rez := True
  else
    rez := False;
  Println($'Год високосный: {rez}');
  if rez then
    Println('В году 366 дней ')
  else
    Println('В году 365 дней');
  
  var (frstDay, frstMonth) := ReadInteger2('Введте день и месяц первой даты: ');
  var (scdDay, scdMonth) := ReadInteger2('Введте день и месяц второй даты: ');
  Assert((frstDay in 1..31) and (scdDay in 1..31) and (frstMonth in 1..12) and (scdMonth in 1..12));
  
  if (12 - frstMonth) < (12 - scdMonth) then
    Println($'1 дата ближе{newline}')
  else if (12 - frstMonth) > (12 - scdMonth) then
    Println($'2 дата ближе{newline}')
  else
  if (31 - frstDay) < (31 - scdDay) then
    PrintLn($'1 дата ближе{newline}')
  else if (31 - frstDay) > (31 - scdDay) then
    PrintLn($'2 дата ближе{newline}')
  else
    PrintLn($'0 -> даты одинаково близки{newline}');
  
  var (frstYear, scdYear) := ReadInteger2('Введите два года, сумму дней между которыми необходимо определить: ');
  Assert((frstYear > 0) and (scdYear > 0));
  
  var sumDays := 0;
  
  for var i := frstYear to scdYear do
  begin
    if i.Divs(4) and (not i.Divs(100) or i.Divs(400)) then
      sumDays += 366
    else
      sumDays += 365;
  end;
  Println($'Суммарное количество дней во всех годах: {sumDays}');
  
  var hour := ReadInteger('Введите целое положительное количество часов: ');
  Print($'Количество секунд в {hour} часах: {hour * 3600} секунд.');
end.
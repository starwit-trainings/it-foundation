use liga;

select 
  s.Datum,
  s.Spieltag,
  s.Heim,
  s.Gast,
  heim.Name as GastName,
  gast.Name as HeimName
FROM Spiel s 
join Verein as heim on s.Heim = heim.V_ID
join Verein as gast on s.Gast = gast.V_ID  
ORDER BY `s`.`Datum` DESC
for $v in doc("biblioteca.xml")/bib/libro
where empty($v/autor)
return concat($v/@anyo, " -> ",$v/titulo)
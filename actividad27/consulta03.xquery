for $v in doc("biblioteca.xml")/bib/libro
where $v/precio = 65.95
return $v
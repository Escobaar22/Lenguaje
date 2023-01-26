for $v in doc("biblioteca.xml")/bib/libro
where $v/@anyo < 2000
return $v
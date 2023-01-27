for $v in doc("biblioteca.xml")/bib/libro
return data($v/titulo)
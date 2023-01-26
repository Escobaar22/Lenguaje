for $v in doc("biblioteca.xml")/bib/libro
where $v/count(@autor) > 1
return <libro>{$v/@anyo}{$v/titulo}</libro>
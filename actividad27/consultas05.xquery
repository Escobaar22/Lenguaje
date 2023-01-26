for $v in doc("biblioteca.xml")/bib/libro
where $v/editorial = 'Addison-Wesley' and $v/@anyo > 1992
return <libro>{$v/@anyo}{$v/titulo}</libro>
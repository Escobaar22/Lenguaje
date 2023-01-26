for $v in doc("biblioteca.xml")/bib/libro 
order by $v /@anyo
return <libro>{$v/@anyo}{$v/titulo}</libro>
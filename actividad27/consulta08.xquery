for $v in distinct-values(doc("biblioteca.xml")/bib/libro/autor/apellido)
order by ($v)
return data($v)
for $v in doc("biblioteca.xml")/bib/libro
where $v/count(autor) > 1
return concat(($v/@anyo), " -> ",($v/titulo))
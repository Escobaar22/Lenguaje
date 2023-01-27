for $v in doc("biblioteca.xml")/bib/libro 
order by $v /@anyo
return concat(($v/@anyo), " -> ",($v/titulo))
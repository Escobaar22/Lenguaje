for $v in doc("Bailes.xml")/bailes/baile
order by ($v/profesor)
return concat(($v/profesor), " -> ",($v/nombre)," ", ($v/precio)," ", ($v/precio/@moneda), "/", ($v/precio/@periodo))
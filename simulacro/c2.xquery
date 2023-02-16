for $v in doc("Bailes.xml")/bailes/baile
where $v/precio < 35 and $v/sala = "Sala 2"
return $v 
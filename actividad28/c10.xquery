for $v in doc("llibreria.xml")/bookstore
return concat("Precio máximo: ",max($v/book/price), "  Precio mínimo: " ,min($v/book/price))
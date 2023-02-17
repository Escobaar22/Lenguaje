for $v in doc("llibreria.xml")/bookstore/book
let $iva := ($v/price * 1.21)
order by $iva
return concat("Titulo: ",data($v/title)," -> Precio: ",data($v/price)," -> Precio + IVA: ", $iva)
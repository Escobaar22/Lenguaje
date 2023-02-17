for $v in doc("llibreria.xml")/bookstore/book
where $v/price <= 30
return data($v/title)
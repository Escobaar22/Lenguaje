for $v in doc("llibreria.xml")/bookstore/book
order by $v/@category, $v/title
return data($v) 
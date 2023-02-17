for $v in doc("llibreria.xml")/bookstore
return <total>{count($v/book)}</total>
for $v in doc("llibreria.xml")/bookstore/book
return <titulo>{data($v/title)}</titulo>

for $v in doc("llibreria.xml")/bookstore/book
let $y := $v/year
return <publicacion>{data($y)}</publicacion>
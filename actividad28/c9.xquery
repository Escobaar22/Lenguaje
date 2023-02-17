for $v in doc("llibreria.xml")/bookstore
let $t := data($v/book/title)
let $b := count($v/book)
return ($t , "->" , <total>{$b}</total>)
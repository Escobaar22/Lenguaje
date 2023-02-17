for $v in doc("llibreria.xml")/bookstore/book
where $v/year = 2005
return <lib2005><libro>{data($v/title)}</libro><autor>{data($v/author)}</autor></lib2005>
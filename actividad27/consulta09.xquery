for $v in doc("biblioteca.xml")/bib/libro
return <result>
{$v/@anyo}{$v/titulo}
</result>

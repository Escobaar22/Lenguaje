for $v in doc("biblioteca.xml")/bib/libro
return <libro>
{$v/titulo}{count($v/autor)}
</libro>
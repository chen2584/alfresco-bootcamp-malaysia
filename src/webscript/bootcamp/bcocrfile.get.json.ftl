[
<#list docs as doc>
    {
        "name" : "${doc.name},
        "${sprop}" : "${doc.properties[sprop]}"
    }<#if doc_has_next>,</#if> 
</#list>
]
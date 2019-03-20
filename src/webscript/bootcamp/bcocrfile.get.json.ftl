[
<#list docs as doc>
    {
        "name" : ${doc.name},
        ${sprop} : ${doc.properties[sprop]}
    }
    <#if d_has_next>,</#if> 
</#list>
]
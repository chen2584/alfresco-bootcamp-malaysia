var stype = url.templateArgs["type"];
var sprop = url.templateArgs["prop"];
var svalue = url.templateArgs["value"];

var docquery = 'select e.* from ' + stype + ' as e';
var queryDef = { query: docquery, language: "cmis-alfresco" };
var results = search.query(queryDef);

if (results != null && results.length > 0) {
    for (var index = 0; index < results.length; index++) {
        results[index].properties[sprop] = svalue;
        results[index].save();
    }
    model.docs = results;
}
else {
    models.docs = null;
}

model.doctype = stype;
model.sprop = sprop;
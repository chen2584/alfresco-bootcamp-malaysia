var stype = url.templateArgs["type"];

var docquery = 'select e.* from ' + stype + ' as e';
var queryDef = { query: docquery, language: "cmis-alfresco" };
var results = search.query(queryDef);

if (results != null && results.length > 0) {
    model.docs = results;
}
else {
    models.docs = null;
}

model.doctype = stype;
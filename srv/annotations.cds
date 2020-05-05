using from './cat-service';
@odata.draft.enabled : true
annotate CatalogService.Employees with @(
    UI: {
      Identification: [ employeeName,hr_payroll_ID,career_Level,role],
        SelectionFields: [ employeeName ],
        LineItem: [
            {Value: ID, Label:'Employee Id'},
            {Value: employeeName, Label:'Employee Name'},
            {Value: hr_payroll_ID, Label:'hr_payroll Id'},
            {Value: career_Level, Label:'Career Level'},
            {Value: role, Label:'role'}    
        ],
        Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}', Target: '@UI.FieldGroup#Details'},
		],
		FieldGroup#Details: {
			Data: [
            {Value: employeeName, Label:'Employee Name'},
            {Value: hr_payroll_ID, Label:'hr_payroll Id'},
            {Value: career_Level, Label:'Career Level'},
            {Value: role, Label:'role'}
			]
		},
	
        HeaderInfo: {
            TypeName: '{i18n>Employee}',
            TypeNamePlural: '{i18n>Employees}',
            Title: {Value: employeeName},
            Description: {Value: hr_payroll.name}
        }
    }
);

/*annotate CatalogService.Books with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter;
    title @title:'{i18n>Title}';
    author @title:'{i18n>AuthorID}';
    stock @title:'{i18n>Stock}';
}

annotate CatalogService.Authors with {
   ID @title:'{i18n>ID}' @UI.HiddenFilter;
    name @title:'{i18n>AuthorName}';
}*/
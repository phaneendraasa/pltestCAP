using { my.company} from '../db/data-model';

service CatalogService {
  entity Employees  as projection on company.Employees;
  entity Hr_Payroll  as projection on company.Hr_Payroll;
  
}
annotate CatalogService.Employees with @odata.draft.enabled;



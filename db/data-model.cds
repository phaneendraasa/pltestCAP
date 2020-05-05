namespace my.company;


entity Employees {
  key ID : UUID;
  employeeName  : localized String;
  hr_payroll : Association to Hr_Payroll;
  career_Level  : Integer;
  role : String;
}

entity Hr_Payroll {
  key ID : Integer;
  name   : String;
  employees  : Association to many Employees on employees.hr_payroll = $self;
  employee_id : String;
  wage_type : String;
  start_date : String;
  end_date : String;
  salary :Integer;
  currency :String;
}
use [Company_SD]

select  [Dnum],[Dname],[SSN],[Fname]+''+[Lname] as 'full name'
from [dbo].[Departments] inner join [dbo].[Employee]
on   [dbo].[Departments].[Dnum]=[dbo].[Employee].Dno;


select [Dname],[Pname]
from [dbo].[Departments] inner join[dbo].[Project]
on [dbo].[Project].Dnum=[dbo].[Departments].Dnum


select [dbo].[Dependent].ESSN,[dbo].[Dependent].Dependent_name,[dbo].[Dependent].Bdate,[dbo].[Dependent].Sex ,
[dbo].[Employee].[Fname]+ ''+[dbo].[Employee].[Lname] as'full name'
from [dbo].[Dependent] left outer join [dbo].[Employee]
on [dbo].[Dependent].ESSN=[dbo].[Employee].SSN;

select [Pnumber],[Pname],[Plocation] from[dbo].[Project] 
where
[City]='Alex ' or [City]='Cairo'

select * from [dbo].[Project] where [Pname] like 'a%'

select [Fname]+''+[Lname] as 'full name'
from [dbo].[Employee] where [Dno]=30 and [Salary] Between 1000 and 2000

select[dbo].[Employee].[Fname]+''+[dbo].[Employee].[Lname] as 'full name'
from  [dbo].[Employee] inner join [dbo].[Works_for] on [dbo].[Employee].SSN=[dbo].[Works_for].ESSn
 inner join [dbo].[Project]on [dbo].[Project].Pnumber=[dbo].[Works_for].Pno
 where[dbo].[Employee].Dno=10 and [dbo].[Works_for].Hours >= 10 and[dbo].[Project].[Pname]='Al Rawdah'


 select y.[Fname]+' '+y.[Lname] as 'full name'
 from  [dbo].[Employee] x  join  [dbo].[Employee] y
 on y.Superssn=x.SSN
 where x.[Fname]='Edward'  and  x.[Lname]= 'Hanna'

 select [dbo].[Employee].[Fname]+''+[dbo].[Employee].[Lname] as 'full name',[dbo].[Project].Pname
 from [dbo].[Employee] inner join [dbo].[Departments] on[dbo].[Employee].Dno=[dbo].[Departments].Dnum
 inner join [dbo].[Project] on [dbo].[Project].Dnum=[dbo].[Departments].Dnum
 order by [dbo].[Project].Pname

 select [dbo].[Departments].Dname,[dbo].[Project].Pnumber,x.[Lname],x.[Address],x.[Bdate]
 from [dbo].[Employee] x join  [dbo].[Employee]  y on x.SSN=y.Superssn
 inner join [dbo].[Departments] on y.Dno=[dbo].[Departments].Dnum
 inner join [dbo].[Project] on [dbo].[Project].Dnum=[dbo].[Departments].Dnum
 where [dbo].[Project].City='Cairo'

 select x.* 
 from [dbo].[Employee] x join[dbo].[Employee] y
 on x.[SSN]=y.[Superssn]

 select [dbo].[Employee].*,[dbo].[Dependent].*
 from [dbo].[Employee] full outer join [dbo].[Dependent] 
 on [dbo].[Employee].SSN=[dbo].[Dependent].ESSN
 where [Dependent_name] is NULL


 insert  [dbo].[Employee] values('Ahmed','Dahi',102672,08-01-2004,'Sohag','m',3000,112233,30,20, NULL)

 alter table [dbo].[Employee] drop column [Eage]

  insert  [dbo].[Employee] values('abdo','Dahi',102660,08-01-2006,'Sohag','m',NULL,NULL,30,17)

  insert [dbo].[Employee] ([Fname],[Lname],[SSN],[Bdate],[Address],[Sex],[Dno],[age])
  values('ali','ahmed',102555,06-05-2004,'cairo','m',30,20)

  update [dbo].[Employee]
  set Salary=120% Salary
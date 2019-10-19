select 
max(st.SNO) 学生学号,max(st.SNAME) 学生姓名,COUNT(sc.SNO) 选课数量,SUM(DEGREE) 总成绩
from STUDENT st join SCORE sc on st.SNO=sc.SNO group by sc.SNO













select 
MAX(co.CNAME) 课程名,AVG(DEGREE) 平均成绩,COUNT(*) 总人数,
cast(count(case when sc.DEGREE>=80 then 1 else null end)*100/count(sc.DEGREE) as varchar)+'%' 及格率 
from 
SCORE sc join COURSE co on sc.CNO=co.CNO 
group by sc.CNO order by AVG(sc.DEGREE)



select SNO,MAX(cno),MAX(DEGREE) from SCORE group by SNO


select cno,COUNT(case when DEGREE>70 then 1 else null end) from SCORE
group by CNO



select CNO,COUNT(*) 不及格人数 from SCORE group by CNO,DEGREE having(DEGREE<70)

select Tid 老师,COUNT(Tid) 总人数,sum(case when res>=60 then 1 else 0 end) 及格人数,

cast(cast (sum(case when res>=60 then 1 else 0 end)*100/(count(1)*1.0) as float) as nvarchar)+'%'
'及格率'
from Student group by 
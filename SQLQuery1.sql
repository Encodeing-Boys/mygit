select 
max(st.SNO) ѧ��ѧ��,max(st.SNAME) ѧ������,COUNT(sc.SNO) ѡ������,SUM(DEGREE) �ܳɼ�
from STUDENT st join SCORE sc on st.SNO=sc.SNO group by sc.SNO













select 
MAX(co.CNAME) �γ���,AVG(DEGREE) ƽ���ɼ�,COUNT(*) ������,
cast(count(case when sc.DEGREE>=80 then 1 else null end)*100/count(sc.DEGREE) as varchar)+'%' ������ 
from 
SCORE sc join COURSE co on sc.CNO=co.CNO 
group by sc.CNO order by AVG(sc.DEGREE)



select SNO,MAX(cno),MAX(DEGREE) from SCORE group by SNO


select cno,COUNT(case when DEGREE>70 then 1 else null end) from SCORE
group by CNO



select CNO,COUNT(*) ���������� from SCORE group by CNO,DEGREE having(DEGREE<70)

select Tid ��ʦ,COUNT(Tid) ������,sum(case when res>=60 then 1 else 0 end) ��������,

cast(cast (sum(case when res>=60 then 1 else 0 end)*100/(count(1)*1.0) as float) as nvarchar)+'%'
'������'
from Student group by 
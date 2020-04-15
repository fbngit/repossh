select a.sno from 
(select  sno,score from score where cno=1) a,
(select sno,score from score where cno=2) b
where a.sno=b.sno and a.score>b.score;

select a.sno,a.sname,count(b.cno),sum(score) from 
student a left  join score b on 
a.sno=b.sno
group by a.sname,a.sno order by a.sno asc;

select a.sno,a.sname from student a left join score b 
on a.sno=b.sno
group by a.sno,a.sname 
having count(b.cno)<
(select count(cno) from cource);



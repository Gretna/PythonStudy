use university;
-- 插入departmen元素
insert into department values('computer','Buiding_A',12000);
insert into department values('biology','Buidng_B',24000);
insert into department values('physics','Building_C',28000);
insert into department values('new','Building',8000);
insert into department values('math','Buiding_E',3500);
-- 插入student元素
insert into student values(1,'廉萱妍','f',19,'loving','computer');
insert into student values(2,'荀良运','m',17,'single','computer');
insert into student values(3,'尹枫起','m',14,'loving','computer');
insert into student values(4,'皇甫梦心','f',13,'loving','computer');
insert into student values(5,'司马海禧','m',24,'loving','computer');
insert into student values(6,'薛珊柏','f',21,'single','biology');
insert into student values(7,'皇甫驰钊','m',21,'single','physics');
insert into student values(8,'骆谷震','m',23,'single','computer');
insert into student values(9,'吕禧逸','m',18,'single','biology');
insert into student values(10,'公孙子晨','m',20,'loving','physics');
insert into student values(11,'王凡康','m',21,'loving','physics');
insert into student values(12,'谢婷桃','f',21,'single','computer');
insert into student values(13,'寿雨华','f',20,'single','physics');
insert into student values(14,'昌菲婧','f',19,'loving','new');
insert into student values(15,'赵梓梓','m',22,'loving','biology');
insert into student values(16,'尉迟彩鑫','f',22,'single','new');
insert into student values(17,'毛骏钊','m',23,'single','new');
insert into student values(18,'吴腾梁','m',17,'loving','math');
insert into student values(19,'庞德骏','m',23,'loving','math');
insert into student values(20,'梅昭凡','f',18,'single','computer');
-- 插入exam元素
insert into exam values(1,'FirstExam',62);
insert into exam values(1,'SecondExam',70);
insert into exam values(1,'ThirdExam',98);
insert into exam values(1,'FinalExam',93);
insert into exam values(2,'FirstExam',46);
insert into exam values(2,'SecondExam',97);
insert into exam values(2,'ThirdExam',68);
insert into exam values(2,'FinalExam',60);
insert into exam values(3,'FirstExam',64);
insert into exam values(3,'SecondExam',48);
insert into exam values(3,'ThirdExam',94);
insert into exam values(3,'FinalExam',68);
insert into exam values(4,'FirstExam',69);
insert into exam values(4,'SecondExam',100);
insert into exam values(4,'ThirdExam',97);
insert into exam values(4,'FinalExam',56);
insert into exam values(5,'FirstExam',91);
insert into exam values(5,'SecondExam',86);
insert into exam values(5,'ThirdExam',58);
insert into exam values(5,'FinalExam',81);
insert into exam values(6,'FirstExam',71);
insert into exam values(6,'SecondExam',63);
insert into exam values(6,'ThirdExam',96);
insert into exam values(6,'FinalExam',60);
insert into exam values(7,'FirstExam',60);
insert into exam values(7,'SecondExam',48);
insert into exam values(7,'ThirdExam',63);
insert into exam values(7,'FinalExam',74);
insert into exam values(8,'FirstExam',86);
insert into exam values(8,'SecondExam',99);
insert into exam values(8,'ThirdExam',73);
insert into exam values(8,'FinalExam',79);
insert into exam values(9,'FirstExam',94);
insert into exam values(9,'SecondExam',61);
insert into exam values(9,'ThirdExam',49);
insert into exam values(9,'FinalExam',72);
insert into exam values(10,'FirstExam',62);
insert into exam values(10,'SecondExam',67);
insert into exam values(10,'ThirdExam',68);
insert into exam values(10,'FinalExam',78);
insert into exam values(11,'FirstExam',94);
insert into exam values(11,'SecondExam',60);
insert into exam values(11,'ThirdExam',93);
insert into exam values(11,'FinalExam',60);
insert into exam values(12,'FirstExam',98);
insert into exam values(12,'SecondExam',48);
insert into exam values(12,'ThirdExam',69);
insert into exam values(12,'inalExam',86);
insert into exam values(13,'FirstExam',46);
insert into exam values(13,'SecondExam',84);
insert into exam values(13,'ThirdExam',47);
insert into exam values(13,'FinalExam',83);
insert into exam values(14,'FirstExam',52);
insert into exam values(14,'SecondExam',97);
insert into exam values(14,'ThirdExam',91);
insert into exam values(14,'FinalExam',84);
insert into exam values(15,'FirstExam',85);
insert into exam values(15,'SecondExam',68);
insert into exam values(15,'ThirdExam',100);
insert into exam values(15,'FinalExam',52);
insert into exam values(16,'FirstExam',59);
insert into exam values(16,'SecondExam',58);
insert into exam values(16,'ThirdExam',95);
insert into exam values(16,'FinalExam',58);
insert into exam values(17,'FirstExam',92);
insert into exam values(17,'SecondExam',93);
insert into exam values(17,'ThirdExam',100);
insert into exam values(17,'FinalExam',49);
insert into exam values(18,'FirstExam',87);
insert into exam values(18,'SecondExam',81);
insert into exam values(18,'ThirdExam',93);
insert into exam values(18,'FinalExam',58);
insert into exam values(19,'FirstExam',85);
insert into exam values(19,'SecondExam',88);
insert into exam values(19,'ThirdExam',91);
insert into exam values(19,'FinalExam',62);
insert into exam values(20,'FirstExam',88);
insert into exam values(20,'SecondExam',78);
insert into exam values(20,'ThirdExam',94);
insert into exam values(20,'FinalExam',100);
select count(*)from student group by sex;
-- 3-1.把peoples表中school不是GDUFS的人全部找出来？（包括school为NULL的人）写出MySQL语句。

-- 3-2.查找计算机系每次考试学生的平均成绩(最终显示学生姓名, 考试名称, 平均分)。
select ID,avg(grade)
from exam
group by ID
union
select *
from student
where dept_name='computer';
-- 3-3.查找女学霸（考试平均分达到80分或80分以上的女生的姓名, 分数）。
select ID,avg(grade)>80 or avg(grade)=80
from exam group by ID;
-- union 
select ID from student
where sex='f';
-- 3-4.找出人数最少的院系以及其年度预算。
select distinct count(*),dept_name as count
from student group by dept_name
order by count asc limit 5;
select budget from department where dept_name='math';
-- 3-5.计算机系改名了，改成计算机科学系（comp. sci.），写出mysql语句。
update department set
dept_name=replace(dept_name,'computer','comp.sci.')where dept_name='computer';
-- 3-6.修改每个系的年度预算，给该系的每个学生发2000元奖金。（修改每个系的年度预算为 原预算+该系人数*2000）。
select * from department;
update department set budget=budget+2000*2 where dept_name='math';
update department set budget=budget+2000*3 where dept_name='new';
update department set budget=budget+2000*3 where dept_name='biology';
update department set budget=budget+2000*4 where dept_name='physics';
update department set budget=budget+2000*8 where dept_name='computer';
select dept_name,budget from department;
-- 3-7.向department表中插入一条数据, dept_name属性的值为avg_budget, building为空, 年度预算为所有院系的年度预算平均值.
-- 3-8. 删除计算机系中考试成绩平均分低于70的学生.
delete from exam where avg(grade)<70 group by ID;
-- 3-9.找出所有正在谈恋爱,但是学习成绩不佳(考试平均分低于75)的学生,强制将其情感状态改为单身.
select ID from student where emotion_state='loving' 
union
select ID,avg(grade)<70 from exam group by ID;
-- 3-10(选做). 对每个学生, 往exam表格中插入名为Avg_Exam的考试, 考试分数为之前学生参加过考试的平均分.
-- 3-10answer:
--Query 1.
select * from Users
Select * from Users where user_id='112233' and user_password='Maya1214'

--Query 2.[UserTable]
select * from Note
Select * from Note where notes_creation_date='2019-01-31'

--Query 3.
Select * from Category
Select * from Category where category_creation_date>'2019-01-22'

--Query 4.
select * from Note
Select * from Category
select * from Category where category_creator = (select user_id from Note where note_id = 1)

--Query 5.
select * from Note
Select * from Note where user_id='112244'

--Query 6.
select * from Note
Select * from Category
select * from Note where user_id = (select category_creator from Category where category_id =1)

--Query 7.
select * from Note
select * from Reminder
select * from Reminder where reminder_creator = (select user_id from Note where note_id = 2)

--Query 8.
select * from Note
Update Note set note_status='Completed' where note_id=3

--Query 9.
select * from Reminder
Update Reminder set reminder_type = 'Personal Reminders' where reminder_creator = (select user_id from Note where note_id = 1)

--Query 10.
select * from Note
select * from Reminder
Delete from Reminder where reminder_creator = (select user_id from Note where note_id = 2)
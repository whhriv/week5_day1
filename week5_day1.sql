--QUESTION 1

select COUNT(*) 
from actor
WHERE last_name = 'Wahlberg';
--Answer = 2

--Q2 PAYMENTS BETWEEN 3.99-5.99
select count(*) 
from PAYMENT 
where amount between 3.99 and 5.99;
--Answer 5,607

--Q3 - 7 copies in inventory
select film_id, count(*)
FROM inventory
group by film_id
having count(*) = 7;
--Answer - in table(lots)

--Question4 - first name 'willie'

select *
from customer
where first_name = 'willie';

--ANs -2

-Question 5 employee sold most

select staff_id, count(*)
from rental
group by staff_id
order by count(*) DESC 
limit 1;

--ans = STaff_id=1 with 8,040

--Question 6 - Unique district names?

select count(distinct district)
from address;

-- ANS = 378

--question 7 - film with most actors

select film_id, count(*) as num_actors
from film_actor
group by film_id
order by num_actors desc;

---ans 508

--question 8 from store_id=1 how many customers last_name end 'es'

select count(*)
from customer
where store_id = 1 and last_name like'%es';

--anwser = 13

-- Question 9 - Payents >250 for id 380-430

select amount, count(*)
from PAYMENT P 
where customer_id between 380 and 430
group by amount
having count(*) >250;

--ans 3, 2.99, 4.99, .99

--Question 10 -Rating category in films? rating with most movies?
select rating, count(*)
from FILM F 
group by RATING order by count(*) desc;

--Answer = 5 categories, PG-13 most



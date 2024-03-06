-- Homework W1
select * from actor where last_name = 'Wahlberg'
-- Answer: 2

-- QUESTION 2
select AMOUNT, COUNT(AMOUNT)
from payment 
group by amount 
order by AMOUNT;
-- ANSWER: 3,427

-- QUESTION 3
select * from INVENTORY 
-- ANSWER: 4,581


-- QUESTION 4
select * from CUSTOMER where LAST_NAME LIKE 'William'
-- ANSWER: 0 FOR WILLIAM 1 FOR WILLIAMS

-- QUESTION 5
select * 
from RENTAL
group by rental_id
order by STAFF_ID;
-- ANSWER: 16,048 ; MIKE

-- QUESTION 6
select ADDRESS.DISTRICT
from ADDRESS
-- ANSWER: 603

-- QUESTION 7
select FILM_ID
from FILM_ACTOR
group by FILM_ID
having SUM(film_id) > 2000
order by SUM(ACTOR_ID) desc;
-- ANSWER: 199 TITANIC BOONDOCK/ CRAZY HOME 199

-- QUESTION 8
select STORE_ID, LAST_NAME
from CUSTOMER 
where customer_id in (
	select CUSTOMER_ID
	from STORE
	where last_name like '%es'
);
-- ANSWER: 21

-- QUESTION 9
select *
from PAYMENT
where customer_id in (
	select customer_id
	from rental
	group by customer_id 
	having SUM(rental_id) > 250
	order by SUM(customer_id) >= 430
); 
-- ANSWER: 17,509

-- QUESTION 10
select *
from FILM 
group by FILM_ID
order by rating;
-- ANSWER: RATING CATEGORIES; 5 
-- G HAS THE MOST MOVIES IN TOTAL; 569





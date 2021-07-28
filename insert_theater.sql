INSERT INTO customer(
	cust_id,
	first_name,
	last_name,
	email,
	payment
)VALUES(
	1,
	'Joe',
	'Smith',
	'jsmith@coolmail.com',
	'1234-5678-1234-5678'
);

INSERT INTO customer(
	first_name,
	last_name,
	email,
	payment
)VALUES(
	'George',
	'Washington',
	'gwashington@coolmail.com',
	'1212-1212-1212-1212'
);

INSERT INTO customer(
	first_name,
	last_name,
	email,
	payment
)VALUES(
	'John',
	'Adams',
	'jadams@coolmail.com',
	'4545-4545-4545-4545'
);

INSERT INTO items(
	item_id,
	price,
	prod_size
)VALUES(
	1,
	3.00,
	'S'
);

INSERT INTO items(
	item_id,
	price,
	prod_size
)VALUES(
	2,
	4.00,
	'M'
);

INSERT INTO items(
	item_id,
	price,
	prod_size
)VALUES(
	3,
	5.00,
	'L'
);

INSERT INTO items(
	item_id,
	price,
	prod_size
)VALUES(
	4,
	6.00,
	'XL'
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	1,
	65
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	2,
	40
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	3,
	45
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	4,
	35
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	5,
	50
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	6,
	45
);

INSERT INTO theater(
	theater_id,
	capacity
)VALUES(
	7,
	40
);

INSERT INTO movie(
	movie_id,
	title,
	rating
)VALUES(
	1,
	'Boondock Saints',
	'R'
);

INSERT INTO movie(
	movie_id,
	title,
	rating
)VALUES(
	2,
	'Dead Man on Campus',
	'R'
);

INSERT INTO movie(
	movie_id,
	title,
	rating
)VALUES(
	3,
	'Moana',
	'G'
);

INSERT INTO movie(
	movie_id,
	title,
	rating
)VALUES(
	4,
	'Top Gun',
	'PG-13'
);

INSERT INTO movie(
	movie_id,
	title,
	rating
)VALUES(
	5,
	'Showgirls',
	'NC-17'
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	1,
	'A',
	1
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	2,
	'A',
	2
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	3,
	'A',
	3
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	4,
	'B',
	1
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	5,
	'B',
	2
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	6,
	'B',
	3
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	7,
	'C',
	1
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	8,
	'C',
	2
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	9,
	'C',
	3
);

INSERT INTO seat(
	seat_id,
	theater_row,
	seat
)VALUES(
	10,
	'D',
	1
);

INSERT INTO showtimes(
	show_id,
	show_time,
	matinee
)VALUES(
	1,
	'14:00:00',
	True
);

INSERT INTO showtimes(
	show_id,
	show_time,
	matinee
)VALUES(
	2,
	'16:00:00',
	True
);

INSERT INTO showtimes(
	show_id,
	show_time,
	matinee
)VALUES(
	3,
	'18:00:00',
	False
);

INSERT INTO showtimes(
	show_id,
	show_time,
	matinee
)VALUES(
	4,
	'20:00:00',
	False
);

INSERT INTO showtimes(
	show_id,
	show_time,
	matinee
)VALUES(
	5,
	'22:00:00',
	False
);

INSERT INTO showtimes(
	show_id,
	show_time,
	matinee
)VALUES(
	6,
	'12:00:00',
	True
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	theater_id,
	show_id,
	seat_id
)VALUES(
	6,
	5,
	4,
	3,
	2
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	theater_id,
	show_id,
	seat_id
)VALUES(
	1,
	1,
	5,
	2,
	2
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	theater_id,
	show_id,
	seat_id
)VALUES(
	2,
	2,
	4,
	4,
	4
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	theater_id,
	show_id,
	seat_id
)VALUES(
	3,
	3,
	3,
	6,
	6
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	theater_id,
	show_id,
	seat_id
)VALUES(
	4,
	4,
	2,
	3,
	8
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	theater_id,
	show_id,
	seat_id
)VALUES(
	5,
	5,
	1,
	5,
	10
);

INSERT INTO tickettransaction(
	transaction_id,
	ticket_id,
	sub_total,
	total,
	cust_id
)VALUES(
	1,
	3,
	12.99,
	14.16,
	2
);

INSERT INTO tickettransaction(
	transaction_id,
	ticket_id,
	sub_total,
	total,
	cust_id
)VALUES(
	2,
	5,
	15.99,
	17.43,
	3
);

INSERT INTO tickettransaction(
	transaction_id,
	ticket_id,
	sub_total,
	total,
	cust_id
)VALUES(
	3,
	5,
	15.99,
	17.43,
	1
);

INSERT INTO concessions(
	trans_id,
	item_id,
	sub_total,
	total,
	cust_id
)VALUES(
	1,
	2,
	4.00,
	4.36,
	2
);

INSERT INTO concessions(
	trans_id,
	item_id,
	sub_total,
	total,
	cust_id
)VALUES(
	2,
	4,
	6.00,
	6.54,
	3
);

INSERT INTO concessions(
	trans_id,
	item_id,
	sub_total,
	total,
	cust_id
)VALUES(
	3,
	3,
	5.00,
	5.45,
	1
);

CREATE TABLE customer (
  cust_id SERIAL PRIMARY KEY,
  first_name VARCHAR(75),
  last_name VARCHAR(75),
  email VARCHAR(75),
  payment VARCHAR(75)
);

CREATE TABLE items (
  item_id SERIAL PRIMARY KEY,
  price NUMERIC(4,2),
  prod_size VARCHAR(10)
);

CREATE TABLE theater (
  theater_id SERIAL PRIMARY KEY,
  capacity INTEGER
);

CREATE TABLE movie (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  rating VARCHAR(5)
);

CREATE TABLE showtimes (
  show_id SERIAL PRIMARY KEY,
  show_time TIME,
  matinee BOOLEAN
);

CREATE TABLE seat (
  seat_id SERIAL PRIMARY KEY,
  theater_row VARCHAR(1),
  seat INTEGER
);

CREATE TABLE tickets (
  ticket_id SERIAL PRIMARY KEY,
  movie_id INTEGER,
  theater_id INTEGER,
  show_id INTEGER,
  seat_id INTEGER,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY(theater_id) REFERENCES theater(theater_id),
	FOREIGN KEY(show_id) REFERENCES showtimes(show_id),
	FOREIGN KEY(seat_id) REFERENCES seat(seat_id)
);

CREATE TABLE concessions (
  trans_id SERIAL PRIMARY KEY,
  item_id INTEGER,
  sub_total NUMERIC(6,2),
  total NUMERIC(6,2),
  cust_id INTEGER,
  concession_date DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(item_id) REFERENCES items(item_id),
	FOREIGN KEY(cust_id) REFERENCES customer(cust_id)
);

CREATE TABLE ticketTransaction (
  transaction_id SERIAL PRIMARY KEY,
  ticket_id INTEGER,
  sub_total NUMERIC(6,2),
  total NUMERIC(6,2),
  cust_id INTEGER,
  tix_date DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(cust_id) REFERENCES customer(cust_id),
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);


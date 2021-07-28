# SQL_movie_theater

## Assignment
Create an SQL database for a movie theater, incorporating major aspects of it's operation. Fill that database with values.

## Approach
I envisioned my trip through the movie theater and what would happen behind the scenes. For instance, I knew a ticket would have the movie, theater number,
show time and probably a seat number. Therefore my ticket table must contain all of these.

## Directionality
For directions into my primary keys, I decided to categorize them as a one relationship, as only one id can exist. For instance, the ticket table has a solo
relationship to movie_id as a ticket can only be a ticket for one movie. There will never be a ticket that grants entrance to two movies.<br>

Going the other direction, those id's have a zero or many relationship in the table which they are Foreign Keys, as they can appear in that table multiple times
or not at all. For example, a movie showing can sell multiple tickets, therefore the movie_id can appear in the ticket table multiple times. But if no tickets are sold
for that movie, it could also not appear in the ticket table at all. Therefore the relationship is zero to many.

## Lessons Learned
In checking that my tables and information rendered, I realized that most of my tables contained id's from other tables, and have no other means of identification. Now
I don't believe this to be too much of a problem as it's the relationships of the tables that are important, but colleagues, or even myself, can have problems truly
understanding the data in the tables. It can also make information harder to query as it would just return id's with no other information.<br>

One of the hardships I had was trying to create a single table for transactions. But concession items and tickets would contain totally different information and so would
end up requiring different transaction tables.

## Questions Developed
In order to render the tables the way I had designed, I discovered two problems. One was showtimes. We went over how to do a timestamp but I needed to create a set time. With
enough googling I discovered the solution. The other issue I had was that I needed a boolean value for the showtime column of matinee; True if showtime was a matinee, False
if it was not. I went through several different potential solutions, including making that value binary: 1 for True, 0 for False. Finally, buring within the depths of Mordor,
I discovered that postgresSQL actually contained boolean values. So after much researching, I determined that my solution was pretty easy.

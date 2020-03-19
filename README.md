# README
Share Kindness Blog 

Mission Share Kindness is part of an initiative of 
reinforcing acts of kindness that was originated by Creative
Artist Katie Laguna. Together with her husband (Vincent Laguna) they put
their skills and talents together to produce an application that hosts
Katie Laguna's posts along with comments made by Share Kindness members.

Vincent Laguna implemented the features and functionality of the app,
while Katie Laguna designed the front-end layout in HTML and CSS.
The backgrounds are her actual oil paintings on canvas.

Vincent Laguna: "Through the journey of developing my first Rails application
from scratch in collaboration with my wife, I have learned how far my passion
for software development extends. By producing something that may impact 
individuals in a positive way I have a richer understanding of the 
meaning behind carrying through works that one is passionate about, regardless
of the obstacles."

The application has basic login authentication using Bcrypt for hashing.
There are more features to be implemented (as this is the first MVP iteration).
Current features enable the admin to CRUD posts, and logged-in users to
post comments relating to each post and delete them as well. 

Currently working on the posts having the option to include images (Active Storage) 
and users being able to only delete their own comments. As I learn RSpec, I will
implement RSpec for testing, having more defined documentation and use 
testing to drive further development. - Vincent Laguna

* Ruby version 2.6.3p62

* Rails 6.0.2.1

* Deployed in Heroku (configured for PostgreSQL in production) 

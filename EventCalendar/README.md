# Event Calendar
Dates are dynamically change as the month change. As of now I am allowing users to choose a past date to set the event. It is an easy fix. Place the following code 'min: 0.days.ago' in the form next to where we capture the date will do stop users from picking the past dates. I tested it.

## Link to the website
https://calendar4events.herokuapp.com

## Technology used

<img src="http://www.asti.co.in/wp-content/uploads/2017/01/html_icon.png"  width="80px"> <img src="http://icons.iconarchive.com/icons/graphics-vibe/developer/256/css-icon.png"  width="80px"> <img src="https://bilalamjad.net/wp-content/uploads/2015/07/bs.png"  width="100px"> <img src="http://www.agiratech.com/wp-content/uploads/2017/09/Image-3.jpg"  width="160px">

<img src="https://images.g2crowd.com/uploads/product/image/social_landscape/social_landscape_1489695931/postgresql.png"  width="140px">
Postgres was my choice for database and it also works well with heroku.

## Getting Started
* Clone or fork the repository to your local computer.
* Follow these commands
* `rails db:migrate`
* ` rails s`
Go to http://localhost:3000 to test the code.
Incase if it does not work try the following commands and then go to the link above to test the code.

* `rails db:drop`
* `rails db:create`
* `rails db:schema:load`
* ` rails s`



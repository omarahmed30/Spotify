# Event Calendar
This app helps users create and manage their events. Users also can edit and delete events. Dates on this app are dynamically change as the month change. As of now I am allowing users to choose a past date to set the event. It is an easy fix. Place the following code 'min: 0.days.ago' in the form next to where we capture the date will stop users from picking the past dates. I tested it. I place the code to make this an json API in index and show actions in calendar controller, however I commented it out, so user can utilize the app using nice GUI. If we uncomment the code and run it in a browser under localhost:3000, we will see json data rendered back to us.

## Link to the website
https://calendar4events.herokuapp.com

## Technology used

<img src="http://www.asti.co.in/wp-content/uploads/2017/01/html_icon.png" height="80px"  width="80px"> <img src="http://icons.iconarchive.com/icons/graphics-vibe/developer/256/css-icon.png" height="80px"  width="80px"> <img src="https://bilalamjad.net/wp-content/uploads/2015/07/bs.png" height="70px"  width="80px"> <img src="http://www.agiratech.com/wp-content/uploads/2017/09/Image-3.jpg" height="70px" width="80px"> <img src="https://images.g2crowd.com/uploads/product/image/social_landscape/social_landscape_1489695931/postgresql.png"  height="80px" width="80px"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/SQLite370.svg/1280px-SQLite370.svg.png"  height="80px" width="80px">

* Postgres database for production and it also works well with heroku.
* Sqlite for development

## Getting Started
* Clone or fork the repository to your local computer.
* In your terminal if you are using Mac, please go the desktop directory and run the follwing command.
* ` git clone https://github.com/omarahmed30/Spotify.git`
* Next ` cd spotify/eventcalendar `
* Follow these commands
* `rails db:migrate`
* ` rails s`
Go to http://localhost:3000 to test the code.
Incase if it does not work try the following commands and then go to the link above to test the code.

* `rails db:drop`
* `rails db:create`
* `rails db:schema:load`
* ` rails s`



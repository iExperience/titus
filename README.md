# Assumptions

* Student is logged in
* Student has already paid


## Approach
* I focussed on the having the ability to filter rooms based on criteria.
* I created a simple booking page that allows the user to search an book a room.
* I left out many details a room could have for times sake.
* I only created tests for the search functionality which I felt was the core.
* Use api calls for search to get data and use frontend framework (VueJS) to do the work.
* Kept it simple for times sake.

## Running App

    rake db:migrate

Seed Db with 20 rooms

    rake db:seed

Run the app

    rails s


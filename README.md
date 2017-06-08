# README
  This is a simple Rails Blog performing simple CRUD Actions.
  It uses the bootstrap for frontend and Rspec for test.

  `Classic-blog` uses yarn for asset management

* Runing The App.

** clone the project using

   First Clone the Project using the command below.
   
   `git clone git@github.com:andrew-oko-odion/classic-blog.git`

   Fetch dependecy Gems
   
   run `bundle`

   Frontend dependency

   yarn install

   Run Migration
   
   run	`rails db:migrate`

   Run Application using
   
   run 	`rails server` 

   and in another shell run

   `./bin/webpacker-dev-sever `

#TODO
  The Goal is eventually support plugins for its template layout.
* Add Authentification support
* Add Tests. 
# Classic Rails Blog
[![Code Climate](https://codeclimate.com/github/andrew-oko-odion/classic-blog/badges/gpa.svg)](https://codeclimate.com/github/andrew-oko-odion/classic-blog)

  Classic Rails Blog performing simple CRUD Actions.
  It uses the following
  
  bootstrap
  Rspec
  Node modules 

 `Classic-blog` uses yarn for asset management

* To Run The App do the following.

** Clone the project

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

  The Goal is eventually support layout template as plugins.
* Add Authentification support
* Add Tests. 
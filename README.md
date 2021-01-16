README

Rails API

Goals

Initialize a Rails application in API mode
Set up Rails to serve JSON
Refactor existing app 

User stories 
  As a user you can create and add new article
  As a user you can edit/update an article
  As a user you can delete an article includs it dependents comments
  
  As a user you can comment an article

  As a user you can edit/update a comment 
  As a user you can delete a comment
  
  As a user you can article base on it title or body

Running the App

make sure you are in the director for the Rails app
    cd new_blog
bundle to get all the gems
    bundle install
create the Postgres database (you should have Postgres installed)
    rails db:create
run migrations
    rails db:migrate
seed data
    rails db:seed
run the Rails server
    rails s
confirm the app is serving JSON
    http://localhost:3000/articles
    
upload your own picture for an article 
Helpful Commands

create a Rails app in API mode with a Postgresql database (and not as a Git repository)
    rails new article-api --api -G -d=postgresql
    rails new new_blog 

create a new resource:
    rails g resource Api::V1::article title body imageUrl
    rails g resource article title body 
    
delete a resource:
rails d resource Api::V1::article title body imageUrl
rails d resource article title body 



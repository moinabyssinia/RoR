# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Steps

Create routes 

Create controllers - notice a plural version of the name is used
`bin/rails g controller Pages`

Create models
`bin/rails g model Page title:string body:text slug:string`

Do migration 
`bin/rails db:migrate`

Undo the migration - if something is wrong
`rails db:rollback`

Check available commands
`bin/rails -T db`

Seed database
`rails db:seed`

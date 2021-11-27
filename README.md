# Personal Blog

Light and simple blog with a full text editor to share interesting links/ideas/code snippes. Includes search functionalities as well as a tag system.



Technologies:

- Ruby on Rails
- Javascript/jQuery
- Bootstrap
- Rspec/Capybara


Ruby Gems :


-  Devise
-  Simple_form
-  Ckeditor
-  Carrierwave
-  Mini_magick
-  kaminari
-  Newrelic_rpm
-  Ransack
-  Newrelic_rpm



##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.7.1]
- Rails [5.1.4]

##### 1. Check out the repository

```bash
git clone https://github.com/Hatemachine01/personalblog.git
```

##### 2. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000

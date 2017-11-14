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

* ...

* install devise

```
rails g devise:install
```

check config/environments/development.rb:
config.action_mailer.default_url_options = {host: 'localhost', port: 3000}

add code to application.html.erb

```
<p calss="notice"> <%= notice %></p>
<p class="alert"><%= alert %></p>
```

```
  rails g devise:views
  rails g devise User
  rails db:migrate # check migration script before migrate
```

```
  rails g migration add_user_id_to_orders user_id:integer
  rails g migration add_user_id_to_shipping user_id:integer
  rails g migration add_user_id_to_... user_id:integer
  ...
```
models User
```
  has_many :orders
  has_many :shippings
  ...
```

models Order
```
  belongs_to :user
```

add link to application.html.erb
```
   <% link_to "Sign Up", new_user_registration_path %>
   <% link_to "Sign In", new_user_session_path %>
```


Admin or not?

```
config/initializers/rails_admin.rb

config.authorize_with do 
  redirect_to main_pp.root_path unless warden.user.is)admin?
end
```

In ProductsController / ShoppingCart / CheckOut
check user authenticated
```
   before_action :authenticate_user!, except: [:index, :show]
```
check if user signed in
```
   <% if user_singned_in? %>
```

...

-----------------------BOOTSTRAP 1---------------------------------------------
start bootscrap : https://startbootstrap.com/ 

https://startbootstrap.com/template-overviews/shop-item/ 

gem 'bootstrap-sass'

rename app/assets/stylesheets/application.css to app/assets/stylesheets/application.scss

@import "bootstrap-sprockets";
@import "bootstrap";

bundle install 

paste html 

-----------------------BOOTSTRAP 2---------------------------------------------
https://github.com/twbs/bootstrap-rubygem 


gem 'bootstrap', '~> 4.0.0.alpha3'
...
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>=1.1.0'
end
...
rename app/assets/stylesheets/application.css to app/assets/stylesheets/application.scss

@import "bootstrap";
....


#carrierwave

https://stackoverflow.com/questions/26390208/carrierwave-activeadmin-with-example-for-file-and-image-field-results-in-sta 
https://stackoverflow.com/questions/8268965/use-carrierwave-with-active-admin

---- old way ---
FileUtils::mkdir_p folder_name
f = File.open File.join(folder, file_name), "wb"
f.write file_name..
f.close

update product image to new_imgae
----


gem 'carrierwave'
bundle install
rails g uploader Product_images


==== paperclip ====
https://spin.atomicobject.com/2016/07/23/file-upload-active-admin-paperclip/ 
https://stackoverflow.com/questions/33476355/active-admin-image-upload 

gem 'paperclip'
bundle install


# Rials Vue Integration Using webpacker

This application is ment to demonstrate the integration process of Vue.js with Ruby on Rials, using webpacker.

Steps:

* Create Rails App using webpacker to install vue
```
rails new rails_vuejs --webpack=vue -d postgresql
```

* Rename - hello_vue.js to main.js
> path: app/javascript/packs/hello_vue.js

* Include main.js in application.html.erb with javascript pack tag
```
#app/views/layouts/application.html.erb

<%= javascript_pack_tag 'main' %>
```

* Create a controller (any name) say Home and action Index

```
rails generate controller Home index
```

* Clear all content inside home/index.html.erb and keep it empty, this will be our home page where we display our components

* Change route to point to home/index
```
root to: 'home#index'
```

* Now create a User controller
```
rails generate controller Users
```
To be continued....

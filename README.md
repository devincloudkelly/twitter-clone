# Ruby on Rails Tutorial sample application

## About

This project was built following M. Hartl's tutorial, and covered several topics and features of building a Ruby on Rails app, including: 

- ActiveStorage to upload files (in this case images) to a post
- Using AWS as a CDN to host and serve images.
- Integrating Gravatar to pre-populate avatars
- Using ActionMailer to send emails based on user actions, ex. new user signups
- In-depth build following MVC conventions.
- Use TDD to drive production

## Use locally

To get started with the app, clone the repo and then install the needed gems: 

```
$ bundle install --without production
```

Next, migrate the database: 

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Enjoy!

# README

This is a simple contact form submission service that can be used by any websites that does not have its own backend.

- Ruby version
  3.4.7

## How to set up and run locally

To set up and run this service locally we mainly need `git` and `ruby version 3.4.7`.

1. clone the repo: `git clone https://github.com/rabiimalla/contact_form_submission_service.git`
2. go the root directory `cd contact_form_submission_service`
3. run `bundle install` (make sure ruby version is 3.4.7, `ruby -v`) to get all required gems
4. run `rails db:create`, `rails db:migrate` to set up database
5. optionally, some seed data can also be populated by running `rails db:seed` command
6. run `rails s`to start the rails server
7. open http://localhost:3000
8. For letter_opener web interface, go to http://locahost:3000/letter_opener

## Limitations and decisions

#### Authentication

For authentication, we are not using anything at the moment for the simplicity's sake. The static website owner can simply append email address and site url as a query param to view the contact submissions sent from their website. For better authentication we should make the site owners register to our service and:

1. get the API token which can be attached to the contact form. This token is then checked before creating contact form submission record.
2. login credentials that should be used to access to "admin" panel in order to view all submitted contacts.

#### Mail interceptor

In the real world, we need to set up proper SMTP server in order to send the real email. Here we are using **letter opener** gem as it does not depend on any other SMTP servers being installed in the dev machine like _mailcatcher_ or _mailhog_. We use the **letter_opener_web** extension which provides a web url to view sent emails from the current session.

#### Design and styling

The service layout/views look is simple. I have not spent much time on making the layouts look nicer. That can be done for a real project with proper design by using css libraries like bootstrap or tailwindcss.

#### CORS configuration

There are no CORS set up. But it is needed when a static site is hosted in different domain.

## Improvement / additional features:

1. Docker can be used for development purpose to avoid issues like installing dependencies in the local machine
2. PostgreSQL should be used instead of default sqllite
3. For performance improvement, background jobs can be used for sending emails.
4. At least a site_owners table can be created to store dynamic site owner related info. This table can also be used for API token.
5. Great looking design for the views and email templates
6. Add flexibility in the contact form to add more fields dynamically depending on the static site requirement
7. Rate limiting for preventing abnormal amount of submissions

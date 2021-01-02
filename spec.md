# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app  
        - Started the app with the corneal gem.
- [x] Use ActiveRecord for storing information in a database
        - I have the gem 'activerecord' included in the gemfile, and my models are inheriting from ActiveRecord::Base
- [x] Include more than one model class (e.g. User, Post, Category)
        - I have a Team class and User class
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        - A User has many Teams
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
        - Teams belong to a User 
- [x] Include user accounts with unique login attribute (username or email)
        - The user model validates for username uniqeness 
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        - A team belongs to a user, who can create new teams, view (or read) the index of existing teams, update a particular team or destroy a particular team.
- [x] Ensure that users can't modify content created by other users
        - The teams_controller has conditionals prohibiting users from editing or deleting teams not created by the current user. 
- [x] Include user input validations
        - A user cannot create a new team without filling out all fields. Also a user must have a username and password.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
        - When a user tries to create a team without all fields complete, specific error messages are displayed. The same is true for loggin in and signing up. 
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code.
        - README has short description, instructions, a cintributors guide and a link to the license. 

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
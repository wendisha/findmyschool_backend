09/03/19:
    -Decided on the idea of creating a school search web app.
    -Started watching the GlobeTrotter series (Vid1).
    -Created repo.
    -Impt commits of the day:
        Rails API - Backend file structure
        Activate rack-cors and bcrypt gems
        Add Scaffold generated files for User
        Nest users resources in api/v1
        Add has_secure_password to User model
        Migrate to create initial schema and Seed user

09/04/19:
    -Struggled a lot with deciding on the structure of the app.
    -Finished watching GlobeTrotter 1.
    -Changed app name from School Search NY to Find My School.
    -Impt commits of the day:
        Add Scaffold generated files for School
        Properly namespaced and added class inrehitance to Users and Schools. Nested school resources.

09/05/19:
    -Decided on app Rails API associations to be:   
        User has_many Bookmarks
        School has_many Bookmarks
        User has_many Schools through Bookmarks
        School has_many Users through Bookmarks
    -Changed working working copy of repo to the new name, and changed its remote name. See:
        https://stackoverflow.com/questions/5751585/how-do-i-rename-a-repository-on-github
    -Scaffolded Bookmark.
    -Seeded some testing data.
    -Researched some git aliases, implemented:
        $ git config --global alias.co checkout
    -Learned "type" is not to be used as a column name in Rails. See: 
        https://mattconnolly.wordpress.com/2012/06/01/rails-beware-a-column-named-type/
    -In order to be able to send a user's bookmarks, I proceeded to format the rendered json in the show action (Users controller). 
     But I got a NoMethodError (undefined method `respond_to' for Api::V1::UsersController#show Did you mean?  respond_to?): And turns ou that ActionController::API does not include the ActionController::MimeResponds module. Added include ActionController::MimeResponds to Application
     Controller to solve the issue. (look into gem 'responders').
    -But! After installing user serializer I re-formatted the user show action.
    -Created the React app, encountering some issues that was able to solve following the instructions here listed (second best answer):
        https://stackoverflow.com/questions/38751830/create-react-app-installation-error-command-not-found
    -Impt commits of the day:
        Added associations
        Add fast_jsonapi gem (to create serializers), and created users serializer, and added has_many association for bookmarks
        Add current_user and logged_in? methods

09/06/19:
    -Set up Redux
    -Took out React's basic styling
    -Started working on adding the ability to login and persists sessions, retrieving the current user on mount if there is one.

09/07/19:
    -Finish adding the ability to login and persist sessions.
    -

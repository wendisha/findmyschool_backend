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
    -Impt commits of the day:
        Create React app
        Add redux, react-redux and redux-thunk to the list of dependecies
        Create user reducers and actions 
        Move store to its own file
        Add login component
        Add loginForm component, reducers and actions
        Handle updating form
        Set up sending requests to the backend
        Whitelist cors to only fetch to localhost:3000, 3001 and 3002 domains
        Create and namespace sessions controller

09/07/19:
    -Finish adding the ability to login and persist sessions.
    -Added ability to log out.
    -Impt commits of the day:
        Add Logout component
        Create fetch request to logout
        Add clearCurrentUser action
        Add NavBar component and class
        Create route and action for get_current_user
        Set sessions and cookies
        Add logout route and destroy action

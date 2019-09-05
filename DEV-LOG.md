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
        Properly namespaced and added class inrehitance to Users and Schools

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
    
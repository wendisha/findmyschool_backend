# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "alma", password: "password", name: "Alma")

# School.create(name: "Ps Ms 200 The Magnet School of Global Studies & Leadership", school_type: "Ppublic", district_id: 25, grade_range: "PK-8", address: "70-10 164th Street, Queens, NY 11365", website: "https://sites.google.com/globalstudiesandleadership.org/msgsl/home", rating_info: "some info!")

# Bookmark.create(user_id: 1, school_id: 1)

# User.create(username: "luna", password: "password", name: "Luna")
School.create(name: "Test School", school_type: "Public", district_id: 26, grade_range: "Test", address: "Test address", website: "Test Website", rating_info: "some info!")

Bookmark.create(user_id: 3, school_id: 1)
Bookmark.create(user_id: 3, school_id: 2)
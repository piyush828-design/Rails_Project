# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.destroy_all
Book.create!([{
  title: "Physics",
  author: "Pete Docter",
  description: "A.",
  read_on: 1.week.ago
},
{
  title: "Biology",
  author: "Pete Docter",
  description: "B.",
  read_on: 2.years.ago
},
{
 title: "English",
  author: "Pete Doct",
  description: "C.",
  read_on: 3.years.ago
}])
p "Created #{Book.count} Books"

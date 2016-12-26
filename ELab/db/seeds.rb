# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

College.create(name: "九州大学", address: "福岡県福岡市")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")
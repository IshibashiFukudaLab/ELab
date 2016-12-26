# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

College.create(name: "九州大学", address: "福岡県福岡市")

Undergraduate.create(name: "文学部", major: "電気情報工学科")
Undergraduate.create(name: "教育学部", major: "電気情報工学科")
Undergraduate.create(name: "法学部", major: "電気情報工学科")
Undergraduate.create(name: "経済学部", major: "電気情報工学科")
Undergraduate.create(name: "理学部", major: "電気情報工学科")
Undergraduate.create(name: "医学部", major: "電気情報工学科")
Undergraduate.create(name: "歯学部", major: "電気情報工学科")
Undergraduate.create(name: "薬学部", major: "電気情報工学科")
Undergraduate.create(name: "工学部", major: "電気情報工学科")
Undergraduate.create(name: "芸術学部", major: "電気情報工学科")
Undergraduate.create(name: "農学部", major: "電気情報工学科")
Undergraduate.create(name: "21世紀プログラム", major: "電気情報工学科")


Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

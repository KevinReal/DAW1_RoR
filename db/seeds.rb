# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create email: "test@test.com", password: 'test', password_confirmation: 'test'

articles = Article.create [
    {title: "Omega Rom", body: "mejor custom rom para android", published_at: '2014-05-20', subtitle: "trolololo", author: "pepesito"},
    {title: "Custom Rom", body: "personaliza tu android", published_at: Time.now, subtitle: "trolololo", author: "pepesito"},
    {title: "xda-developers", body: "foro de freaks", published_at: 20.months.ago},
    {title: "Borrador", body: "articulo en desarrollo", subtitle: "trolololo", author: "pepesito"}
  ]  


  

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create email: "test@test.com", password: 'test', password_confirmation: 'test', name:"test"

comment = Comment.create user_id:1, article_id:1, body:"queueueueu"

compes = Competition.create [
    {name: "Liga Endesa"},
    {name: "Copa del Rey"},
    {name: "NBA"},
    {name: "EuroLeague"},
    {name: "EuroCup"}
]

for i in 0..4
   compes[i].foto = Rails.root.join("imagenesSeed/liga#{i % 5 + 1}.png").open
   compes[i].save!
end

teams = Team.create [
    {name:"Equipo1"},
    {name:"Equipo2"},
    {name:"Equipo3"},
    {name:"Equipo4"}
]


for i in 0..3
    teams[i].foto = Rails.root.join("imagenesSeed/equipo#{i % 4 + 1}.png").open
    teams[i].save!
end

compes.each do |comp|
    comp.teams << teams
end


results = Result.create [
    {localPoints: 96, visitorPoints: 97, date: 1.days.ago, competition_id: 1, local_id: 1, visitor_id: 2, journey: 1},
    {localPoints: 80, visitorPoints: 73, date: 1.days.ago, competition_id: 1, local_id: 3, visitor_id: 4, journey: 1},
    {localPoints: 103, visitorPoints: 89, date: 1.days.ago, competition_id: 1, local_id: 4, visitor_id: 1, journey: 1},
    {localPoints: 104, visitorPoints: 118, date: 1.days.ago, competition_id: 1, local_id: 2, visitor_id: 3, journey: 1},

    {localPoints: 96, visitorPoints: 97, date: Time.now, competition_id: 1, local_id: 1, visitor_id: 2, journey: 2},
    {localPoints: 80, visitorPoints: 73, date: Time.now, competition_id: 1, local_id: 3, visitor_id: 4, journey: 2},
    {localPoints: 103, visitorPoints: 89, date: Time.now, competition_id: 1, local_id: 4, visitor_id: 1, journey: 2},
    {localPoints: 104, visitorPoints: 118, date: Time.now, competition_id: 1, local_id: 2, visitor_id: 3, journey: 2},

    {date: Time.now.tomorrow, competition_id: 1, local_id: 1, visitor_id: 2, journey: 3},
    {date: Time.now.tomorrow, competition_id: 1, local_id: 3, visitor_id: 4, journey: 3},
    {date: Time.now.tomorrow, competition_id: 1, local_id: 4, visitor_id: 1, journey: 3},
    {date: Time.now.tomorrow, competition_id: 1, local_id: 2, visitor_id: 3, journey: 3},


    {localPoints: 96, visitorPoints: 97, date: 1.days.ago, competition_id: 2, local_id: 1, visitor_id: 2, journey: 1},
    {localPoints: 80, visitorPoints: 73, date: 1.days.ago, competition_id: 2, local_id: 3, visitor_id: 4, journey: 1},
    {localPoints: 103, visitorPoints: 89, date: 1.days.ago, competition_id: 2, local_id: 4, visitor_id: 1, journey: 1},
    {localPoints: 104, visitorPoints: 118, date: 1.days.ago, competition_id: 2, local_id: 2, visitor_id: 3, journey: 1},

    {localPoints: 96, visitorPoints: 97, date: Time.now, competition_id: 2, local_id: 1, visitor_id: 2, journey: 2},
    {localPoints: 80, visitorPoints: 73, date: Time.now, competition_id: 2, local_id: 3, visitor_id: 4, journey: 2},
    {localPoints: 103, visitorPoints: 89, date: Time.now, competition_id: 2, local_id: 4, visitor_id: 1, journey: 2},
    {localPoints: 104, visitorPoints: 118, date: Time.now, competition_id: 2, local_id: 2, visitor_id: 3, journey: 2},

    {date: Time.now.tomorrow, competition_id: 2, local_id: 1, visitor_id: 2, journey: 3},
    {date: Time.now.tomorrow, competition_id: 2, local_id: 1, visitor_id: 2, journey: 3},
    {date: Time.now.tomorrow, competition_id: 2, local_id: 1, visitor_id: 2, journey: 3},
    {date: Time.now.tomorrow, competition_id: 2, local_id: 1, visitor_id: 2, journey: 3},


    {localPoints: 96, visitorPoints: 97, date: 1.days.ago, competition_id: 3, local_id: 1, visitor_id: 2, journey: 1},
    {localPoints: 80, visitorPoints: 73, date: 1.days.ago, competition_id: 3, local_id: 3, visitor_id: 4, journey: 1},
    {localPoints: 103, visitorPoints: 89, date: 1.days.ago, competition_id: 3, local_id: 4, visitor_id: 1, journey: 1},
    {localPoints: 104, visitorPoints: 118, date: 1.days.ago, competition_id: 3, local_id: 2, visitor_id: 3, journey: 1},

    {localPoints: 96, visitorPoints: 97, date: Time.now, competition_id: 3, local_id: 1, visitor_id: 2, journey: 2},
    {localPoints: 80, visitorPoints: 73, date: Time.now, competition_id: 3, local_id: 3, visitor_id: 4, journey: 2},
    {localPoints: 103, visitorPoints: 89, date: Time.now, competition_id: 3, local_id: 4, visitor_id: 1, journey: 2},
    {localPoints: 104, visitorPoints: 118, date: Time.now, competition_id: 3, local_id: 2, visitor_id: 3, journey: 2},

    {date: Time.now.tomorrow, competition_id: 3, local_id: 1, visitor_id: 2, journey: 3},
    {date: Time.now.tomorrow, competition_id: 3, local_id: 3, visitor_id: 4, journey: 3},
    {date: Time.now.tomorrow, competition_id: 3, local_id: 4, visitor_id: 1, journey: 3},
    {date: Time.now.tomorrow, competition_id: 3, local_id: 2, visitor_id: 3, journey: 3}

]


body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. 
        Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"

subtitle = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor."

articles = Article.create [
    {title: "Endesa Lorem en ipsum1", body: body, published_at: Time.now, subtitle: subtitle, author: "pepesito", competition_id: 1},
    {title: "Endesa Lorem en ipsum2", body: body, published_at: 1.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 1},
    {title: "Endesa Lorem en ipsum3", body: body, published_at: 2.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 1},
    {title: "Endesa Lorem en ipsum4", body: body, published_at: 3.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 1},
    {title: "Endesa Lorem en ipsum5", body: body, published_at: 4.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 1},

    {title: "CopaRey Lorem en ipsum1", body: body, published_at: Time.now, subtitle: subtitle, author: "pepesito", competition_id: 2},
    {title: "CopaRey Lorem en ipsum2", body: body, published_at: 1.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 2},
    {title: "CopaRey Lorem en ipsum3", body: body, published_at: 2.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 2},
    {title: "CopaRey Lorem en ipsum4", body: body, published_at: 3.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 2},
    {title: "CopaRey Lorem en ipsum5", body: body, published_at: 4.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 2},

    {title: "NBA Lorem en ipsum1", body: body, published_at: Time.now, subtitle: subtitle, author: "pepesito", competition_id: 3},
    {title: "NBA Lorem en ipsum2", body: body, published_at: 1.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 3},
    {title: "NBA Lorem en ipsum3", body: body, published_at: 2.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 3},
    {title: "NBA Lorem en ipsum4", body: body, published_at: 3.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 3},
    {title: "NBA Lorem en ipsum5", body: body, published_at: 4.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 3},

    {title: "EuroLeague Lorem en ipsum1", body: body, published_at: Time.now, subtitle: subtitle, author: "pepesito", competition_id: 4},
    {title: "EuroLeague Lorem en ipsum2", body: body, published_at: 1.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 4},
    {title: "EuroLeague Lorem en ipsum3", body: body, published_at: 2.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 4},
    {title: "EuroLeague Lorem en ipsum4", body: body, published_at: 3.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 4},
    {title: "EuroLeague Lorem en ipsum5", body: body, published_at: 4.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 4},

    {title: "EuroCup Lorem en ipsum1", body: body, published_at: Time.now, subtitle: subtitle, author: "pepesito", competition_id: 5},
    {title: "EuroCup Lorem en ipsum2", body: body, published_at: 1.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 5},
    {title: "EuroCup Lorem en ipsum3", body: body, published_at: 2.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 5},
    {title: "EuroCup Lorem en ipsum4", body: body, published_at: 3.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 5},
    {title: "EuroCup Lorem en ipsum5", body: body, published_at: 4.days.ago, subtitle: subtitle, author: "pepesito", competition_id: 5}

]  


articles = Article.all
for i in 0..24
    articles[i].foto = Rails.root.join("imagenesSeed/foto#{i % 5 + 1}.jpg").open
    articles[i].save!
end





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


teams = Team.create [
  {name: 'A'},
  {name: 'B'},
  {name: 'C'},
  {name: 'D'},
  ]

competitions = Competition.create [
    {name: "BNA"}
  ] 

players=Player.create [
	{name:"pepe1", number:1, team_id:1},
	{name:"pepe2", number:2, team_id:1},
	{name:"pepe3", number:3, team_id:2},
	{name:"pepe4", number:4, team_id:2},
	{name:"pepe5", number:5, team_id:3},
	{name:"pepe6", number:6, team_id:3},
	{name:"pepe7", number:7, team_id:4},
	{name:"pepe8", number:8, team_id:4}
]

playerstats = PlayerStat.create [
	{name:"PP", value:56, player_id:1},
	{name:"AP", value:3, player_id:1},
	{name:"RP", value:6, player_id:1},
	{name:"PP", value:1, player_id:2},
	{name:"AP", value:78, player_id:2},
	{name:"RP", value:9, player_id:2}
]

teamstats =TeamStat.create [
	{name:"PP", value:102, team_id:1},
	{name:"AP", value:50, team_id:1},
	{name:"RP", value:40, team_id:1},
	{name:"PP", value:99, team_id:2},
	{name:"AP", value:79, team_id:2},
	{name:"RP", value:70, team_id:2}
]

results = Result.create [
	{local_team_id:3, visitor_team_id:2, date:29-10-2015, competition_id:1, localPoints:32 ,visitorPoints:31},
	{local_team_id:1, visitor_team_id:2, date:01-02-2018, competition_id:1},
	{local_team_id:2, visitor_team_id:1, date:10-11-2017, competition_id:1, localPoints:200 ,visitorPoints:233}
]

articles = Article.create [
	{author:"juan43", published_at:"20-04-2016", body:"anb nino nonias ", title:"La liga cambia en enero", subtitle:"Siempre lo mismo", competition_id:1},
	{author:"pepe7", published_at:"30-10-2015", body:"askdasdhasioa asjkd hasai", title:"Son los peores", subtitle:"Qué malos son", result_id:1},
	{author:"pepe1", published_at:"10-11-2017", body:"blalalalalalallalalala", title:"Son los mejores", subtitle:"Qué buenos son", team_id:1}
]

comments = Comment.create [
	{author:"panchito" ,published_at:22-04-2016, body:"no me gushta", article_id:1},
	{author:"fulanita" ,published_at:31-10-2015, body:"es mentira", article_id:2},
	{author:"jorgito" ,published_at:11-11-2017, body:"es verdad", article_id:3}
]



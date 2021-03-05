# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new(email: "joao.brufatto@gmail.com", 
             password: Devise.friendly_token[0, 20], 
             nickname: "jows", 
             view_count: 1074, 
             image: "https://static-cdn.jtvnw.net/jtv_user_pictures/0f7bc5c3-304f-479d-808e-b8765cfe432b-profile_image-300x300.png", 
             admin: true,
             provider: "twitch",
             uid: "38581881")
u.save!

a = User.new(email: "kayo.richard2000@gmail.com", 
             password: Devise.friendly_token[0, 20], 
             nickname: "blinkusher", 
             view_count: 500, 
             image: "https://static-cdn.jtvnw.net/user-default-pictures-uv/ebb84563-db81-4b9c-8940-64ed33ccfc7b-profile_image-300x300.png", 
             admin: true,
             provider: "twitch",
             uid: "146693571")
a.save!

streamelementsBot = Bot.new(name: "Stream Elements", photo: "https://i.imgur.com/rEJ8giw.png", user_id: u.id)
streamelementsBot.save!
mooBot = Bot.new(name: "Moobot", photo: "https://i.imgur.com/InmzpSl.png", user_id: u.id)
mooBot.save!
nightBot = Bot.new(name: "Nightbot", photo: "https://i.imgur.com/hWdObQT.jpg", user_id: u.id)
nightBot.save!
raidshieldBot = Bot.new(name: "Raid Shield Bot", photo: "https://i.imgur.com/OFVQPgL.jpg", user_id: u.id)
raidshieldBot.save!

streamelementsConfig = Config.create!(name: "!eloLoL", 
                                   content: "$(leagueoflegends 'nick aqui' br)", 
                               description: "Mostra o elo no LoL do jogador definido",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!setgame", 
                                   content: '${setgame "<game>"}', 
                               description: "Define o <game> da live. As aspas são necessárias se a categoria contiver espaços",
                                    bot_id: streamelementsBot.id)
mooBotConfig = Config.create!(name: "!Title", 
                           content: "Acesse o seu Dashboard em https://moo.bot/ , procure 'Built-in commands' e ative o !Title", 
                       description: "Você e seus moderadores poderão mudar o título da transmissão",
                            bot_id: mooBot.id)
nightBotConfig = Config.create!(name: "!game", 
                             content: "Acesse o seu dashboard em https://nightbot.tv/commands/default e ative o comando clicando em 'Enable'", 
                         description: "Irá retornar o jogo que o streamer está transmitindo",
                              bot_id: nightBot.id)
raidshieldBotConfig = Config.create!(name: "!rsb check", 
                                  content: "Para ativar este comando, é necessário ter entrado em contato com a equipe de suporte RaidShield", 
                              description: "Irá retornar se o bot está atualmente ativo no canal ou não",
                                   bot_id: raidshieldBot.id)
raidshieldBotConfig = Config.create!(name: "!rsb equipe", 
                                  content: "Para ativar este comando, é necessário ter entrado em contato com a equipe de suporte RaidShield", 
                              description: "Irá retornar a equipe responsável pela manutenção do RaidShield",
                                   bot_id: raidshieldBot.id)
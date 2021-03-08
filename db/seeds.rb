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

# --------------
# BOTS
# --------------
streamelementsBot = Bot.new(name: "Stream Elements", 
                           photo: "https://i.imgur.com/rEJ8giw.png", 
                    introduction: "StreamElements é a plataforma definitiva para streamers. 
                                   Possui uma potência de ferramentas interconectadas feitas para aprimorar sua stream. 
                                   StreamElements está na nuvem, então sua configuração de stream pode ser acessada de qualquer lugar ou qualquer dispositivo.", 
                         user_id: u.id)
streamelementsBot.save!
priestBot = Bot.new(name: "Priestbot", 
                   photo: "https://i.imgur.com/JyfhY1A.jpg", 
            introduction: "O PriestBot é o chatbot brasileiro de moderação desenvolvido para ser usado na Twitch.O suporte é feito tanto pela Twitch quanto pelo Discord.
                           Você precisa atender a pelo menos UM dos dois requisitos para a utilização deste bot. 
                           1- Média de 3+ viewers nos últimos 7 dias. Ter no mínimo 6 streams em 14 dias (sem reruns e testes).", 
                 user_id: u.id)
priestBot.save!
nightBot = Bot.new(name: "Nightbot", 
                  photo: "https://i.imgur.com/hWdObQT.jpg", 
           introduction: "Nightbot é um bot de bate-papo para Twitch e YouTube que permite automatizar o bate-papo de sua transmissão ao vivo com moderação e novos recursos,
                          permitindo que você passe mais tempo entretendo seus espectadores.",
                user_id: u.id)
nightBot.save!
raidshieldBot = Bot.new(name: "Raid Shield Bot", 
                       photo: "https://i.imgur.com/OFVQPgL.jpg", 
								introduction: "O raidshieldbot é uma ferramenta criada com o objetivo de proteger e monitorar canais da Twitch.tv. 
															 O monitoramento é realizado com base em dados pré-existentes. 
															 O bot automaticamente bane qualquer usuário que possa ter envolvimento com os ataques nocivos.",
										 user_id: u.id)
raidshieldBot.save!
mooBot = Bot.new(name: "Moobot", 
                photo: "https://i.imgur.com/InmzpSl.png",
         introduction: "Com apenas alguns cliques, o Moobot pode começar a automatizar várias tarefas tediosas para você, 
                        removendo comportamentos indesejáveis ​​no chat ​​e incentivando o envolvimento e a lealdade de sua comunidade no Twitch.",
              user_id: u.id)
mooBot.save!
# --------------
# CONFIGS
# --------------

# STREAMELEMENTS
streamelementsConfig = Config.create!(name: "!eloLoL", 
                                   content: "$(leagueoflegends 'nick aqui' br)", 
                               description: "Mostra o elo no LoL do jogador definido",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!setgame", 
                                   content: '${setgame "<game>"}', 
                               description: "Define o <game> da live. As aspas são necessárias se a categoria contiver espaços",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!commands", 
                                   content: "$(https://StreamElements.com/${channel.alias}/commands)", 
                               description: "Você pode encontrar uma lista de todos os comandos aqui",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!followage", 
                                   content: "${user1} tem seguido ${user2} por 1 ano 5 meses 27 dias 1 hora", 
                               description: "Permite ver o tempo no qual você é seguidor do canal",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!points", 
                                   content: "$(user) tem $(user.points) $(pointsname) e está classificado em $(user.points_rank) na tabela de classificação", 
                               description: "Este comando retorna o número de pontos do usuário na loja do bot StreamElements",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!song", 
                                   content: "Música atual: harambe.waw - GANHAMOS ZULUL [2m3s] solicitado por nuuls https://youtu.be/9OG-Qr1qAe4", 
                               description: "Este comando retorna a música atual e o usuário que adicionou a playlist",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!skip", 
                                   content: "Pular a música atual", 
                               description: "Este comando permite um moderador pular a música atual",
                                    bot_id: streamelementsBot.id)
streamelementsConfig = Config.create!(name: "!songqueue", 
                                   content: "Você pode ver a fila do songrequest aqui https://StreamElements.com/${channel.alias}/songrequest", 
                               description: "Este comando permite um moderador ver a playlist de músicas",
                                    bot_id: streamelementsBot.id)

# MOOBOT
mooBotConfig = Config.create!(name: "!Title", 
                           content: "Acesse o seu Dashboard em https://moo.bot/ , procure 'Built-in commands' e ative o !Title", 
                       description: "Você e seus moderadores poderão mudar o título da transmissão",
                            bot_id: mooBot.id)

# NIGHTBOT
nightBotConfig = Config.create!(name: "!game", 
                             content: "Acesse o seu dashboard em https://nightbot.tv/commands/default e ative o comando clicando em 'Enable'", 
                         description: "Irá retornar o jogo que o streamer está transmitindo",
                              bot_id: nightBot.id)
nightBotConfig = Config.create!(name: "!comercial 30", 
                             content: "Iniciará um comercial com duração de 30 segundos", 
                         description: "Comando irá iniciar um comercial com a duração desejada",
                              bot_id: nightBot.id)
nightBotConfig = Config.create!(name: "!title", 
                             content: "!título 'título' para atualizar o título da live", 
                         description: "Comando permite que um moderador modifique o título da transmissão",
                              bot_id: nightBot.id)

# RAIDSHIELDBOT
raidshieldBotConfig = Config.create!(name: "!rsb check", 
                                  content: "Para ativar este comando, é necessário ter entrado em contato com a equipe de suporte RaidShield", 
                              description: "Irá retornar se o bot está atualmente ativo no canal ou não",
                                   bot_id: raidshieldBot.id)
raidshieldBotConfig = Config.create!(name: "!rsb equipe", 
                                  content: "Para ativar este comando, é necessário ter entrado em contato com a equipe de suporte RaidShield", 
                              description: "Irá retornar a equipe responsável pela manutenção do RaidShield",
                                   bot_id: raidshieldBot.id)

# PRIESTBOT
priestBotConfig = Config.create!(name: "!filter caule <ON ou OFF>", 
                              content: "Ativa ou desativa o filtro de caules", 
                          description: "Caules são mensagens com caracteres específicos que poluem o chat massivamente",
                               bot_id: priestBot.id)
priestBotConfig = Config.create!(name: "!filter symbols <ON ou OFF>", 
                              content: "Ativa ou desativa o filtro de símbolo no canal", 
                          description: "Pessoas que enviarem símbolos ou caracteres especiais serão bloqueadas do chat por 10s, e na próxima vez por 600s",
                               bot_id: priestBot.id)
priestBotConfig = Config.create!(name: "!set subscriberalerts <ON ou OFF>", 
                              content: "Ativa ou desativa o agradecimento de sub", 
                          description: "Quando um usuário se inscrever no canal, o PriestBot enviará uma mensagem no chat agradecendo-o.",
                               bot_id: priestBot.id)
priestBotConfig = Config.create!(name: "+s", 
                              content: "Ativa o 'modo exclusivo para inscritos'", 
                          description: "Apenas usuários inscritos no canal serão permitidos a enviar mensagens no chat",
                               bot_id: priestBot.id)

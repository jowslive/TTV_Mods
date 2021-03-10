# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# --------------
# LIMPANDO TUDO
# --------------
Favorite.destroy_all
Config.destroy_all
Bot.destroy_all
User.destroy_all

# --------------
# USUÁRIOS
# --------------
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
               rich_introduction: "StreamElements é a plataforma para streamers e possui uma variedade de ferramentas interconectadas feitas para aprimorar sua stream. 
                                   <br> Este bot está na nuvem, então sua configuração da stream pode ser acessada de qualquer lugar ou qualquer dispositivo. 
																	 <br> <br> Para adicionar o bot ao seu canal: 
																	 <h6> - Acesse o site do <a href='https://streamelements.com/' target='_blank'>StreamElements</a>, faça o login com a Twitch e após seguir os passos iniciais da plataforma você verá um botão <b>'ENTRAR NO CANAL'</b> no canto direito da tela.</h6>
																	 <br> Para adicionar comandos personalizados ao seu canal: 
																	 <h6> - Acesse o <a href='https://streamelements.com/dashboard/bot-commands/custom-commands' target='_blank'>Dashboard</a>, clique no botão <b>'ADICIONAR NOVO COMANDO'</b> e preencha os dados.</h6>", 
							 documentation_url: "https://support.streamelements.com/hc/en-us/articles/115000373852-Chat-Commands-",
                         user_id: u.id)
streamelementsBot.save!
priestBot = Bot.new(name: "Priestbot", 
                   photo: "https://i.imgur.com/JyfhY1A.jpg", 
       rich_introduction: "O PriestBot é um chatbot de moderação brasileiro desenvolvido para ser usado na Twitch. O suporte deste bot é feito tanto pela Twitch quanto pelo Discord.
                           <br> <br> <b> Você precisa atender a pelo menos UM dos dois requisitos para a utilização deste bot: </b>
                           <br> - Média de 3+ viewers nos últimos 7 dias ou ter no mínimo 6 streams em 14 dias (sem reruns e testes).
													 <br> <br> Para adicionar o bot ao seu canal: 
													 <h6> - Entre no <a href='https://bit.ly/PriestBotDiscord' target='_blank'>Discord do Priestbot</a> e envie uma mensagem na sala de texto <b>#solicitação-bot</b> seguindo as instruções fixadas no topo do canal.</h6>
													 <br> Para adicionar comandos personalizados ao seu canal: 
													 <h6> - No chat da sua live, digite !command add nome_comando frase_resposta. Exemplo: !command add Oi Olá, (_USER_).</h6>", 
			 documentation_url: "https://docs.google.com/spreadsheets/d/1-C0_ddX3d8WawuIhFItaxQzOY7fCfkYnazZwYrQS5vY/edit#gid=634347005 </h6>",
                 user_id: u.id)
priestBot.save!
nightBot = Bot.new(name: "Nightbot", 
                  photo: "https://i.imgur.com/hWdObQT.jpg", 
      rich_introduction: "Nightbot é um bot de bate-papo para Twitch e YouTube que permite automatizar o bate-papo de sua transmissão ao vivo com moderação e novos recursos,
                          permitindo que você passe mais tempo entretendo seus espectadores.
													<br> <br> Para adicionar o bot ao seu canal: 
													<h6> - Acesse o site do <a href='https://nightbot.tv/' target='_blank'>NightBot</a>, faça o login com a Twitch e clique no botão 'Join Channel' encontrado no topo do lado direito. </h6>
													<br> Para adicionar comandos personalizados ao seu canal:
													<h6> - Acesse o <a href='https://nightbot.tv/commands/custom' target='_blank'>Dashboard</a>, clique no botão 'Add Command' e preencha os dados.</h6>",
			documentation_url: "https://docs.nightbot.tv/commands/commandlist",
                user_id: u.id)
nightBot.save!
raidshieldBot = Bot.new(name: "Raid Shield Bot", 
                       photo: "https://i.imgur.com/OFVQPgL.jpg", 
		       rich_introduction: "O RaidShieldBot é uma ferramenta criada com o objetivo de proteger e monitorar canais da Twitch.tv. <br>
															 O monitoramento é realizado com base em dados pré-existentes. <br>
															 O bot automaticamente bane qualquer usuário que possa ter envolvimento com os ataques nocivos.
															 <br> <br> Para adicionar o bot ao seu canal:
															 <h6> - Acesse o site do <a href='https://docs.google.com/forms/d/e/1FAIpQLSc376IYSKjGNtRyTBxDaasL9ZA8OqgvVmMkw17s_7qoSGWiAw/viewform' target='_blank'>RaidShieldBot</a> e preencha o formulário. </h6>
															 <br> Para adicionar comandos personalizados ao seu canal:
															 <h6> - Não é possível adicionar comandos personalizados neste bot.</h6>",
					 documentation_url: "https://docs.google.com/forms/d/e/1FAIpQLSc376IYSKjGNtRyTBxDaasL9ZA8OqgvVmMkw17s_7qoSGWiAw/viewform",
										 user_id: u.id)
raidshieldBot.save!
mooBot = Bot.new(name: "Moobot", 
                photo: "https://i.imgur.com/InmzpSl.png",
    rich_introduction: "Com apenas alguns cliques, o Moobot pode começar a automatizar várias tarefas tediosas para você, removendo comportamentos indesejáveis ​​no chat ​​e incentivando o envolvimento e a lealdade de sua comunidade no Twitch.
												<br> <br> Para adicionar o bot ao seu canal: 
												<h6> - Acesse o site do <a href='https://moo.bot/' target='_blank'>Moobot</a>, faça o login com a Twitch e clique no ícone <i class='fas fa-lg fa-fw fa-magic'></i>. </h6>
												<br> Para adicionar comandos personalizados ao seu canal: 
												<h6> - Acesse o <a href='https://moo.bot/' target='_blank'>Dashboard</a>, clique na aba 'Commands', depois no item da lista chamado 'Custom Commands' e preencha os dados.</h6>",
    documentation_url: "https://moo.bot/docs/custom-twitch-bot-chat-commands/",
              user_id: u.id)
mooBot.save!

# --------------
# CONFIGS
# --------------

# STREAMELEMENTS
streamelementsConfig = Config.create!(name: "!accept", 
                                   content: "Aceite um pedido de duelo de outro chatter", 
                               description: "Este comando permite você aceitar o duelo com outro usuário no chat",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!accountage", 
                                   content: "$ {user} foi criado 1 ano 5 meses 27 dias 1 hora atrás", 
                               description: "Este comando permite você saber há quanto tempo sua conta foi criada",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!bet", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite você fazer uma aposta",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!cancelduel", 
                                   content: "Cancelar um pedido de duelo para outro chatter", 
                               description: "Este comando permite você cancelar um pedido de duelo com outro usuário no chat",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!chatstats", 
                                   content: "https://stats.StreamElements.com/c/$(channel)", 
                               description: "Este comando mostra estatisticas do chat no canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!commands", 
                                   content: "https://StreamElements.com/${channel.alias}/commands", 
                               description: "Este comando permite você ver a lista de comandos naquele canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!contest", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando mostra a posta atual",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!deny", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite negar um pedido de duelo de outro chatter",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!duel", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite duelar outro chatter para ganhar pontos",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!emotes <ffz ou bttv ou update>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite mostrar a lista de emotes da plataforma bttv ou ffz adicionados. Após adicionar um novo emote, utilize '!emotes update'",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!enter", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite o usuário a entrar em um sorteio, caso exista",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!followage", 
                                   content: "${user1} has been following ${user2} for 1 year 5 months 27 days 1 hour", 
                               description: "Este comando permite o usuário ver há quanto tempo é seguidor daquele streamer",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!giveaway", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite ver o sorteio atualmente ativo",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!items", 
                                   content: "https://StreamElements.com/${channel.alias}/store", 
                               description: "Este comando permite ver os itens disponíveis na loja do canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!leaderboard", 
                                   content: "Verifique o $(pointsname) entre os melhores aqui https://StreamElements.com/${channel.alias}/leaderboard", 
                               description: "Este comando permite ver o ranking de pontos do canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!next", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite ver a próxima música",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!points", 
                                   content: "${user} tem ${user.points} ${pointsname} e é classificado $(user.points_rank)", 
                               description: "Este comando permite ver quantos pontos você possui e qual o seu ranking naquele canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!quote <add ou remove>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite mostrar uma citação aleatória ou pesquisar por #ID ou texto",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!redeem", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite o usuário resgatar um item da loja do bot no canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!rename", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite mover os pontos do canal para o novo nome após o usuário mudar de nome",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!roulette", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite apostar uma quantia de pontos no canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!slots", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite jogar na máquina de caça-níqueis",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!song", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite ver a música atual e quem a solicitou",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!songrequest", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite solicitar uma música por id do youtube, url ou título do vídeo",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!subs", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando mostra a contagens de subs que aquele canal possui",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!timeout", 
                                   content: "/timeout ${user.name} 30 ${sender}", 
                               description: "Este comando mostra o tempo de restrição de um usuário no chat",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!tip", 
                                   content: "https://StreamElements.com/${channel.alias}/tip", 
                               description: "Este comando permite o usuário dar dicas para o canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!top <points ou alltime ou online ou offline>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite ver o topo da tabela de classificação daquele canal",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!uptime", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite ver há quanto tempo aquele canal está em transmissão",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!vanish", 
                                   content: "/timeout ${sender.name} 1", 
                               description: "Este comando permite apagar todas as mensagens anteriores daquele usuário",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!voteskip", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite votar para pular a música atual",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!watchtime", 
                                   content: "${user} gastou ${user.time_online | '0 segundos'} assistindo ${channel}", 
                               description: "Este comando permite ver o temp no qual o usuário está assistindo aquela transmissão",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!when", 
                                   content: "'My Summer Car - Radio Chill' está em 2º na fila e reproduzindo 2 minutos e 3 segundos", 
                               description: "Este comando permite ver em qual posição a música está e qaunto tempo falta para ela ser reproduzida",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!wrongsong", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Este comando permite o usuário remover sua última música da fila",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!bingo <bttv ou ffz ou twitch ou all ou cancel>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite o moderador jogar um jogo de emote-bingo",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!closestore", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador desativar todos os itens da loja",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!command <add ou remove ou edit ou alias ou options ou show>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador adicionar, editar e excluir comandos de chat",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!disablesfx", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador desativar todos os itens de efeitos sonoros na loja",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!editcounter", 
                                   content: "Edite um contador ${count <name>} / ${getcount <name>} personalizado", 
                               description: "Apenas para moderadores. Este comando permite ao moderador editar o contador de um comando existente",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!enablesfx", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador ativar todos os itens de efeitos sonoros na loja",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!openstore", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador ativar todos os itens da loja",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!pause", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador pausar a reprodução dos pedidos de músicas",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!permit", 
                                   content: "!permit <nome_do_usuário>", 
                               description: "Apenas para moderadores. Este comando permite ao moderador liberar o envio de links no chat para um usuário",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!ping", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador ver quanto tempo o streamelements está em execução",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!play", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador retornar a reprodução de pedidos de músicas",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!removesong", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador remover as músicas de um usuário da lista de reprodução",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!skip", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador pular a música atual",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!songqueue", 
                                   content: "https://StreamElements.com/${channel.alias}/songrequest", 
                               description: "Apenas para moderadores. Este comando permite ao moderador ver a lista de músicas",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!srclear", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para moderadores. Este comando permite ao moderador limpar toda a fila de solicitação de músicas",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!addpoints", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador dar pontos para os espectadores do chat",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!bot <mute ou unmute ou part>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador silenciar, reativar ou remover o bot",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!hypecup clear", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador controlar o HypeCup",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!level <nome_do_usuário>", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador definir um nível de acesso de visualizadores",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!module", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador habilitar ou desabilitar módulos via chat",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!setgame", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador atualizar o jogo que está sendo transmitido",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!setpoints", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador definir os pontos de um espectador",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!settitle", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador atualizar o título da transmissão",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!volume", 
                                   content: "Comando padrão, não possui conteúdo e não é possível customizá-lo", 
                               description: "Apenas para super moderadores. Este comando permite ao super moderador alterar o volume do pedido de música",
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

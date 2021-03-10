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

streamelementsConfig = Config.create!(name: "!counter_name", 
                                   content: "$(count <counter_name>)", 
                               description: "Comando personalizado que mostra quantas vezes o mesmo foi chamado. Exemplo: O usuário manda um !susto após o streamer levar um susto e o bot retornará o n° de vezes que o streamer já levou um susto  - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!eloLoL", 
                                   content: "$(leagueoflegends 'nickname do lol' br)", 
                               description: "Comando personalizado que retornará no chat o elo do streamer no jogo League of Legends - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!bttv", 
                                   content: "──────────────────────────────── BTTV no PC => https://imgur.com/a/gJFgC6F ──────────────────────────────── BTTV no CEL. => https://imgur.com/a/muEwNMK", 
                               description: "Comando personalizado que retornará no chat como instalar a extensão bttv - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!videonovo", 
                                   content: "──────────────────────────────── ${customapi.https://decapi.me/youtube/latest_video?id=ID_DO_CANAL_DO_YOUTUBE_AQUI} ────────────────────────────────", 
                               description: "Comando personalizado que retornará no chat o último vídeo upado pelo streamer no Youtube, lembre de alterar o ID no final da URL - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!subsonly", 
                                   content: "/subscribers", 
                               description: "Comando personalizado que colocará o chat em modo somente Subscribers - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!subsonlyoff", 
                                   content: "/subscribersoff", 
                               description: "Comando personalizado que irá tirar o chat do modo somente Subscribers - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!elo", 
                                   content: "Conteúdo que pode variar, exemplo: Comandos disponíveis para elo: !eloJogo1, !eloJogo2 e !eloJogo3", 
                               description: "Comando personalizado que irá mostrar no chat todos os comandos de elo previamente definidos. Caso você quiser uma resposta automática, procure uma API que funcione igual a do comando !eloLOL - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)
                                    
streamelementsConfig = Config.create!(name: "!social", 
                                   content: "Minhas redes sociais: https://linktr.ee/nick_name_aqui", 
                               description: "Comando personalizado que irá mostrar no chat todas as redes sociais do Streamer, sendo necessário o mesmo ter criado o seu próprio 'Linktree' - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)                                       

streamelementsConfig = Config.create!(name: "!discord", 
                                   content: "Meu discord: link_de_convite_aqui", 
                               description: "Comando personalizado que irá mostrar no chat um link de convite para o usuário entrar no servidor do Discord - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)

streamelementsConfig = Config.create!(name: "!insta ou !instagram", 
                                   content: "Meu instagram: link_do_insta_aqui", 
                               description: "Comando personalizado que irá mostrar no chat um link de perfil do Streamer no Instagram - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)
                                    
streamelementsConfig = Config.create!(name: "!twitter", 
                                   content: "Meu twitter: link_do_twitter_aqui", 
                               description: "Comando personalizado que irá mostrar no chat um link de perfil do Streamer no Twitter - deve ser configurado no Dashboard",
                                    bot_id: streamelementsBot.id)                                    

# MOOBOT
mooBotConfig = Config.create!(name: "!Title", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Title", 
                       description: "Este comando permite o streamer e seus moderadores mudarem o título da transmissão no chat do Streamer",
                            bot_id: mooBot.id)

mooBotConfig = Config.create!(name: "!Addcommand nome_do_comando resposta_do_comando", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Addcommand", 
                       description: "Este comando permite o streamer e seus moderadores adicionarem novos comandos no chat do Streamer",
                            bot_id: mooBot.id)

mooBotConfig = Config.create!(name: "!Commands", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Commands", 
                       description: "Este comando permite o streamer e seus moderadores verem todos os comandos disponíveis do MooBot no chat do Streamer",
                            bot_id: mooBot.id)

mooBotConfig = Config.create!(name: "!Commercial tempo_aqui", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Commercial", 
                       description: "Este comando permite o streamer e seus moderadores passarem um comercial(ad) no chat do Streamer",
                            bot_id: mooBot.id)

mooBotConfig = Config.create!(name: "!Editcommand nome_do_comando nova_resposta_do_comando", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Editcommand", 
                       description: "Este comando permite o streamer e seus moderadores editarem certos comandos no chat do Streamer",
                            bot_id: mooBot.id)                            

mooBotConfig = Config.create!(name: "!Game nome_do_jogo", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Game", 
                       description: "Este comando permite o streamer e seus moderadores editarem a categoria(ou jogo) da Stream no chat do Streamer",
                            bot_id: mooBot.id)                              

mooBotConfig = Config.create!(name: "!Permit usuário_aqui", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Permit", 
                       description: "Este comando permite o streamer e seus moderadores à deixaram um usuário específico enviar links no chat do Streamer",
                            bot_id: mooBot.id)

mooBotConfig = Config.create!(name: "!Seppuku", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Seppuku", 
                       description: "Este comando permite qualquer usuário do Chat ter um chance de levar um TimeOut no chat do Streamer",
                            bot_id: mooBot.id)

mooBotConfig = Config.create!(name: "!Uptime", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Uptime", 
                       description: "Este comando permite qualquer usuário do Chat ver o tempo de live no chat do Streamer",
                            bot_id: mooBot.id)        
                            
mooBotConfig = Config.create!(name: "!Watchtime", 
                           content: "Acesse o seu Dashboard do MooBot, clique no item 'Commands' do menu lateral esquerdo, procure 'Overview list' e ative o !Watchtime", 
                       description: "Este comando permite qualquer usuário do Chat ver seu respectivo tempo assistido no canal do Streamer.",
                            bot_id: mooBot.id)                               

# NIGHTBOT
nightBotConfig = Config.create!(name: "!commands", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!commands' clicando em 'Enable'", 
                         description: "Este comando irá retornar uma lista de comandos disponíveis no canal. 
                                       Se o usuário for um moderador, o mesmo poderá editar comandos e adicionar novos usando !commands <add ou edit> <resposta>",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!commercial número_aqui", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!commercial' clicando em 'Enable'", 
                         description: "Este comando irá iniciar um comercial com a duração desejada - Apenas para moderadores",
                              bot_id: nightBot.id)       

nightBotConfig = Config.create!(name: "!filters nome_do_filtro <enable ou disable>", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!filters' clicando em 'Enable'", 
                         description: "Este comando permite aos moderadores habilitarem filtros como 'caps', 'emotes', 'links' e 'symbols' para que as mensagens no chat sejam automaticamente filtradas.",
                              bot_id: nightBot.id)                              
                                                     
nightBotConfig = Config.create!(name: "!game", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!game' clicando em 'Enable'", 
                         description: "Este comando irá retornar o jogo que o streamer está transmitindo. 
                                       Se o usuário for um moderador, o mesmo poderá alterar o jogo passando um segundo parâmetro após o game",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!marker", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!marker' clicando em 'Enable'", 
                         description: "Este comando permite ao moderador criar um marcador de fluxo em seu canal do Twitch para retornar facilmente mais tarde",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!poll", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!poll' clicando em 'Enable'", 
                         description: "Este comando permite criar uma enquete no 'strawpoll'",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!regulars", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!regulars' clicando em 'Enable'", 
                         description: "Este comando permite que moderadores gerenciem canais regulares",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!songs", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!songs' clicando em 'Enable'", 
                         description: "Este comando permite aos usuários no chat a capacidade de solicitar músicas.",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!tags", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!tags' clicando em 'Enable'", 
                         description: "Este comando permite editar as tags da sua stream para melhorar a descoberta do seu canal",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!title", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!title' clicando em 'Enable'", 
                         description: "Este comando irá retornar o título da live do Streamer. 
                                       Se o usuário for um moderador, o mesmo poderá alterar o título da live",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!winner", 
                             content: "Acesse o seu Dashboard do NightBot e ative o comando '!winner' clicando em 'Enable'", 
                         description: "Este comando escolhe um usuário aleatório no chat como vencedor",
                              bot_id: nightBot.id)

nightBotConfig = Config.create!(name: "!clip", 
                             content: "$(urlfetch https://vxrl.xyz/api/twitch/clips/clip?user_access_token=token_here&channel_id=channel_here)", 
                         description: "Para conseguir seu token para clipar, acesse o site: https://vxrl.xyz/commands/clip , digite seu username e dê a permissão.
                                       Após ter feito o passo acima, acesse o seu Dashboard do NightBot, vá em 'Commands', depois em 'Custom' e clique no botão 'Add Command'. 
                                       Siga as instruções do site vxrl o/",
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
priestBotConfig = Config.create!(name: "!commands", 
                              content: "Lista os comandos disponíveis", 
                          description: "Este comando permite listar todos os comandos disponíveis",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!uptime", 
                              content: "Mostra a duração da live atual", 
                          description: "Este comando permite mostrar a duração da live atual",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!viewers", 
                              content: "Mostra a quantidade de pessoas assistindo", 
                          description: "Este comando permite visualizar a quantidade de espectadores daquela live",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!followage", 
                              content: "Mostra há quanto tempo segue o canal", 
                          description: "Este comando permite ver há quanto tempo o usuário é seguidor do canal",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!roleta", 
                              content: "Arrisque sua sorte", 
                          description: "Este comando permite o usuário apostar",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!rank <invocador>", 
                              content: "Mostra o elo de um invocador no LoL", 
                          description: "Este comando permite o usuário ver o elo de um outro usuário no LoL",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!clear", 
                              content: "Apaga todas as mensagens do chat", 
                          description: "Este comando permite apagar todas as mensagens digitadas do chat",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!points <usuário>", 
                              content: "Mostra quantos pontos um usuário possui no canal", 
                          description: "Este comando permite ao usuário ver quantos pontos ele possui no canal",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!love <usuário>", 
                              content: "Mostra um valor de afinidade entre 2 pessoas", 
                          description: "Este comando permite ao usuário ver um número aleatório de afinidade com outra pessoa",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!music", 
                              content: "Mostra a música que está tocando", 
                          description: "Este comando permite ao usuário ver qual a música que está sendo reproduzida no momento",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!steam", 
                              content: "Mostra a conta da steam configurada", 
                          description: "Este comando permite ao usuário ver a conta da steam configurada",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!game", 
                              content: "Mostra o jogo da live", 
                          description: "Este comando permite ao usuário ver qual jogo está sendo transmitido naquele momento",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!status", 
                              content: "Mostra o título da live", 
                          description: "Este comando permite ao usuário ver o título da live naquele momento",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!random coin", 
                              content: "Jogue uma moeda pro ar", 
                          description: "Este comando retorna o lado de uma moeda, cara ou coroa",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!ping", 
                              content: "Testa o tempo de resposta do bot", 
                          description: "Este comando permite testar o tempo de resposta do PriestBot",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!follow <canal>", 
                              content: "Divulga o canal citado", 
                          description: "Este comando permite divulgar o canal citado no momento do uso do comando",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!follow <canal>", 
                              content: "Divulga o canal citado",  
                          description: "Este comando permite divulgar o canal citado no momento do uso do comando (não utilizar o '@' no nome da pessoa)",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!command add <comando> <frase>", 
                              content: "Adiciona comando ao bot ou edita um já existente", 
                          description: "Este comando permite ao moderador adicionar um novo comando ou editar um comando já existente",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!command delete <comando>", 
                              content: "Remove comando do bot", 
                          description: "Este comando permite ao moderador remover um comando existente no bot",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!command restrict <comando> <grupo>", 
                              content: "Restringe comandos a um grupo de pessoas", 
                          description: "Este comando permite ao moderador restringir comandos a um grupo específico de usuários",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!bothelp", 
                              content: "Informa os links do Discord e Manual do Bot.", 
                          description: "Este comando permite ao moderador ver informações sobre o bot",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!commercial <segundos>", 
                              content: "Passa um comercial", 
                          description: "Este comando permite ao moderador passar um comercial durante a transmissão",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!owner add <usuário>", 
                              content: "Permite um usuário configurar o bot", 
                          description: "Este comando permite ao moderador liberar um usuário a configurar o bot (não usar o '@' do usuário)",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!owner delete <usuário>", 
                              content: "Remove a permissão de configurar o bot do usuário", 
                          description: "Este comando permite ao moderador remover a licença para um usuário configurar o bot (não usar o '@' do usuário)",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!owner list", 
                              content: "Lista os usuários que podem configurar o bot", 
                          description: "Este comando permite ao moderador ver a lista de quem tem permissão para configurar o bot",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!game <jogo>", 
                              content: "Altera o jogo da live", 
                          description: "Este comando permite ao moderador alterar o jogo que está sendo transmitido",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!status <título>", 
                              content: "Altera o título da live", 
                          description: "Este comando permite ao moderador alterar o título da live",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!repeat add <comando> <tempo em segundos> <intervalo de msgs>", 
                              content: "Coloca um comando para repetir no chat", 
                          description: "Este comando permite ao moderador configurar um temporizador para disparar mensagens no chat",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!repeat delete <comando>", 
                              content: "Remove a repetição de um comando", 
                          description: "Este comando permite ao moderador remover um temporizador que dispara mensagens no chat",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!repeat <on ou off> <comando>", 
                              content: "Ativa ou desativa a repetição de um comando", 
                          description: "Este comando permite ao moderador ativar ou desativar a repetição de um comando previamente configurado",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!repeat list", 
                              content: "Lista os comandos que estão em repetição", 
                          description: "Este comando permite ao moderador ver a lista de comandos de repetição previamente configurados",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!autoreply add <frase> <resposta>", 
                              content: "Adiciona uma resposta automática a alguma frase", 
                          description: "Este comando permite ao moderador adicionar uma frase como resposta automática",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!autoreply add <frase> <resposta>", 
                              content: "Adiciona uma resposta automática a alguma frase", 
                          description: "Este comando permite ao moderador adicionar uma frase como resposta automática",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!autoreply list", 
                              content: "Lista as respostas e seus respectivos números", 
                          description: "Este comando permite ao moderador ver a lista de respostas automáticas",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!autoreply delete <número da resposta>", 
                              content: "Remove uma resposta automática", 
                          description: "Este comando permite ao moderador remover uma resposta automática",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set uptimemessage <frase com (_UPTIME_)>", 
                              content: "Personaliza a mensagem do !uptime", 
                          description: "Este comando permite ao moderador modificar a mensagem do comando !uptime",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!setcount <comando> <número>", 
                              content: "Altera o valor do (_COUNT_) de um comando", 
                          description: "Este comando permite ao moderador alterar o valor contado de um comando",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set subscriberalerts <on ou off>", 
                              content: "Ativa ou desativa o agradecimento de sub", 
                          description: "Este comando permite ao moderador ativar o efeito de agradecimento de subs na live",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set subscriberalerts message <mensagem>", 
                              content: "Define uma mensagem personalizada de agradecimento de sub", 
                          description: "Este comando permite ao moderador personalizar a mensagem de agradecimento de um novo sub",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set resubalert message <mensagem>", 
                              content: "Define uma mensagem personalizada de agradecimento de resub", 
                          description: "Este comando permite ao moderador personalizar a mensagem de agradecimento de um resub",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set subwhisper <on ou off>", 
                              content: "Ativa ou desativa o envio de mensagem de sub por mensagem privada", 
                          description: "Este comando permite ao moderador ativar ou desativar o envio de mensagens de sub por mensagem privada ao usuário",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set subwhisper message <mensagem>", 
                              content: "Define uma mensagem personalizada de agradecimento de sub por mensagem privada", 
                          description: "Este comando permite ao moderador personalizar a mensagem de sub por mensagem privada ao usuário",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set subwhisper resubmessage <mensagem>", 
                              content: "Define uma mensagem personalizada de agradecimento de resub por mensagem privada", 
                          description: "Este comando permite ao moderador personalizar a mensagem de resub por mensagem privada ao usuário",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set prefix <caractere>", 
                              content: "Muda o caractere de ativação dos comandos do bot", 
                          description: "Este comando permite ao moderador personalizar o prefixo de uso dos comandos no chat (Não utilize '.' ou '/', o uso de um dos dois caracteres criará conflito com os comandos da própria twitch)",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!link <qualquer coisa>", 
                              content: "Gera um link de pesquisa sobre o que foi digitado", 
                          description: "Este comando permite ao moderador gerar um link de pesquisa",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set quote <on ou off>", 
                              content: "Ativa ou desativa as citações no canal", 
                          description: "Este comando permite ao moderador ativar ou desativar as citações no chat daquele canal",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!set quotemods <on ou off>", 
                              content: "Ativa ou desativa as citações somente para moderadores", 
                          description: "Este comando permite ao moderador ativar ou desativar as citações no chat daquele canal somente para moderadores",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!delquote <id>", 
                              content: "Remove uma citação determinada", 
                          description: "Este comando permite ao moderador remover uma citação determinada no chat",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!editquote <id> <text ou game> <novo texto ou novo jogo>", 
                              content: "Edita uma citação determinada", 
                          description: "Este comando permite ao moderador editar uma citação determinada no chat",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!approve <id>", 
                              content: "Aprova uma citação pendente determinada", 
                          description: "Este comando permite ao moderador aprovar uma citação pendente",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!pquote <id>", 
                              content: "Solicita uma citação pendente determinada", 
                          description: "Este comando permite ao moderador solicitar uma citação determinada",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!pending", 
                              content: "Mostra a lista de citações pendentes", 
                          description: "Este comando permite ao moderador ver a lista citações pendentes",
                               bot_id: priestBot.id)

priestBotConfig = Config.create!(name: "!reject <id>", 
                              content: "Rejeita uma citação pendente determinada", 
                          description: "Este comando permite ao moderador rejeitar uma citação pendente",
                               bot_id: priestBot.id)

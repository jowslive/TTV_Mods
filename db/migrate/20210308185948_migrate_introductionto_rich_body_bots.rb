class MigrateIntroductiontoRichBodyBots < ActiveRecord::Migration[6.0]
  def up
    Bot.find_each do |bot|
      bot.update(rich_introduction: bot.introduction)
    end
  end

  def down
    Bot.find_each do |bot|
      bot.update(introduction: bot.rich_introduction)
      bot.update(rich_introduction: nil)
    end
  end
end

# frozen_string_literal: true

require 'discordrb'

class TinajaBot
  def initialize(token:)
    @bot = Discordrb::Bot.new(token:)
    setup
  end

  def setup
    @bot.message(with_text: /^unexpo$/i) do |event|
      event.respond "Hola <@#{event.user.id}>!    ?"
    end
  end

  def run
    at_exit { bot.stop }
    @bot.run
  end
end

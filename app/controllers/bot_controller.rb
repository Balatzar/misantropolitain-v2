class BotController < ApplicationController
  before_action :get_message_informations

  def talk
    head :ok

    messenger = MessengerService.new
    post = messenger.send_message(@sender, @text)

    pp JSON.parse post
  end

  private

  def get_message_informations
    @sender = params["entry"][0]["messaging"][0]["sender"]["id"]
    @recipient = params["entry"][0]["messaging"][0]["recipient"]["id"]
    @text = params["entry"][0]["messaging"][0]["message"]["text"]
    @session_id = params["entry"][0]["id"]
  end
end

class BotController < ApplicationController
  before_action :get_message_informations

  def talk
    head :ok

    messenger = MessengerService.new
    chatbase = ChatbaseService.new
    body_send_msg = messenger.send_message(@sender, @text)
    chatbase.send_analytics({ recipient: @recipient, message: { text: @text } }, { recipient_id: @recipient, message_id: JSON.parse(body_send_msg.parsed_response)["message_id"] })
  end

  private

  def get_message_informations
    @sender = params["entry"][0]["messaging"][0]["sender"]["id"]
    @recipient = params["entry"][0]["messaging"][0]["recipient"]["id"]
    @text = params["entry"][0]["messaging"][0]["message"]["text"]
    @session_id = params["entry"][0]["id"]
  end
end

class MessengerService
  URL = "https://graph.facebook.com/v2.6/me/messages?access_token=#{Figaro.env.FACEBOOK_ACCESS_TOKEN}"

  def initialize
  end

  def send_message(to, message)
    message = {
      "recipient":{
        "id": to
      },
      "message":{
        "text": message
      }
    }

    HTTParty.post(URL, { body: message, headers: { 'Content-Type': 'application/json' } })
  end

end
class ChatbaseService
  URL = "https://chatbase.com/api/facebook/send_message?api_key=#{Figaro.env.CHATBASE_TOKEN}&version=0.1"

  def initialize
  end

  def send_analytics(request_body, response_body)
    body = {
      request_body: request_body,
      response_body: response_body,
    }

    pp "======"
    ap body
    pp "======"

    pp HTTParty.post(URL, { body: body.to_json, headers: { 'Content-Type': 'application/json' } })
  end

end
module Service
  include HTTParty

  class Api
    def post(body)
      HTTParty.post(CONFIG["url_api"],
                    :headers => {
                      "Content-Type" => 'application/json'
                      },
                    :body => body)
    end
  end
end

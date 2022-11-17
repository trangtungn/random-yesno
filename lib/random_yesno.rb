# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'json'

# RandomYesNo class
class RandomYesNo
  URI = URI('https://yesno.wtf/api')

  ##
  # This send a request to yesno.wtf/api to get a random yes/no gif file
  #
  # = Example
  #
  #   Example json repose:
  #   {
  #     "answer": "yes",
  #     "forced": false,
  #     "image": "https://yesno.wtf/assets/yes/2.gif"
  #   }
  def self.show
    res = Net::HTTP.get_response(URI)
    JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
  end
end

# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'json'

# RandomYesNo class
class RandomYesNo

  DEFAULT_URL = 'https://raw.githubusercontent.com/trangtungn/random-yesno/main/assets/images'

  class << self
    attr_writer :base_url

    def base_url
      @base_url ||= DEFAULT_URL
    end
  end

  ##
  # Returns a random yes/no response with a GIF
  #
  # The GIF files follow the pattern: yes1.gif, yes2.gif, no1.gif, no2.gif, etc.
  #
  # = Example
  #
  #   Example response:
  #   {
  #     "answer": "yes",
  #     "forced": false,
  #     "image": "https://raw.githubusercontent.com/trangtungn/random-yesno/main/assets/images/yes3.gif"
  #   }
  #
  # = Configuration
  #
  #   # Configure custom URL:
  #   RandomYesNo.base_url = 'https://your-cdn.com/gifs'
  def self.show
    answer = ['yes', 'no'].sample
    number = rand(1..10)

    {
      'answer' => answer,
      'forced' => false,
      'image' => "#{base_url}/#{answer}#{number}.gif"
    }
  end
end

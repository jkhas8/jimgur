require "faraday"

module Jimgur
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :client_id

    def initialize
      @client_id = "xxx"
    end
  end

  def self.upload image
    api_uri = URI.parse("https://api.imgur.com")
    api_public_key = "Client-ID #{self.configuration.client_id}"
    endpoints = {
      image: "3/image",
    }
    img_name = image.tempfile
    img = File.open(img_name, "r") {|io| io.read}

    conn = Faraday.new(api_uri) do |f|
      f.request :url_encoded
      f.request :multipart
      f.response :logger
      f.adapter :net_http
    end
    conn.headers["Authorization"] = api_public_key

    form_data = {
      image: Base64.encode64(img)
    }
    response = conn.post(endpoints[:image], form_data)

    result = JSON.parse(response.body)
    result
  end
end

require "json"
require "http/client"

class PerlIs
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://perl.is")
    @http_client = HTTP::Client.new(uri)
  end

  def get_random_epigram() : JSON::Any
    JSON.parse(@http_client.get("/random", headers: @headers).body)
  end
end

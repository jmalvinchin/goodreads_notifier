class GoodreadsClient
  def self.instantiate_client(user_token:, user_secret:)
    consumer = OAuth::Consumer.new(ENV["GR_APP_KEY"], ENV["GR_APP_SECRET"], site: "http://www.goodreads.com")
    access_token = OAuth::AccessToken.from_hash(consumer, oauth_token: user_token, oauth_token_secret: user_secret)
    Goodreads.new(oauth_token: access_token)
  end
end

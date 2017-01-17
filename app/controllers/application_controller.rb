class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def goodreads_client
    @client ||= instantiate_goodreads_client
  end

  private

  def instantiate_goodreads_client
    consumer = OAuth::Consumer.new(ENV["GR_APP_KEY"], ENV["GR_APP_SECRET"], site: "http://www.goodreads.com")
    access_token = OAuth::AccessToken.from_hash(consumer, oauth_token: current_user.access_token, oauth_token_secret: current_user.token_secret)
    Goodreads.new(oauth_token: access_token)
  end
end

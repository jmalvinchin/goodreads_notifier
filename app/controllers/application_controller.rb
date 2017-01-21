class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def goodreads_client
    @client ||= instantiate_goodreads_client
  end

  private

  def instantiate_goodreads_client
    GoodreadsClient.instantiate_client(user_token: current_user.access_token,
                                       user_secret: current_user.token_secret)
  end
end

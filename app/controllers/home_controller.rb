class HomeController < ApplicationController
  def index
    if current_user.sign_in_count == 1
      GoodreadsProcessorWorker.perform_async(current_user.access_token, current_user.token_secret, current_user.id)
    else
    end
    @books = current_user.books
  end
end

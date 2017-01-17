class HomeController < ApplicationController
  def index
    puts "GOODREADS USER ID #{goodreads_client.user_id}"
  end
end

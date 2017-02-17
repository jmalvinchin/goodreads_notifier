class Book < ApplicationRecord
  belongs_to :author

  def publication_date
    read_attribute("publication_date").try(:strftime, "%B %d %Y")
  end
end

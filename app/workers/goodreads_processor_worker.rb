class GoodreadsProcessorWorker
  include Sidekiq::Worker

  def perform(user_token, user_secret, user_id)
    client = GoodreadsClient.instantiate_client(user_token: user_token, user_secret: user_secret)
    goodreads_id = client.user_id
    response = client.shelf(goodreads_id, "to-read", per_page: 200)
    books_to_read = response["books"]
    books_to_read.each do |data|
      book = data.book
      author = data.book.authors.author
      saved_author = create_author(author)
      create_book(book, saved_author.id, user_id)
    end
  end

  def create_author(author)
    Author.find_or_create_by(name: author.name, goodreads_link: author.link)
  end

  def create_book(book, author_id, user_id)
    Book.find_or_create_by(title: book.title) do |book_to_save|
      book_to_save.image_url = book.image_url,
        book_to_save.small_image_url = book.small_image_url,
        book_to_save.large_image_url = book.large_image_url,
        book_to_save.goodreads_link = book.link,
        book_to_save.publication_date = publication_date(book.publication_year, book.publication_month, book.publication_day),
        book_to_save.average_rating = book.average_rating,
        book_to_save.description = book.description,
        book_to_save.author_id = author_id,
        book_to_save.user_id = user_id
    end
  end

  def publication_date(year, month, day)
    begin
      Date.new(year.to_i, month.to_i, day.to_i)
    rescue ArgumentError
      nil
    end
  end
end

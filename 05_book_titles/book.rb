class Book
  attr_reader :title

  def title=(book_title)
    words = book_title.split.map do |x|
      if x == "a" || x == "an" || x == "and" || x == "in" || x == "the" || x == "of"
        x
      else
        x.capitalize
      end
    end
    words.first.capitalize!
    @title = words.join(' ')
  end

end

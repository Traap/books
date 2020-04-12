require 'pp'
require 'psych'

module Books
  # The Book class
  class Book
    attr_accessor :author, :title, :isbn
    def initialize(author, title, isbn)
      @author = author
      @title = title
      @isbn = isbn
    end

    def ==(_other)
      self.author = z.author && self.title = z.title && self.isbn = z.isbn
    end
    def self.load_from_yaml(file)
      books = []
      begin
        h = Psych.load_file(file)
        h.each do |_k0, v0|
          v0.each do |_k1, v1|
            v1.each do |book|
              books << Book.new(
                book['author'],
                book['title'],
                book['isbn']
              )
            end
          end
        end
      rescue StandardError => e
        puts "Could not parse YAML: #{e.message}"
      end
      books
    end
  end
end


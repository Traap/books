require 'pp'
require 'psych'

module Books
  class Book
    attr_accessor :author, :title, :isbn
    def initialize(author, title, isbn)
      @author = author
      @title = title
      @isbn = isbn
    end
    def ==( z )
      self.author = z.author and self.title = z.title and self.isbn = z.isbn
    end
    def self.load_from_yaml(file)
      books = []
      begin
        h = Psych.load_file(file)
        h.each do |k0_, v0|
          v0.each do |k1_, v1|
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


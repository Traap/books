require 'books/book'

# ------------------------------------------------------------------------------
# String initialization is done to improve maintenance and readability. 

# YAML file. 
yf = 'books.yaml'

# First book data. 
fba = 'Yukihiro Matsumoto'
fbt = 'Ruby in a Nutshell'
fbi = '0-596-00214-9' 

# Second book data
sba = 'Zed A. Shaw'
sbt = 'Learn Ruby The Hard Way'
sbi = '978-0321884992' 

# New book data
nba = 'Sandi Metz'
nbt = 'Practical Objected-Oriented Design'
nbi = '978-0134456478' 

# Update new book data
uba = 'Metz Sandi'
ubt = 'An Agile Primer Using Ruby'
ubi = '97809134456478' 

# ------------------------------------------------------------------------------
RSpec.describe Books do
  describe 'Book' do

    # --------------------------------------------------------------------------
    before(:all) do
      @books = Books::Book.load_from_yaml(yf)
      @book = Books::Book.new(nba, nbt, nbi)
    end

    # --------------------------------------------------------------------------
    it 'can read books.yaml' do
      expect(@books).not_to be nil
    end

    # --------------------------------------------------------------------------
    it "First book author is #{fba}" do
      expect(@books[0].author).to eql(fba)
    end

    it "First book title is #{fbt}" do
      expect(@books[0].title).to eql(fbt)
    end

    it "First book isbn is #{fbi}" do
      expect(@books[0].isbn).to eql(fbi)
    end

    # --------------------------------------------------------------------------
    it "Second book author is #{sba}" do
      expect(@books[1].author).to eql(sba)
    end

    it "Second book title is #{sbt}" do
      expect(@books[1].title).to eql(sbt)
    end

    it "Second book isbn is #{sbi}" do
      expect(@books[1].isbn).to eql(sbi)
    end

    # --------------------------------------------------------------------------
    it 'New book is created' do
      expect(@book).not_to be nil
    end

    it "New book author is #{nba}" do
      expect(@book.author).to eql(nba)
    end

    it "New book title is #{nbt}" do
      expect(@book.title).to eql(nbt)
    end

    it "New book isbn is #{nbi}" do
      expect(@book.isbn).to eql(nbi)
    end

    # --------------------------------------------------------------------------
    it "New book author is changed to #{uba}" do
      @book.author = uba 
      expect(@book.author).to eql(uba)
    end

    it "New book title is changed to #{ubt}" do
      @book.title = ubt
      expect(@book.title).to eql(ubt)
    end

    it "New book isbn is changed to #{ubi}" do
      @book.isbn = ubi 
      expect(@book.isbn).to eql(ubi)
    end

  end
end

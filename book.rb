dclass Book
  attr_reader :title, :author

  def initialize(title, author, has_been_read = false)
    @title = title
    @author = author
    @has_been_read = has_been_read
  end

  def has_been_read?
    @has_been_read
  end

  def mark_as_read!
    @has_been_read = true
  end
end

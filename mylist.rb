require_relative 'enum'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = *args
  end

  def to_s
    @list.join(', ')
  end

  def each
    @list.each{|e| yield e}
  end
end

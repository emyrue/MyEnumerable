module MyEnumerable
  def all?
    each do |e|
      return false unless yield e
    end
    true
  end

  def any?
    each do |e|
      return true if yield e
    end
    false
  end

  def filter
    new_list = []
    each do |e|
      new_list << e if yield e
    end
    new_list
  end
end

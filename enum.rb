module MyEnumerable
  def all?
    each do |e|
      return false unless yield (e)
    end
    true
  end

  def any?
    each do |e|
      if yield (e)
        return true
      end
    end
    false
  end
  
  def filter
    new_list = []
    each do |e|
      if yield (e)
        new_list << e
      end
    end
    new_list
  end
end

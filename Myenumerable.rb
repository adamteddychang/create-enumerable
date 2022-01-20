module MyEnumerable
  
  def self.included klass
    klass.singleton_class.send(:attr_reader, :list)
  end
    
  def all?
    @list.each do |val|
      return true unless block_given?
      block_test = yield(val)
      return false unless block_test
    end
    return true
  end
  
  def any?
    @list.each do |val|
      return true unless block_given?
      block_test = yield(val)
      return true unless !block_test
    end
    return false
  end

  def filter
    return @list unless block_given?
    return @list if @list.length == 0
    result = []
    @list.each do |val|
      block_test = yield(val)
      result.push(val) if block_test
    end
    return result 
  end   
end
class MyList 
  def initialize (*list)
    @list = list
  end
  def all
    yield @list.all
  end
end
#list = MyList.new(1, 2, 3, 4)
#puts list
#list.all? { |e| e<5 }
#puts %w[ant bear cat].all
#enu1 = [10, 19, 18]
#res1 = enu1.all? { |num| num>4} 

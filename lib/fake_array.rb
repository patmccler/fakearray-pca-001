class FakeArray
  def initialize (*args)
    @my_values = {}
    args.each_with_index do |arg, i|
      @my_values[i] = arg
    end
  end

  def [](index)
    @my_values[index]
  end

  def each
    count = 0
    while count < @my_values.keys.length
      yield @my_values[count]
      count += 1
    end
  end

  def first
    @my_values[0]
  end
end
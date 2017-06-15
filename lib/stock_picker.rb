class StockPicker
  def initialize(values)
    @values = values
    raise("I need at least 2 values") unless @values.size > 1
    @earnings = @values[1] - @values[0]
    @couple = [0, 1]
  end

  def pick
    i = 0
    while i < @values.size - 1 do
      j = 1
      while j < @values.size do
        puts i, j
        if @values[i] - @values[j] > @earnings
          @earnings = @values[i] - @values[j]
          @couple = [i, j]
        end
        j += 1
      end
      i += 1
    end
    @couple
  end

end

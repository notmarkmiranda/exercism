class BinarySearch

  def initialize(array)
    @array = array
    raise ArgumentError if @array.sort != @array
  end

  def list
    @array
  end

  def search_for(num)
    raise RuntimeError if !@array.include?(num)
    @array.index(num)
  end

  def middle
    @array.size / 2
  end
end

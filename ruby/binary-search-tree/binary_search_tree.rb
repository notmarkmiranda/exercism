require 'pry'
class Bst
  attr_reader :data
  attr_accessor :right, :left

  def initialize(data)
    # @root_node = Bst.new(data)
    @data = data
    @left = nil
    @right = nil
  end


  def insert(data)
    if data <= @data
      if @left == nil
        @left = Bst.new(data)
      else
        @left.insert(data)
      end
    else
      if @right == nil
        @right = Bst.new(data)
      else
        @right.insert(data)
      end
    end
  end

  def each
    if @left == nil
      yield @data
    else
      yield @left.data
      yield @data
      binding.pry
      yield @right.data if @right != nil
    end

  end

end

# class Node
#   attr_reader :data
#   attr_accessor :right, :left
#
#   def initialize(data)
#     @data = data
#     @left = nil
#     @right = nil
#   end
# end

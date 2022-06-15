class Node
  include Comparable

  attr_accessor :data

  def <=>(other)
    @data <=> other.data
  end

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end
end

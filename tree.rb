require_relative './node'
require_relative './printable'

# BST
class Tree
  include Printable

  def initialize(arr)
    @arr = arr.uniq.sort
    @root = build_tree
  end

  def find(value, root = @root)
    return root if root.nil? || value == root.data

    find(value, root.data < value ? root.right : root.left)
  end

  private

  def build_tree(first = 0, last = @arr.length - 1)
    return nil if first > last

    mid = (first + last) / 2
    node = Node.new(@arr[mid])
    node.left = build_tree(first, mid - 1)
    node.right = build_tree(mid + 1, last)

    node
  end
end

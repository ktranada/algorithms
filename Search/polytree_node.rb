require_relative 'BFS'
class PolyTreeNode
  include BFS

  attr_accessor :value
  attr_reader :parent

  def initialize(value = nil)
    @value, @parent, @children = value, nil, []
  end

  def children
    @children.dup
  end

  def parent=(parent)
    return if self.parent == parent
    # Detach from current parent
    if self.parent
      self.parent._children.delete(self)
    end

    @parent = parent
    self.parent._children << self unless self.parent.nil?
    self
  end

  def add_child(child)
    child.parent = self
  end

  def remove_child(child)
    if child && !self.children.include?(child)
      raise "That is not a valid child node"
    end
    chil.parent = nil
  end

  protected

  # protected to give node direct access to another node's children
  def _children
    @children
  end
end

if $PROGRAM_NAME ==  __FILE__
  root = PolyTreeNode.new(0)
  one = PolyTreeNode.new(1)
  two = PolyTreeNode.new(2)
  three = PolyTreeNode.new(3)
  four = PolyTreeNode.new(4)
  five = PolyTreeNode.new(5)
  six = PolyTreeNode.new(6)
  seven = PolyTreeNode.new(7)
  eight = PolyTreeNode.new(8)
  root.add_child(one)
  root.add_child(two)
  one.add_child(three)
  one.add_child(four)
  two.add_child(five)
  two.add_child(six)
  three.add_child(seven)
  three.add_child(eight)
  puts root
end

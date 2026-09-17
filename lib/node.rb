# frozen_string_literal: true

# Creates a node with its value and the next one it points to
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

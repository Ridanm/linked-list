# frozen_string_literal: true

require 'colorize'

# This module contains extra methods for the linked list project
module ExtraCredit
  def insert_at(index, value)
   integer_msj = "The index(#{index}) must be a number!!!".yellow
   raise ArgumentError, integer_msj unless index.is_a?(Integer)
   raise IndexError, 'Index.out of bound(negative index not supported)'.yellow if index < 0
    
    new_node = Node.new(value)

    if index.zero?
      new_node.next_node = @head
      @head = new_node
      return
    end
    
      current = @head
      (index - 1).times do
        break if current.nil?
        current = current.next_node
      end

      raise IndexError, 'Index out of bounds'.yellow if current.nil?
    
      new_node.next_node = current.next_node
      current.next_node = new_node
  end

  def remove_at(index)
    return if @head.nil?
    return  @head = @head.next_node if index.zero?

    current = @head
    previous = nil
    count = 0

    while count < index
      return if current.nil?

      previous = current
      current = current.next_node
      count += 1
    end

    return if current.nil?

    previous.next_node = current.next_node
  end
end

# frozen_string_literal: true

require 'bundler/setup'
require_relative 'extra_credit'
require_relative 'node'
require_relative 'linked_list'

list = LinkedList.new
list.append(1)
list.append(2)
list.prepend!(0)
list.append(3)
list.append(4)
list.append(5)

print "\nAll nodes => "
list.to_s

puts "head => #{list.head_node.value}"
puts "size => #{list.size}"
puts "tail => #{list.tail.value}"
puts "at_index(1) => #{list.at(1).value}"
puts "at_index(3) => #{list.at(3).value}"
puts "\nremove last #{list.pop}"
puts "size => #{list.size}"

puts "contains(4) => #{list.contains?(4)}"
puts "contains(five) => #{list.contains?('five')}"
puts "find(2) return index => #{list.find(2)}"
puts "find(4) return index => #{list.find(4)}"
puts "find(6) return index => #{list.find(6)}"

puts "\nAdd items: "
list.insert_at(1, 'insert_at(imdex 1)')
list.insert_at(4, 'insert_at(index 4)')
# list.insert_at('rob', 'insert_at(string') # if it's a String
# list.insert_at(-3, 'index -3') # negative Index
# list.insert_at(10, 'index > ') # index greater than the size of the list
list.to_s

puts "\nRemove items: "
list.remove_at(5)
list.remove_at(0)
list.remove_at(2)
list.to_s

puts "\nOdin list: "
odin_list = LinkedList.new

odin_list.append('dog')
odin_list.append('cat')
odin_list.append('parrot')
odin_list.append('hamster')
odin_list.append('snake')
odin_list.append('turtle')
odin_list.to_s

puts "\nVerifying tail"
list_two = LinkedList.new

list_two.head.value unless list_two.head&.value.nil?

list_two.append(4)
list_two.append(2)
list_two.append(8)

list_two.to_s
puts list_two.tail.value
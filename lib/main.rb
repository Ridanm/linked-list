# frozen_string_literal: true

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

puts "head => #{list.head_node.data}"
puts "size => #{list.size}"
puts "tail => #{list.tail.data}"
puts "at_index(1) => #{list.at(1).data}"
puts "at_index(3) => #{list.at(3).data}"
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
list.to_s

puts "\nRemove items: "
list.remove_at(5)
list.remove_at(0)
list.remove_at(2)
list.to_s

puts "\nOdin list: "
list_odin = LinkedList.new

list_odin.append('dog')
list_odin.append('cat')
list_odin.append('parrot')
list_odin.append('hamster')
list_odin.append('snake')
list_odin.append('turtle')
list_odin.to_s

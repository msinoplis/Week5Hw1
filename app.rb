# def prompt(*args)
#     print(*args)
#     gets
# end
#
# def add
#
# calc1 = prompt "Which calculator? (A for basic): "
#
# require "highline/import"
# calc = ask "Which calculator? (A for basic): "
#
# puts calc1 , calc
#
#
# if calc === "A" || calc ==="a" then
#
# end

def int_values
  [gets, gets].map{ |s| s.chomp.to_f } ##.to_i to take integer inputs
end

puts "Would you like to [a]dd, [m]ultiply, [s]ubtract or [d]ivide?"
input = gets.chomp
##gets gets a line of text, including a line break at the end.
##This is the user input
##gets returns that line of text as a string value.
##Calling chomp on that value removes the line break


case input.downcase
when 'a'
  puts "Which numbers would you like to add?"
  operator = :+

when 's'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'm'
  puts "Which numbers would you like to multiply?"
  operator = :*

when 'd'
  puts "Which numbers would you like to divide?"
  operator = :/
end

answer = int_values.inject(operator)
puts "The answer is... #{ answer }"

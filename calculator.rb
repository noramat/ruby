puts "Welcome to the calucution experience"

puts "enter first number"

number_1 = gets.chomp 

puts "select your operation (+,-,*, /)"

oper = gets.chomp

 puts "enter second number"

 number_2 = gets.chomp


puts "you inputed: #{number_1} the operation you chose is #{oper} you inputed #{number_2}" 

if oper == "+"
puts number_1.to_i + number_2.to_i	
elsif oper == "-"
puts number_1.to_i - number_2.to_i	
elsif oper == "*"
puts number_1.to_i * number_2.to_i	
elsif oper == "/"
puts number_1.to_i / number_2.to_i	
else
 	puts "You didn't enter a valid operation= #{oper}"
end

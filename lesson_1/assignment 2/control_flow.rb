#arr = [1, 3, 5, 7, 9, 11]
#number = 10
#puts 'opkors' if arr.include?(number)

=begin 
print "Please choose a number between 0 - 100"
num = gets.to_i # .to_i is used to convert strings to integer
# print num.class # .class checks the data type
if num >= 0
    if num >=0 && num <= 50
        print "The number you chose is between 0 and 50"
    elsif num >= 51 && num <= 100
        print "The number you chose is between 51 and 100"
    else num > 100
        print "The number you chose is above 100"
    end
else
    print "Sorry! You can not choose a negative number"
end
=end

=begin
question = "what does red light means in traffic lights?"
puts question
input = gets.chomp # .chomp removes /n or new line in gets method
input.eql? "STOP"
while input != "STOP"
    puts question
    input = gets.chomp
end
=end

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []
arr.map do | n |
    if n % 2 == 0
        new_arr.push(n)
    end
end

puts new_arr

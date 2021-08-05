question = "what does red light means in traffic lights?"
puts question
input = gets.chomp # .chomp removes /n or new line in gets method. w/o .chomp, will encounter infinite loop
input.eql? "STOP"
while input != "STOP"
  puts question
  input = gets.chomp
end
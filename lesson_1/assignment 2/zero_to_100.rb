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
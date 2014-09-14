# tic tac toe program
# 1. Draw board
# 2. User take turn
# 3. Computer takes turn
# 4. Update board 
# 5. Eval if there is a winner
# 6. Display winner 

# positions hash
positions = {"1" =>"", "2" => "", "3" => "", "4" =>"", "5" => "", "6" => "", "7" => "", "8" => "", "9" => ""}
computer_play = ""

puts "
#{positions["1"]}| #{positions["2"]} |#{positions["3"]}
-------
#{positions["4"]}| #{positions["5"]} |#{positions["6"]}
------
#{positions["7"]}| #{positions["8"]} |#{positions["9"]}
"



begin
  system "clear"
  puts "Select a position"
  available_positions = []
  user_play = gets.chop
  positions[user_play] = "X"
  puts available_positions.to_s
  positions.each do |k,v|
    if v == ""
      available_positions = available_positions.push(k)
    end
  end  

  computer_play = available_positions.sample 
  positions[computer_play] = "O" 
  puts available_positions.to_s     
  puts "
  #{positions["1"]}| #{positions["2"]} |#{positions["3"]}
  -------
  #{positions["4"]}| #{positions["5"]} |#{positions["6"]}
  ------
  #{positions["7"]}| #{positions["8"]} |#{positions["9"]}
  "
  user_positions = positions.select { |k,v| v == "X" }
  if  user_positions.keys.include?("1") &&  user_positions.keys.include?("2") && user_positions.keys.include?("3")  || 
      user_positions.keys.include?("4") &&  user_positions.keys.include?("5") && user_positions.keys.include?("6")  ||
      user_positions.keys.include?("7") &&  user_positions.keys.include?("8") && user_positions.keys.include?("9")  ||
      user_positions.keys.include?("1") &&  user_positions.keys.include?("4") && user_positions.keys.include?("7")  ||
      user_positions.keys.include?("2") &&  user_positions.keys.include?("5") && user_positions.keys.include?("8")  ||
      user_positions.keys.include?("3") &&  user_positions.keys.include?("6") && user_positions.keys.include?("9")  ||
      user_positions.keys.include?("3") &&  user_positions.keys.include?("5") && user_positions.keys.include?("7")  ||
      user_positions.keys.include?("1") &&  user_positions.keys.include?("5") && user_positions.keys.include?("9")
    puts "yeah!! you win"
    break
  end  
end while !available_positions.empty?
  

  

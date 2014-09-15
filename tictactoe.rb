# tic tac toe program
# 1. Draw board
# 2. User take turn
# 3. Computer takes turn
# 4. Update board 
# 5. Eval if there is a winner
# 6. Display winner 

# possible positions hash
positions = {"1" =>"", "2" => "", "3" => "", "4" =>"", "5" => "", "6" => "", "7" => "", "8" => "", "9" => ""}

# create method to draw board to screen
def board(positions)
  puts "
  #{positions["1"]}| #{positions["2"]} |#{positions["3"]}
  -------
  #{positions["4"]}| #{positions["5"]} |#{positions["6"]}
  ------
  #{positions["7"]}| #{positions["8"]} |#{positions["9"]}
  "
end 

def find_positions(positions, symbol)
  positions.select { |k,v| v == symbol}
end 

def winner(x) 
  # test whether user has won game
  if  x.keys.include?("1") &&  x.keys.include?("2") && x.keys.include?("3")  || 
      x.keys.include?("4") &&  x.keys.include?("5") && x.keys.include?("6")  ||
      x.keys.include?("7") &&  x.keys.include?("8") && x.keys.include?("9")  ||
      x.keys.include?("1") &&  x.keys.include?("4") && x.keys.include?("7")  ||
      x.keys.include?("2") &&  x.keys.include?("5") && x.keys.include?("8")  ||
      x.keys.include?("3") &&  x.keys.include?("6") && x.keys.include?("9")  ||
      x.keys.include?("3") &&  x.keys.include?("5") && x.keys.include?("7")  ||
      x.keys.include?("1") &&  x.keys.include?("5") && x.keys.include?("9")
    return true 
  else 
    return false   
  end 
end  

#create loop that loops until board is full or player wins. 
begin
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

  board(positions)
  
  # find positions of user
  user_positions = find_positions(positions, "X")
  computer_positions = find_positions(positions, "O")
  puts "user positions: " + user_positions.to_s
  puts "computer positions: " +computer_positions.to_s

  # test whether user has won game
  winner(user_positions)
  winner(computer_positions)

  if winner(user_positions)
    puts "**********yeahhhhh.. You won *******************"
    break
  end 

  if winner(computer_positions)
    puts ":( :( :(:( :( :( boo.. Computer won :( :( :( :( :( :(" 
    break  
  end    

end while !available_positions.empty? 
  

  

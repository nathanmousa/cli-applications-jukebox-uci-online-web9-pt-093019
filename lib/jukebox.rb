def help
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end

help 

def list(songs) 
  songs.each_with_index { |item, index|
    puts "#{index+1}. #{item}" }
end 

list(songs)

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.downcase.chomp 
  
  if (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i - 1]}"
    elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else 
    puts "Invalid input, please try again"
  end 
end 

play(songs)

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  #help
  command = "" 
  while command  
  puts "Please enter a command:"
  command = gets.downcase.strip  
  case command 
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help 
      when 'exit'
        exit_jukebox
        break 
      else 
        help 
      end 
    end 
  end 
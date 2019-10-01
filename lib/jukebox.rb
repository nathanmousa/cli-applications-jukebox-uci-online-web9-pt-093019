def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp()
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def prompt()
  puts "Please enter a command:"
  gets.chomp()
end

# THE RUN METHOD
# This method is a little trickier. It will use the other methods we built, our "helper" methods, to actually enact the running of our Jukebox.

# First, this method should call on the help method to show the user the available commands. Then, it should puts out the prompt: "Please enter a command:". It should capture the user's response using gets.chomp or gets.strip.

# We need to keep our program running as long as the user's input is not "exit". Use a loop to continue asking the user for input until or unless their input is "exit". Use if or case statements to determine how your program will respond to a user's input. For example, if their input is "list", call the list method, if their input is "play", call the play method, if their input is "help", call the help method and if their input is "exit", call the exit_jukebox method and break out of your loop to stop the program.
  
def run(my_songs)
  help()
  input = prompt()
  
  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt()
    elsif input == "play"
      play(my_songs)
      input = prompt()
    elsif input == "help"
      help()
      input = prompt()
    else
      puts "Invalid command"
      help()
      input = prompt()
    end
  end
  
  exit_jukebox()
end
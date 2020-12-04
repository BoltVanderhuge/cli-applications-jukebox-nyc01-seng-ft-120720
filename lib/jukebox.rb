require "pry"
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) {|song,index|
  puts "#{index}. #{song}"
  }

end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  track_number = user_input.to_i
  if track_number >0 && track_number <= songs.length
    puts "Playing #{songs[track_number -1]}"
  elsif songs.include?(user_input)
    puts "Playing #{songs.find{|song| song == user_input}}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end
  
def run(songs)
  puts "Please enter a command:"
  command_upper = gets.strip
  command_lower = command_upper.downcase
  if command_lower == "exit"
    exit_jukebox
  elsif command_lower == "play"
    play(songs)
  elsif command_lower == "list"
    list(songs)
  elsif command_lower == "help"
    help
  else puts "Please enter a valid command"
    run(songs)
  end
end

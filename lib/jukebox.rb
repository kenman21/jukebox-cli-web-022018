songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts " 
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program "
end 

def list(songs)
  songs.each {|song| puts "#{songs.index(song)+1}. #{song}"}
end 

def play(songs)
  possiblenumbers = Array.new
  possiblesongs = Array.new
  songs.map {|song| possiblenumbers.push(songs.index(song)+1) 
  possiblesongs.push(song)}
  puts "Please enter a song name or number:"
  songornumber = gets.chomp
  if possiblenumbers.include?(songornumber) 
    song = songs(songornumber.to_i+1)
    puts "Playing #{"song"}"
  elsif possiblesongs.include?(songornumber)
    puts "Playing #{songornumber}"
  else 
    puts "Invalid input, please try again"
  end 
end 
#Script Name: Tall Tale
#Version: 1.0
#Description: A ruby script to demonstrate how to collect and process user input through an interactive story game. 

class Screen

	def cls
		puts("\n" * 25)
		puts "\a"
	end
end

class Tale
#properties that represent pieces of input which will be received by the player

	attr_accessor :monster, :villain, :object, :place, :location

#what will be used to store the paragraphs that make up the story

	attr_accessor :P1, :P2, :P3, :P4

#method which displays any text that its passed to it as an argument
	def tell_Story(paragraph)
		puts paragraph
	end
end

Console_Screen = Screen.new

Console_Screen.cls 

print "Would you like to hear an interesting story? (y/n)\n\n: "

answer = STDIN.gets
answer.chop!

if answer == "n"
Console_Screen.cls
puts "Okay. Hope to see you soon. \n\n"
else

Story = Tale.new 

Console_Screen.cls

print %Q{Type the name of something that you consider to be a monster. (Press Enter)\n\n: }
monster = STDIN.gets
monster.chomp!

Console_Screen.cls 

print %Q{Who is your favourite movie star? (Press Enter)\n\n: }
villain = STDIN.gets
villain.chomp!

Console_Screen.cls 

print %Q{Type the name of something. (Press Enter)\n\n: }
object = STDIN.gets
object.chomp!

Console_Screen.cls 

print %Q{Name a decent hiding place. (Press Enter)\n\n: }
place = STDIN.gets
place.chomp!

Console_Screen.cls 

print %Q{Enter a popular holiday location. (Press Enter)\n\n: }
location = STDIN.gets 
location.chomp! 











end
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
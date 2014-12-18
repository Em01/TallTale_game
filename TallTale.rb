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


	Story.P1 = %Q{ Once upon a time in a land far awar which was just on the outskirts of #{location},
		there lived three brave young children called Alex, Charlie and Eddie. These children were known as heroes
		because they had saved the people of #{location}. (Press Enter)
	}

	Story.P2 = %Q{ The good people of #{location} had been drived into the hills but the were not the only ones. A naughty
	monster named #{villain} had recently awoken from its slumber. (Press Enter)
	}

	Story.P3 = %Q{ The local inhabitants of #{location} sent word to the children that their help was going to be needed
	again. When the children arrived to help they found that #{villain} had trapped the locals inside #{place} they were
	afraid he was hungry and wanted one last meal before returning to his secret lair in #{location} (Press Enter)
	}

	Story.P4 = %Q{ The children flew straight into action. Alex threw #{object} and hit #{villain} the rest of the children also
	helped and eventually everyone lived happily ever after. (Press Enter)
	}

	Console_Screen.cls 
	Story.tell_Story Story.P1
	STDIN.gets

	Console_Screen.cls 
	Story.tell_Story Story.P2
	STDIN.gets

	Console_Screen.cls 
	Story.tell_Story Story.P3
	STDIN.gets

	Console_Screen.cls 
	Story.tell_Story Story.P4
	STDIN.gets

	Console_Screen.cls 
	puts "Thanks for helping us tell this tale!\n\n"

end
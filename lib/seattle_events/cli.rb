class SeattleEvents::CLI

  def call
    puts "Today's Learn-to-Code Event Calendar:"
    list_events
    menu
    end_search
  end

  def list_events
    puts <<-DOC.gsub /^\s*/, ''
    1. Wed Sep 14 - Learn to Code Seattle - "Hack the Dot Seattle #8: Back to School Edition"
    2. Wed Sep 14 - Code Fellows - "Inside Scoop on getting Hired in Tech"
    DOC
  end

  def menu
    puts "Enter the number of the event you'd like to learn more about, 'list' if you'd like to see the event list, or 'exit':"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on event 1"
      when "2"
        puts "More info on event 2"
      when "list"
        list_events
      else
        puts "I don't understand your response. Please enter an event number, 'list', or 'exit'"
      end
    end
  end

  def end_search
    puts "Come back for more events!"
  end
end

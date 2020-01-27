
require 'pry'

class NprCliProject::CLI 
  
  
  
  def call 
    
      puts "
    _        _______  _______    _______  _______  _______ 
    ( (    /|(  ____ )(  ____ )  (  ____ \(  ____ \(       )
    |  \  ( || (    )|| (    )|  | (    \/| (    \/| () () |
    |   \ | || (____)|| (____)|  | |      | (__    | || || |
    | (\ \) ||  _____)|     __)  | | ____ |  __)   | |(_)| |
    | | \   || (      | (\ (     | | \_  )| (      | |   | |
    | )  \  || )      | ) \ \__  | (___) || (____/\| )   ( |
    |/    )_)|/       |/   \__/  (_______)(_______/|/     \|
    
    
    
    
    "
    
    
    puts "Welcome to All Gems Considered"
    puts "Your number one place for all NPR daily news"
    list_headlines
    selection 
    goodbye
  end 
  
  
  def list_headlines
    
    
   @news = NprCliProject::NPR.stories
   
 
  count = 1 
  @news.each do  |news_stories|
      puts "#{count}. " + news_stories.headline  
      count +=1 
    end 
  end 
  
  def selection 
    puts "Enter the number of the headline to read its summary"
    input = nil 
    while input != "exit"
    input = gets.strip.downcase
    new_stories = nil
     if input.to_i > 0
        news_stories = @news[input.to_i-1]
         puts "#{news_stories.summary}"
         puts ""
         puts "Type list to go back or exit to quit program"
         input2 = gets.strip.downcase
         if input2 == "list"
           list_headlines
         elsif 
            input2 == "exit"
              goodbye
         else 
           puts "I do not understand"
       end 
    end 
  end 
end 
  
  def goodbye 
    puts "Wait wait are you sure? (Yes/No)"
    input = gets.strip.downcase
      if input == "no"
        call 
      end 
  end 
  
end 
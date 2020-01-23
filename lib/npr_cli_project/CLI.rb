require 'pry'

class NprCliProject::CLI 
  
  
  
  def call 
    puts "Welcome to All Gems Considered"
    puts "Your number one place for all NPR daily news"
    list_headlines
    selection 
    goodbye
  end 
  
  
  def list_headlines
    
     binding.pry
   @news = NPR.new 
  count = 1 
  @news.each do  |news|
      puts "#{count}. " + news.headline 
      count +=1 
    end 
  end 
  
  def selection 
    puts "Enter the number of the headline to read its summary"
    input = nil 
    while input != "exit"
    input = gets.strip.downcase
    new_stories = 
     if input.to_i > 0
        news_stories = @news[input.to_i-1]
        puts "#{news_stories.summary}"
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
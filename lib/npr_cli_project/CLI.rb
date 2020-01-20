class NprCliProject::CLI 
  #extends NPR
  
  def call 
    puts "Welcome to All Gems Considered"
    puts "Your number one place for all NPR daily news"
    list_headlines
    selection 
    goodbye
  end 
  
  
  def list_headlines
    
     headline_1  = NPR.new("Headline 1", "Summary1")
     headline_2  = NPR.new("Headline 22", "Summary2")
     headline_3  = NPR.new("Headline 3", "Summary 3")
    
    puts headline_1.headline
    puts headline_2.headline
    puts headline_3.summary
    
    # puts "test"
    # puts <<-DOC 
    # 1. Headline #1 
    # 2. Headline #2 
    
    # DOC
  end 
  
  def selection 
    puts "Enter the number of the headline to read its summary"
    input = nil 
    while input != "exit"
    input = gets.strip.downcase
    case input 
    when "1"
      puts "Headline 1 summary"
    when "2"
      puts "Headline 2 summary"
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
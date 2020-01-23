require 'pry'

class NPR
  attr_accessor :headline, :summary 
  @@all = [] 
 
  
 def initialize(headline, summary)
    @headline = headline
    @summary = summary 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
   def grab_npr_page
    Nokogiri::HTML(open("https://www.npr.org/"))
    binding.pry
   end 


  
end 
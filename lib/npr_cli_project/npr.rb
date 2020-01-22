

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
 
  
  
end 
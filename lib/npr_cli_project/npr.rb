require 'pry'

#Author Richard Rosenthal 2020

class NprCliProject::NPR
  
  attr_accessor :headline, :summary 
  @@all = [] #class variable

  def initialize(headline, summary)
    @headline = headline 
    @summary = summary
    @@all << self
  end 
  
  #self .all method will return the class variable @@all
  
  def self.all 
    @@all 
  end 

end 
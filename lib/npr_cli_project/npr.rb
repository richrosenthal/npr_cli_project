require 'pry'

class NprCliProject::NPR
  attr_accessor :headline, :summary 
  @@all = [] 
 
# def initialize
#   grab_npr_page
# end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
   def self.grab_npr_page
    
    
    doc = Nokogiri::HTML(open("https://www.npr.org/"))
    
    story = self.new
    story.headline = doc.search("h3.title").text.strip
    story.summary = doc.search("p.teaser").text.strip
    
    story 
   end 
   
   def self.news_stories
      self.grab_npr_page
    end 

 
  
end 
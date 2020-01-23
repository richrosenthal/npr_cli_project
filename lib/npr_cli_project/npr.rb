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
    
    
    doc = Nokogiri::HTML(open("https://www.npr.org/sections/news/"))
    
    doc.search("div.slug-wrap").each do |project|
    story = self.new
    story.headline = doc.search("h2.title").text.strip
    story.summary = doc.search("p.teaser").text.strip
    #@@all << self 
    story 
    end
   end 
   
   def self.news_stories
      self.grab_npr_page
    end 

 
  
end 
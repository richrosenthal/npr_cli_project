require 'pry'
class NprCliProject::Scraper

   #.make_stories is scraping NPR website and creating a story object that will be shoveled into the class variable.
    def self.make_stories
        doc = Nokogiri::HTML(open("https://www.npr.org/sections/news/"))
        stories = doc.css("div.item-info")
         stories.each do |item|
           
           headline = item.search("h2.title").text.strip
           summary = item.search("p.teaser").text.strip

           story = NprCliProject::NPR.new(headline,summary)
          
         end 
         
        end 


end 
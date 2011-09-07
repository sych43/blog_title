

#!/usr/bin/env ruby

class Blog

def latest_title
    page = Net::HTTP.get(URI.parse @url)
    doc = Hpricot page 
    xpath = "/html/body/div[2]/div/div[2]/div/div/h3"
    element = doc.search xpath
    element.inner_text
end


def initialize new_url
     @url = new_url 
end
end


 
 

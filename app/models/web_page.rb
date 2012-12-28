class WebPage

  include DataMapper::Resource

  property :id, Serial
  property :name, String

  DEFAULT_FILE_PATH = "./data/webpages/"
  WEBPAGEBASE = "./app/views/layouts/vrubybase.html.erb"
  
  def setup
  	#determine the file path
  	#create a file with the appropriate name
  	#paste in the base constant
  	#save the file

  	#load in the template html
  	template_html = File.read(WEBPAGEBASE)

  	f = File.open(DEFAULT_FILE_PATH + self.name, 'w')
  	f.write template_html
  	f.close

  end

end

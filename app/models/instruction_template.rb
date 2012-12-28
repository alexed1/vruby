class InstructionTemplate

  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :instructions

  def execute
#store execution code in separate yaml or ruby files? Yes, as fixture, but load them in.
#could make it hard to debug.
#for now, create a single file of executions and mix them in to this template?

#case statement here? 

		execute_create_web_page
  end

  def execute_create_web_page
  	raise ("error creating web page") unless my_page = WebPage.new 
  	return my_page
  end

end

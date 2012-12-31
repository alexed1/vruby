class Instruction

  include DataMapper::Resource

  property :id, Serial
  property :name, String

  property :code, Text
  property :ordering, Integer
 
  belongs_to :instruction_template

  belongs_to :instruction_set

  def initialize ()
    
   
  end

  def configure (params, set_id)
    @instruction_template = InstructionTemplate.first(:id => params[:instruction_type][:template_id])
    @instruction_template.instructions << self
    self.name = @instruction_template.name
    @instruction_set = InstructionSet.first(:id => set_id)
    @instruction_set.instructions << self

  end

end

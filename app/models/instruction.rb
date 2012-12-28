class Instruction

  include DataMapper::Resource

  property :id, Serial
  property :name, String

  property :code, Text
  property :ordering, Integer
 
  belongs_to :instruction_template

  belongs_to :instruction_set

  def initialize (set_id)
    #store the instruction set that spawned this instruction
    @set_id = set_id
  end

  def configure (params)
    @instruction_template = InstructionTemplate.first(:id => params[:instruction_type][:template_id])
    @instruction = @instruction_template.instructions.new
    @instruction_set = InstructionSet.first(:id => @set_id)
    @instruction_set.instructions << @instruction

  end

end

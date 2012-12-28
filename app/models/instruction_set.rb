class InstructionSet

  include DataMapper::Resource

  property :name, String
  property :id, Serial

  has n, :instructions  




end

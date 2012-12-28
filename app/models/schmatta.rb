class Schmatta

  include DataMapper::Resource

  property :id, Serial

  property :name, String
  property :description, Text

  #has 1, :instruction

end

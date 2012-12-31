require 'spec_helper'

describe "InstructionSets" do
  describe "Start (Index) Page" do
    it "should have the content 'Listing Instruction Sets'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/instruction_sets/index'
      page.should have_content('Listing InstructionSetsfoo')
    end
  end
end

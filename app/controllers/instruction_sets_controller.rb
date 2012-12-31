class InstructionSetsController < ApplicationController
  # GET /instruction_sets
  # GET /instruction_sets.json
  def index
    @instruction_sets = InstructionSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instruction_sets }
    end
  end

  # GET /instruction_sets/1
  # GET /instruction_sets/1.json
  def show
    @instruction_set = InstructionSet.get(params[:id])
    @current_instructions_list = @instruction_set.instructions.all 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instruction_set }
    end
  end

  # GET /instruction_sets/new
  # GET /instruction_sets/new.json
  def new
    @instruction_set = InstructionSet.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instruction_set }
    end
  end

  # GET /instruction_sets/1/edit
  def edit
    @instruction_set = InstructionSet.get(params[:id])
  end

  def execute
    @instruction_set = InstructionSet.get(params[:id])
    @instruction_set.each do |instruction| 
      template = InstructionTemplate.first[:id => instruction.template_id]
    end
  end

  # POST /instruction_sets
  # POST /instruction_sets.json
  def create
    @instruction_set = InstructionSet.new(params[:instruction_set])

    respond_to do |format|
      if @instruction_set.save
        format.html { redirect_to @instruction_set, notice: 'Instruction set was successfully created.' }
        format.json { render json: @instruction_set, status: :created, location: @instruction_set }
      else
        format.html { render action: "new" }
        format.json { render json: @instruction_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instruction_sets/1
  # PUT /instruction_sets/1.json
  def update
    @instruction_set = InstructionSet.get(params[:id])

    respond_to do |format|
      if @instruction_set.update(params[:instruction_set])
        format.html { redirect_to @instruction_set, notice: 'Instruction set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instruction_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruction_sets/1
  # DELETE /instruction_sets/1.json
  def destroy
    @instruction_set = InstructionSet.get(params[:id])
    @instruction_set.destroy

    respond_to do |format|
      format.html { redirect_to instruction_sets_url }
      format.json { head :no_content }
    end
  end
end

class InstructionsController < ApplicationController
  # GET /instructions
  # GET /instructions.json
  @@instruction_set_id = 1

  def index
    @instructions = Instruction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instructions }
    end
  end

  # GET /instructions/1
  # GET /instructions/1.json
  def show
    @instruction = Instruction.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instruction }
    end
  end

  # GET /instructions/new
  # GET /instructions/new.json
  def new 
    @instruction = Instruction.new(params[:set_id])
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instruction }
    end
  end

  # GET /instructions/1/edit
  def edit
    @instruction = Instruction.get(params[:id])
  end

  # POST /instructions
  # POST /instructions.json
  def create
    
    debugger
    @current_set_list = Instruction.all(:instruction_set_id => @@instruction_set_id)

    respond_to do |format|
      if @instruction.save
        format.html { render 'instruction_sets/show', notice: 'Instruction was successfully created.' }
        format.json { render json: @instruction, status: :created, location: @instruction }
      else

        format.html { render action: "new" }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instructions/1
  # PUT /instructions/1.json
  def update
    #debugger
    @instruction = InstructionTemplate.instructions.create(params[:id])
    #@instruction_set = InstructionTemplate.first(:id => params[:instruction][:id].to_i).instructions << @instruction
    #@instruction_set.save
    
    respond_to do |format|
      if @instruction.update(params[:instruction])
        format.html { render 'instruction_sets/show', notice: 'Instruction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructions/1
  # DELETE /instructions/1.json
  def destroy
    @instruction = Instruction.get(params[:id])
    @instruction.destroy

    respond_to do |format|
      format.html { redirect_to instructions_url }
      format.json { head :no_content }
    end
  end
end

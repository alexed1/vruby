class InstructionTemplatesController < ApplicationController
  # GET /instruction_templates
  # GET /instruction_templates.json
  def index
    @instruction_templates = InstructionTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instruction_templates }
    end
  end

  # GET /instruction_templates/1
  # GET /instruction_templates/1.json
  def show
    @instruction_template = InstructionTemplate.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instruction_template }
    end
  end

  # GET /instruction_templates/new
  # GET /instruction_templates/new.json
  def new
    @instruction_template = InstructionTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instruction_template }
    end
  end

  # GET /instruction_templates/1/edit
  def edit
    @instruction_template = InstructionTemplate.get(params[:id])
  end

  # POST /instruction_templates
  # POST /instruction_templates.json
  def create
    @instruction_template = InstructionTemplate.new(params[:instruction_template])

    respond_to do |format|
      if @instruction_template.save
        format.html { redirect_to @instruction_template, notice: 'Instruction template was successfully created.' }
        format.json { render json: @instruction_template, status: :created, location: @instruction_template }
      else
        format.html { render action: "new" }
        format.json { render json: @instruction_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instruction_templates/1
  # PUT /instruction_templates/1.json
  def update
    @instruction_template = InstructionTemplate.get(params[:id])

    respond_to do |format|
      if @instruction_template.update(params[:instruction_template])
        format.html { redirect_to @instruction_template, notice: 'Instruction template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instruction_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruction_templates/1
  # DELETE /instruction_templates/1.json
  def destroy
    @instruction_template = InstructionTemplate.get(params[:id])
    @instruction_template.destroy

    respond_to do |format|
      format.html { redirect_to instruction_templates_url }
      format.json { head :no_content }
    end
  end
end

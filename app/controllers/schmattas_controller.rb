class SchmattasController < ApplicationController
  # GET /schmattas
  # GET /schmattas.json
  def index
    @schmattas = Schmatta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schmattas }
    end
  end

  # GET /schmattas/1
  # GET /schmattas/1.json
  def show
    @schmatta = Schmatta.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schmatta }
    end
  end

  # GET /schmattas/new
  # GET /schmattas/new.json
  def new
    @schmatta = Schmatta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schmatta }
    end
  end

  # GET /schmattas/1/edit
  def edit
    @schmatta = Schmatta.get(params[:id])
  end

  # POST /schmattas
  # POST /schmattas.json
  def create
    @schmatta = Schmatta.new(params[:schmatta])

    respond_to do |format|
      if @schmatta.save
        format.html { redirect_to @schmatta, notice: 'Schmatta was successfully created.' }
        format.json { render json: @schmatta, status: :created, location: @schmatta }
      else
        format.html { render action: "new" }
        format.json { render json: @schmatta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schmattas/1
  # PUT /schmattas/1.json
  def update
    @schmatta = Schmatta.get(params[:id])

    respond_to do |format|
      if @schmatta.update(params[:schmatta])
        format.html { redirect_to @schmatta, notice: 'Schmatta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schmatta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schmattas/1
  # DELETE /schmattas/1.json
  def destroy
    @schmatta = Schmatta.get(params[:id])
    @schmatta.destroy

    respond_to do |format|
      format.html { redirect_to schmattas_url }
      format.json { head :no_content }
    end
  end
end

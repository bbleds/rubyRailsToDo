class BrodosController < ApplicationController
  before_action :set_brodo, only: [:show, :edit, :update, :destroy]

  # GET /brodos
  # GET /brodos.json
  def index
    @brodos = Brodo.all
  end

  # GET /brodos/1
  # GET /brodos/1.json
  def show
  end

  # GET /brodos/new
  def new
    @brodo = Brodo.new
  end

  # GET /brodos/1/edit
  def edit
  end

  # POST /brodos
  # POST /brodos.json
  def create
    @brodo = Brodo.new(brodo_params)

    respond_to do |format|
      if @brodo.save
        format.html { redirect_to @brodo, notice: 'Brodo was successfully created.' }
        format.json { render :show, status: :created, location: @brodo }
      else
        format.html { render :new }
        format.json { render json: @brodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brodos/1
  # PATCH/PUT /brodos/1.json
  def update
    respond_to do |format|
      if @brodo.update(brodo_params)
        format.html { redirect_to @brodo, notice: 'Brodo was successfully updated.' }
        format.json { render :show, status: :ok, location: @brodo }
      else
        format.html { render :edit }
        format.json { render json: @brodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brodos/1
  # DELETE /brodos/1.json
  def destroy
    @brodo.destroy
    respond_to do |format|
      format.html { redirect_to brodos_url, notice: 'Brodo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brodo
      @brodo = Brodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brodo_params
      params.require(:brodo).permit(:title, :description)
    end
end

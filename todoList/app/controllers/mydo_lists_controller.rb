class MydoListsController < ApplicationController
  before_action :set_mydo_list, only: [:show, :edit, :update, :destroy]

  # GET /mydo_lists
  # GET /mydo_lists.json
  def index
    @mydo_lists = MydoList.all
  end

  # GET /mydo_lists/1
  # GET /mydo_lists/1.json
  def show
  end

  # GET /mydo_lists/new
  def new
    @mydo_list = MydoList.new
  end

  # GET /mydo_lists/1/edit
  def edit
  end

  # POST /mydo_lists
  # POST /mydo_lists.json
  def create
    @mydo_list = MydoList.new(mydo_list_params)

    respond_to do |format|
      if @mydo_list.save
        format.html { redirect_to @mydo_list, notice: 'Mydo list was successfully created.' }
        format.json { render :show, status: :created, location: @mydo_list }
      else
        format.html { render :new }
        format.json { render json: @mydo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mydo_lists/1
  # PATCH/PUT /mydo_lists/1.json
  def update
    respond_to do |format|
      if @mydo_list.update(mydo_list_params)
        format.html { redirect_to @mydo_list, notice: 'Mydo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @mydo_list }
      else
        format.html { render :edit }
        format.json { render json: @mydo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydo_lists/1
  # DELETE /mydo_lists/1.json
  def destroy
    @mydo_list.destroy
    respond_to do |format|
      format.html { redirect_to mydo_lists_url, notice: 'Mydo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mydo_list
      @mydo_list = MydoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mydo_list_params
      params.require(:mydo_list).permit(:title, :description)
    end
end

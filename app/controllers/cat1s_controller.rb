class Cat1sController < ApplicationController
  before_action :set_cat1, only: [:show, :edit, :update, :destroy]

  # GET /cat1s
  # GET /cat1s.json
  def index
    @cat1s = Cat1.all
  end

  # GET /cat1s/1
  # GET /cat1s/1.json
  def show
  end

  # GET /cat1s/new
  def new
    @cat1 = Cat1.new
  end

  # GET /cat1s/1/edit
  def edit
  end

  # POST /cat1s
  # POST /cat1s.json
  def create
    @cat1 = Cat1.new(cat1_params)

    respond_to do |format|
      if @cat1.save
        format.html { redirect_to @cat1, notice: 'Cat1 was successfully created.' }
        format.json { render :show, status: :created, location: @cat1 }
      else
        format.html { render :new }
        format.json { render json: @cat1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat1s/1
  # PATCH/PUT /cat1s/1.json
  def update
    respond_to do |format|
      if @cat1.update(cat1_params)
        format.html { redirect_to @cat1, notice: 'Cat1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat1 }
      else
        format.html { render :edit }
        format.json { render json: @cat1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat1s/1
  # DELETE /cat1s/1.json
  def destroy
    @cat1.destroy
    respond_to do |format|
      format.html { redirect_to cat1s_url, notice: 'Cat1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat1
      @cat1 = Cat1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat1_params
      params.require(:cat1).permit(:name)
    end
end

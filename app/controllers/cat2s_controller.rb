class Cat2sController < ApplicationController
  before_action :set_cat2, only: [:show, :edit, :update, :destroy]

  # GET /cat2s
  # GET /cat2s.json
  def index
    @cat2s = Cat2.all
  end

  # GET /cat2s/1
  # GET /cat2s/1.json
  def show
  end

  # GET /cat2s/new
  def new
    @cat2 = Cat2.new
  end

  # GET /cat2s/1/edit
  def edit
  end

  # POST /cat2s
  # POST /cat2s.json
  def create
    @cat2 = Cat2.new(cat2_params)

    respond_to do |format|
      if @cat2.save
        format.html { redirect_to @cat2, notice: 'Cat2 was successfully created.' }
        format.json { render :show, status: :created, location: @cat2 }
      else
        format.html { render :new }
        format.json { render json: @cat2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat2s/1
  # PATCH/PUT /cat2s/1.json
  def update
    respond_to do |format|
      if @cat2.update(cat2_params)
        format.html { redirect_to @cat2, notice: 'Cat2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat2 }
      else
        format.html { render :edit }
        format.json { render json: @cat2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat2s/1
  # DELETE /cat2s/1.json
  def destroy
    @cat2.destroy
    respond_to do |format|
      format.html { redirect_to cat2s_url, notice: 'Cat2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat2
      @cat2 = Cat2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat2_params
      params.require(:cat2).permit(:cat1_id, :name)
    end
end

class Cat3sController < ApplicationController
  before_action :set_cat3, only: [:show, :edit, :update, :destroy]

  # GET /cat3s
  # GET /cat3s.json
  def index
    @cat3s = Cat3.all
  end

  # GET /cat3s/1
  # GET /cat3s/1.json
  def show
  end

  # GET /cat3s/new
  def new
    @cat3 = Cat3.new
  end

  # GET /cat3s/1/edit
  def edit
  end

  # POST /cat3s
  # POST /cat3s.json
  def create
    @cat3 = Cat3.new(cat3_params)

    respond_to do |format|
      if @cat3.save
        format.html { redirect_to @cat3, notice: 'Cat3 was successfully created.' }
        format.json { render :show, status: :created, location: @cat3 }
      else
        format.html { render :new }
        format.json { render json: @cat3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat3s/1
  # PATCH/PUT /cat3s/1.json
  def update
    respond_to do |format|
      if @cat3.update(cat3_params)
        format.html { redirect_to @cat3, notice: 'Cat3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat3 }
      else
        format.html { render :edit }
        format.json { render json: @cat3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat3s/1
  # DELETE /cat3s/1.json
  def destroy
    @cat3.destroy
    respond_to do |format|
      format.html { redirect_to cat3s_url, notice: 'Cat3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat3
      @cat3 = Cat3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat3_params
      params.require(:cat3).permit(:cat2_id, :name)
    end
end

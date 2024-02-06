class OdersController < ApplicationController
  before_action :set_oder, only: %i[ show edit update destroy ]

  # GET /oders or /oders.json
  def index
    @oders = Oder.all
  end

  # GET /oders/1 or /oders/1.json
  def show
  end

  # GET /oders/new
  def new
    @oder = Oder.new
    5.times { @oder.products.build }
  end

  # GET /oders/1/edit
  def edit
  end

  # POST /oders or /oders.json
  def create
    @oder = Oder.new(oder_params)
    respond_to do |format|
      if @oder.save
        format.html { redirect_to @oder, notice: "Oder was successfully created." }
        format.json { render :show, status: :created, location: @oder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oders/1 or /oders/1.json
  def update
    respond_to do |format|
      if @oder.update(oder_params)
        format.html { redirect_to @oder, notice: "Oder was successfully updated." }
        format.json { render :show, status: :ok, location: @oder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oders/1 or /oders/1.json
  def destroy
    @oder.products.destroy_all
    respond_to do |format|
      format.html { redirect_to oders_url, notice: "Oder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oder
      @oder = Oder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oder_params
      params.require(:oder).permit(:title, products_attributes: [:id, :name, :location, :kind, :level, :volume,:_destroy])
    end
end

class ProzessesController < ApplicationController
  before_action :set_prozess, only: [:show, :edit, :update, :destroy]

  # GET /prozesses
  # GET /prozesses.json
  def index
    @prozesses = Prozess.all
  end

  # GET /prozesses/1
  # GET /prozesses/1.json
  def show
  end

  # GET /prozesses/new
  def new
    @prozess = Prozess.new
  end

  # GET /prozesses/1/edit
  def edit
  end

  # POST /prozesses
  # POST /prozesses.json
  def create
    @prozess = Prozess.new(prozess_params)

    respond_to do |format|
      if @prozess.save
        format.html { redirect_to @prozess, notice: 'Prozess was successfully created.' }
        format.json { render :show, status: :created, location: @prozess }
      else
        format.html { render :new }
        format.json { render json: @prozess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prozesses/1
  # PATCH/PUT /prozesses/1.json
  def update
    respond_to do |format|
      if @prozess.update(prozess_params)
        format.html { redirect_to @prozess, notice: 'Prozess was successfully updated.' }
        format.json { render :show, status: :ok, location: @prozess }
      else
        format.html { render :edit }
        format.json { render json: @prozess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prozesses/1
  # DELETE /prozesses/1.json
  def destroy
    @prozess.destroy
    respond_to do |format|
      format.html { redirect_to prozesses_url, notice: 'Prozess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prozess
      @prozess = Prozess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prozess_params
      params.require(:prozess).permit(:title, :istprozess, :description, :abletoviernull, :bestsolution, :istproz_id, :department)
    end
end

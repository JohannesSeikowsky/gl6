class WritersController < ApplicationController
  before_action :set_writer, only: [:show, :edit, :update, :destroy]

  # GET /writers
  # GET /writers.json
  def index
    @writers = Writer.all
  end

  # GET /writers/1
  # GET /writers/1.json
  def show
  end

  # GET /writers/new
  def new
    @writer = Writer.new
  end

  # GET /writers/1/edit
  def edit
  end

  # POST /writers
  # POST /writers.json
  def create
    @writer = Writer.new(writer_params)
      if @writer.save
        GeneralMailer.new_writer_alert(writer_params[:name], writer_params[:email]).deliver
        redirect_to thank_you_path
      else
        GeneralMailer.new_writer_alert(writer_params[:name], writer_params[:email]).deliver
        redirect_to thank_you_path
      end
  end

  # PATCH/PUT /writers/1
  # PATCH/PUT /writers/1.json
  def update
    respond_to do |format|
      if @writer.update(writer_params)
        format.html { redirect_to @writer, notice: 'Writer was successfully updated.' }
        format.json { render :show, status: :ok, location: @writer }
      else
        format.html { render :edit }
        format.json { render json: @writer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writers/1
  # DELETE /writers/1.json
  def destroy
    @writer.destroy
    respond_to do |format|
      format.html { redirect_to writers_url, notice: 'Writer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writer
      @writer = Writer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def writer_params
      params.require(:writer).permit(:name, :email)
    end
end

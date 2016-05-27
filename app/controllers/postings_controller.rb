class PostingsController < ApplicationController
 

  # GET /postings
  # GET /postings.json
  def index
    @posting = Posting.all
  end

  # GET /postings/1
  # GET /postings/1.json
  def show
    @posting = Posting.find(params[:id])
  end

  # GET /postings/new
  def new
    @posting = Posting.new
  end

  # GET /postings/1/edit
  def edit
    @posting = Posting.find(params[:id])
  end

  # POST /postings
  # POST /postings.json
  def create
    @posting = Posting.new(posting_params)


    respond_to do |format|
      if @posting.save
        format.html { redirect_to @posting, notice: 'Posting was successfully created.' }
        format.json { render :show, status: :created, location: @posting }
      else
        format.html { render :new }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postings/1
  # PATCH/PUT /postings/1.json
  def update
    respond_to do |format|
      @posting = Posting.find(params[:id])
      byebug
      if @posting.update_attributes(posting_params)
        format.html { redirect_to @posting, notice: 'Posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @posting }
      else
        format.html { render :edit }
        format.json { render json: @postings.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postings/1
  # DELETE /postings/1.json
    def destroy
      @posting = Posting.find(params[:id])
      @posting.destroy
      redirect_to :postings, notice: "Successfully deleted!!!"
    end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posting
      @postings = Posting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posting_params
      params.require(:posting).permit(:title, :location, :contact, :url, :notes, :date_applied, :company, :attachment)
    end

    def user_params
      params.require(:user).permit(:attachment)
    end
end

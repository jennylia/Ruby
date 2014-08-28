class Articles1sController < ApplicationController
  before_action :set_articles1, only: [:show, :edit, :update, :destroy]

  # GET /articles1s
  # GET /articles1s.json
  def index
    @articles1s = Articles1.all
  end

  # GET /articles1s/1
  # GET /articles1s/1.json
  def show
  end

  # GET /articles1s/new
  def new
    @articles1 = Articles1.new
  end

  # GET /articles1s/1/edit
  def edit
  end

  # POST /articles1s
  # POST /articles1s.json
  def create
    @articles1 = Articles1.new(articles1_params)

    respond_to do |format|
      if @articles1.save
        format.html { redirect_to @articles1, notice: 'Articles1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @articles1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @articles1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles1s/1
  # PATCH/PUT /articles1s/1.json
  def update
    respond_to do |format|
      if @articles1.update(articles1_params)
        format.html { redirect_to @articles1, notice: 'Articles1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @articles1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles1s/1
  # DELETE /articles1s/1.json
  def destroy
    @articles1.destroy
    respond_to do |format|
      format.html { redirect_to articles1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articles1
      @articles1 = Articles1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articles1_params
      params.require(:articles1).permit(:title, :body)
    end
end

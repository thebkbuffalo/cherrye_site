class PlaywrightsController < ApplicationController
  before_action :set_playwright, only: [:show, :edit, :update, :destroy]

  # GET /playwrights
  # GET /playwrights.json
  def index
    @playwrights = Playwright.all
  end

  # GET /playwrights/1
  # GET /playwrights/1.json
  def show
  end

  # GET /playwrights/new
  def new
    @playwright = Playwright.new
  end

  # GET /playwrights/1/edit
  def edit
  end

  # POST /playwrights
  # POST /playwrights.json
  def create
    @playwright = Playwright.new(playwright_params)

    respond_to do |format|
      if @playwright.save
        format.html { redirect_to @playwright, notice: 'Playwright was successfully created.' }
        format.json { render :show, status: :created, location: @playwright }
      else
        format.html { render :new }
        format.json { render json: @playwright.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playwrights/1
  # PATCH/PUT /playwrights/1.json
  def update
    respond_to do |format|
      if @playwright.update(playwright_params)
        format.html { redirect_to @playwright, notice: 'Playwright was successfully updated.' }
        format.json { render :show, status: :ok, location: @playwright }
      else
        format.html { render :edit }
        format.json { render json: @playwright.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playwrights/1
  # DELETE /playwrights/1.json
  def destroy
    @playwright.destroy
    respond_to do |format|
      format.html { redirect_to playwrights_url, notice: 'Playwright was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playwright
      @playwright = Playwright.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playwright_params
      params.require(:playwright).permit(:happening_now_title, :happening_now_description, :coming_up_title, :coming_up_description, :press, :happening_now_prod_still, :up_coming_prod_still)
    end
end

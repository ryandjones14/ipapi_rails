class BeersController < ApplicationController
  before_action :set_beer, only: %i[ show edit update ]

  # GET /beers or /beers.json
  def index
    @beers = Beer.all
    @beers[0..10].each do |beer|
      if beer.brewery_id
        beer = helpers.use_brewery_name(beer)
      end
    end
  end

  # GET /beers/1 or /beers/1.json
  def show
  end

  # GET /beers/new
  def new
    @beer = Beer.new
  end

  # GET /beers/1/edit
  def edit
  end

  # POST /beers or /beers.json
  def create
    @beer = Beer.new(beer_params)

    respond_to do |format|
      if @beer.save
        format.html { redirect_to @beer, notice: "Beer was successfully created." }
        format.json { render :show, status: :created, location: @beer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beers/1 or /beers/1.json
  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.html { redirect_to @beer, notice: "Beer was successfully updated." }
        format.json { render :show, status: :ok, location: @beer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beer_params
      params.require(:beer).permit(:id, :brewery_id, :cat_id, :style_id, :abv, :ibu, :srm, :upc, :last_mod)
    end
end

class IngredientsController < ProtectedController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  # GET /ingredients
  def index
    # @ingredients = Ingredient.all
    @ingredients = current_user.ingredients.all

    render json: @ingredients
  end

  # GET /ingredients/1
  def show
    render json: @ingredient
  end

  # POST /ingredients
  def create
    # @ingredient = Ingredient.new(ingredient_params)
    @ingredient = current_user.ingredients.build(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  def update
    if @ingredient.update(ingredient_params)
      render json: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ingredient
    # @ingredient = Ingredient.find(params[:id])
    @ingredient = current_user.ingredients.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ingredient_params
    params.require(:ingredient).permit(:ingredient)
  end
end
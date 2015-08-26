require_relative 'config/environment'

# map "/ingredients" do
#   run IngredientsController
# end
#
# map "/cocktails" do
#   run CocktailsController
# end

use IngredientsController
run CocktailsController

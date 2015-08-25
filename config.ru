require_relative 'config/environment'
class App
  def call(env)
    request = Rack::Request.new(env)
    if request.path == '/cocktails'
      CocktailsController.new.index
    elsif request.path == "/ingredients"
      controller = IngredientsController.new(request)
      controller.route!
    else
      Rack::Response.new("Not Found", 404)
    end
  end
end

use Rack::ContentType
run App.new

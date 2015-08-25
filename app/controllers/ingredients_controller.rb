class IngredientsController
  attr_reader :request
  def initialize(request)
    @request = request
  end

  def route!
    if request.params["id"]
      show
    else
      index
    end
  end

  def index
    ingredients = Ingredient.all
    template = File.read("app/views/ingredients/index.html.erb")
    result = ERB.new(template).result(binding)
    Rack::Response.new(result)
  end

  def show
    ingredient = Ingredient.find(request.params["id"])
    template = File.read("app/views/ingredients/show.html.erb")
    result = ERB.new(template).result(binding)
    Rack::Response.new(result)
  end
end

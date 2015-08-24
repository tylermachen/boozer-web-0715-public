class CocktailsController
  def index
    cocktails = Cocktail.all
    template = File.read('app/views/cocktails/index.html.erb')
    result = ERB.new(template).result(binding)
    Rack::Response.new(result)
  end
end

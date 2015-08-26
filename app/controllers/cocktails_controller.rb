class CocktailsController < Sinatra::Base
  set :root, "#{settings.root}/.."
  get '/cocktails' do
    @cocktails = Cocktail.all
    erb :"cocktails/index"
  end

  get 'cocktails/:id' do
    @cocktail = Cocktail.find(params[:id])
    erb :"cocktails/show"
  end
end

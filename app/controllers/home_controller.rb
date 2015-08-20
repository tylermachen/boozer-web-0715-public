class HomeController
  def self.run
    drinks = Cocktail.offset(10).limit(10)
    CocktailIndexView.new(drinks).run
    puts "Which would you like to learn how to make?"
    selection = gets.to_i
    drink = Cocktail.find(selection)
    CocktailDetailsView.new(drink).run
    self.run
  end
end

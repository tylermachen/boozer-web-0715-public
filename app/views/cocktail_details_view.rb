class CocktailDetailsView
  attr_reader :item
  def initialize(item)
    @item = item
  end

  def run
    puts item.name
    puts item.description
    item.proportions.each do |proportion|
      puts "#{proportion.amount} #{proportion.ingredient.name}"
    end

    puts item.instructions
    puts item.source
  end
end

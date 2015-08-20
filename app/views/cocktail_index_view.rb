class CocktailIndexView
  def initialize(collection)
    @collection = collection
  end

  def run
    @collection.each do |item|
      puts "#{item.id}. #{item.name}"
    end
  end
end

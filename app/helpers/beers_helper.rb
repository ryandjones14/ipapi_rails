module BeersHelper
  def use_brewery_name(beer)
    puts "beer name is #{beer.name}"
    puts "looking for the brewery that makes #{beer.name}"
    brewery = Brewery.find_by(brewery_id: beer.brewery_id)
    puts "brewery name is #{brewery.name}"

    beer.brewery_name = brewery.name
    return beer
  end
end

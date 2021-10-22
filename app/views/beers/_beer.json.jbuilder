json.extract! beer, :id, :id, :brewery_id, :cat_id, :style_id, :abv, :ibu, :srm, :upc, :last_mod, :created_at, :updated_at
json.url beer_url(beer, format: :json)

class Beer
  include Mongoid::Document
  field :name, type: String
  field :id, type: String
  field :brewery_id, type: String
  field :brewery_name, type: String
  field :cat_id, type: String
  field :style_id, type: String
  field :abv, type: String
  field :ibu, type: String
  field :srm, type: String
  field :upc, type: String
  field :last_mod, type: String
end

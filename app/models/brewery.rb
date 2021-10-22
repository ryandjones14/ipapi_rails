class Brewery
  include Mongoid::Document
  field :id, type: String
  field :name, type: String
  field :address1, type: String
  field :city, type: String
  field :state, type: String
  field :code, type: String
  field :country, type: String
  field :descript, type: String
end

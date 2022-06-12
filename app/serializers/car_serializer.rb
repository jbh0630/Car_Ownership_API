class CarSerializer
  include FastJsonapi::ObjectSerializer
  attributes :year, :make, :model, :price, :person_id
end

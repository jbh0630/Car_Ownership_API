class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :email

  has_many :cars
end

def cars
  object.cars.order("created_at asc")
end
class Geolocation < ActiveRecord::Base
#para validar los campos
#presence valida que el elemento no este vacio

validates :title, presence: true, uniqueness: true
validates :body,  presence:true, length: {  minimum: 20 }
#validates : username , format: { with: /expresionregular/}
end

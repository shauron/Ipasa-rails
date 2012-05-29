class Property < ActiveRecord::Base
  attr_accessible :comentario, :direccion, :google, :locality_id, :nombre, :num_ext, :num_int, :precio, :status_oferta, :status_renta, :type_id
end

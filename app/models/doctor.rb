class Doctor < ApplicationRecord
has_many :apointments , dependent: :destroy (could not get this to work error:uknown key dependant)

end
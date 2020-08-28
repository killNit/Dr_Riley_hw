class Patient < ApplicationRecord
has_many :apointments, dependent: :destroy
has_many :physicians, :through => :appointments
end

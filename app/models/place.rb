class Place < ApplicationRecord
   has_one :service, dependent: :destroy
end

class Property < ApplicationRecord
    monetize :price_cents, allow_nil: true

end

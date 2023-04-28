class MtgCard < ApplicationRecord
    validates_presence_of :Name, :Set, :Set_Number, Quantity: true
end

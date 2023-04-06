json.extract! mtg_card, :id, :Name, :Set, :Set_Number, :Quantity, :created_at, :updated_at
json.url mtg_card_url(mtg_card, format: :json)

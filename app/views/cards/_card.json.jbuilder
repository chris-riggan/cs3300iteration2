json.extract! card, :id, :Name, :Effect, :Set, :set_number, :created_at, :updated_at
json.url card_url(card, format: :json)

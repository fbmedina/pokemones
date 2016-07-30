json.extract! poke_user, :id, :level, :created_at, :updated_at
json.url poke_user_url(poke_user, format: :json)
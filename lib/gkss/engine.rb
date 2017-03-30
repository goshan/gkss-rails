module Gkss
  class Engine < Rails::Engine
    # Same as doing `mount Gkss::Engine => '/stylesheets', as: :gkss`
    engine_name :gkss
  end
end

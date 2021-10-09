require './lib/deep_freezable'

class Bank
  extend DeepFreezable

  COUNTRIES = deep_freezable({'Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee'})
end
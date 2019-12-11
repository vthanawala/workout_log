class Workout < ApplicationRecord
  # Direct associations

  has_one    :lift,
             :dependent => :destroy

  has_one    :run,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end

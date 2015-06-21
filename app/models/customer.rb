class Customer < ActiveRecord::Base
  has_many :events, foreign_key: :customer_id, primary_key: :customer_id

  # TODO: use JOIN to minimize DB calls
  def number_of_events
    self.events.length
  end
end

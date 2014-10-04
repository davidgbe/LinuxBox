class App < ActiveRecord::Base
  belongs_to :user
  before_create :generate_keys

  def generate_keys
    self.key = SecureRandom.hex
    self.secret = SecureRandom.hex
  end

end

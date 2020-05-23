class Token < ApplicationRecord
  belongs_to :user

  before_create :generate_token
  before_create :expiry

  def generate_token
    begin
      self.key = SecureRandom.urlsafe_base64(129)
    end while self.class.exists?(key: key)
  end

  def expiry
    self.expires_at = Time.now + eval(CONFIG[:token_expiry])
  end

  def expired?
    return true if expires_at.nil?
    Time.now > expires_at
  end

  def still_valid?
    !expired
  end
end
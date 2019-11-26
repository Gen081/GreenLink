class FplAccount < ApplicationRecord
  belongs_to :user
  has_many :bills, dependent: :destroy
  has_many :syncs, dependent: :destroy

  include Encryptable
  attr_encrypted :username, :password

  def scrape_for_bills
    BillScrapeJob.perform_later(self)
  end

  default_scope { includes(user: :profile)}
  scope :testing,         -> { where(zipcode: "33024" )}
  def scrape_for_bills
    BillScrapeJob.perform_later(self)
  end
  def as_json(options={})
    {
      id:                 id,
      zipcode:            zipcode,
      user_email:         user.email,
      points:             rand(1000)
    }
  end
end

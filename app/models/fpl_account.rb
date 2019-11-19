class FplAccount < ApplicationRecord
  belongs_to :user
  has_many :bills, dependent: :destroy

  include Encryptable
  attr_encrypted :username, :password

  after_create_commit :scrape_for_bills

  def scrape_for_bills
    BillScrapeJob.perform_later(self)
  end
end

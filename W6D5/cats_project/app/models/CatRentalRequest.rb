class CatRentalRequest < ApplicationRecord
  validates :cat_id, :end_date, :start_date, :status, presence: true
  validates :status

  belongs_to :cat

  def overlapping_requests
    .where.not(id: self.id)
    .where(cat_id: cat_id)
    .where.not('start_date > :end_date OR end_date < :dtart_date', start_date: start_date, end_date: end_date)
  end
end
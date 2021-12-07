require 'action_view'

class Cat < ApplicationRecord
ActionView::Helpers::DateHelper
COLOR = %w(black orange pink green).freeze

validates :color, inclusion: COLOR
validates :sex, inclusion: %w(M F)
validates :birth_date, :color, :name, :sex, presence: true

  def age
    @age = time_ago_in_words(birth_date)    
  end

  has_many :requests
    foreign_id: :cat_id,
    class_name: :CatRentalRequest,
    dependet: :destroy
    
end
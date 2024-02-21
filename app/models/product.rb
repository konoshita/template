class Product < ApplicationRecord
  belongs_to :oder
  validates :name, presence: true
  validates :location, presence: true
  validates :kind, presence: true
  validates :level, presence: true
  validates :volume, presence: true
end

class Prozess < ApplicationRecord


  belongs_to :istproz, class_name: "Prozess"
  has_many :sollproz, class_name: "Prozess", foreign_key: "istproz_id"
  accepts_nested_attributes_for :sollproz
end
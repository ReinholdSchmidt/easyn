class Prozess < ApplicationRecord



  has_many :soll_prozesses, class_name: "Prozess", foreign_key: "istproz_id", dependent: :destroy, inverse_of: :istproz
  belongs_to :istproz, class_name: "Prozess", inverse_of: :soll_prozesses , optional: true
  accepts_nested_attributes_for :soll_prozesses

end

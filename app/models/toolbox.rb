class Toolbox < ApplicationRecord

  #<!--Der zweite Teil von Has_many "dependent" ist dafür veranwortlich das alle dazugehörenden Choices gelöscht werden -->

  has_many :choices, dependent: :destroy
  validates :title, presence: true,
          length: {minimum: 5}




end

class Choice < ApplicationRecord
  validates :title, :rating,  :presence => true

  validates :rating  , numericality: true
  validates :title, :length => {:minimum => 4}
  validates :title, :uniqueness => { :message => "Dieser Choice ist bereits vorhanden, bitte umbenennen"}
  validates :rating, :uniqueness => { :message => "Dieses Rating ist bereits vorhanden, bitte neue Punktzahl wählen. Jedes Rating [1...5] darf einmal vorhanden sein"}

  belongs_to :toolbox

end

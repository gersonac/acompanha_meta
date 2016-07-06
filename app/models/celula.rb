class Celula < ActiveRecord::Base
  belongs_to :planilha

  validates_presence_of :year, :month, :day, :value
end

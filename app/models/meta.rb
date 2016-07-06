class Meta < ActiveRecord::Base
  belongs_to :planilha

  validates_presence_of :year, :month, :value
end

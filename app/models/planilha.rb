class Planilha < ActiveRecord::Base
  after_create :montar

  belongs_to :user
  has_many :celulas, dependent: :destroy
  has_many :metas, dependent: :destroy

  validates_presence_of :meta

  def montar
    montar_metas

    (1..12).each do |month|
      montar_mes(month)
    end
  end

  def celulas_order(month)
    celulas.where(month: month).order(:month, :day)
  end

  def celulas_total(month)
    celulas.where(month: month).sum(:value)
  end

  private
    def montar_mes(month)
      date = Date.new self.year, month, 1

      days_month = date.all_month.map{ |d| d.day }

      days_month.each do |day|
        Celula.create! year: self.year, month: month, day: day, value: 0,
          planilha_id: self.id
      end
    end

    def montar_metas
      (1..12).each do |month|
        Meta.create! year: self.year, month: month, value: 0.0,
          planilha_id: self.id
      end
    end

end

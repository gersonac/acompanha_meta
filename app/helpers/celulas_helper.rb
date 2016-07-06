module CelulasHelper
  def show_cell(celula)
    date = Date.new celula.year, celula.month, celula.day

    if date.saturday? || date.sunday?
      date.strftime("%a")
    elsif celula.value == 0
      '-'
    else
      celula.value
    end
  end
end

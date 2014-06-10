class Destino < ActiveRecord::Base
  def valor
    if indicativo
      IcDestino.find(:first, :conditions => "indicativo = '#{indicativo}'").costo
    else
      0.0
    end
  end
end

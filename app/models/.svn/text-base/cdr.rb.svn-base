class Cdr < ActiveRecord::Base
  def self.table_name() 'cdr' end

  def minutos
    (billsec.to_f/60).ceil
  end

  def destino
    if dst.length == 7
      num = '351' + dst
    elsif dst.first == '0'
      num = dst[1..-1]
    end
    Destino.find_by_sql("select * from destinos where substr('#{num}', 1, length(indicativo||bloque)) = (indicativo||bloque)").first or
      Destino.new(:costo => 0.0)
  end    

  def valor_total
    destino.valor * minutos
  end
end

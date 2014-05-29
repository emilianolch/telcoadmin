class CdrSelect
  attr :desde
  attr :hasta
  attr :dcontext
  attr :dcontexts

  def initialize
    @desde = Date.today << 1
    @hasta = Date.today
    @dcontexts = Cdr.find_by_sql("select distinct dcontext from cdr where dcontext like '%-priv'").map {|c| [c.dcontext.sub('-priv', ''), c.dcontext]}
    @dcontext = @dcontexts[0][1]
  end
end

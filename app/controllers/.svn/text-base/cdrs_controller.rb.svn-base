class CdrsController < ApplicationController
  layout 'scaffold'
  before_filter :login_required

  # GET /cdrs
  # GET /cdrs.xml
  def index
    @cdr_select = CdrSelect.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cdrs }
    end
  end

  def listar
    @desde = Date.new(params[:cdr_select]['desde(1i)'].to_i, 
                      params[:cdr_select]['desde(2i)'].to_i, 
                      params[:cdr_select]['desde(3i)'].to_i)

    @hasta = Date.new(params[:cdr_select]['hasta(1i)'].to_i, 
                      params[:cdr_select]['hasta(2i)'].to_i, 
                      params[:cdr_select]['hasta(3i)'].to_i)

    @cdrs = Cdr.find(:all, :conditions => ["calldate >= ? and calldate <= ? and dcontext = ? and 
                                            disposition = 'ANSWERED' and 
					    (lastdata like '%sip.iplannetworks.net%' or lastdata like '%190.210.133.47%')",
                                           @desde.to_time, @hasta.to_time.end_of_day, params[:cdr_select][:dcontext]])

    @total_periodo = 0.0
    @cdrs.each { |cdr| @total_periodo += cdr.valor_total }

    render :partial => 'cdrlist'
  end

  # GET /cdrs/1
  # GET /cdrs/1.xml
  def show
    @cdr = Cdr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cdr }
    end
  end

  # GET /cdrs/new
  # GET /cdrs/new.xml
  def new
    @cdr = Cdr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cdr }
    end
  end

  # GET /cdrs/1/edit
  def edit
    @cdr = Cdr.find(params[:id])
  end

  # POST /cdrs
  # POST /cdrs.xml
  def create
    @cdr = Cdr.new(params[:cdr])

    respond_to do |format|
      if @cdr.save
        flash[:notice] = 'Cdr was successfully created.'
        format.html { redirect_to(@cdr) }
        format.xml  { render :xml => @cdr, :status => :created, :location => @cdr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cdr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cdrs/1
  # PUT /cdrs/1.xml
  def update
    @cdr = Cdr.find(params[:id])

    respond_to do |format|
      if @cdr.update_attributes(params[:cdr])
        flash[:notice] = 'Cdr was successfully updated.'
        format.html { redirect_to(@cdr) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cdr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cdrs/1
  # DELETE /cdrs/1.xml
  def destroy
    @cdr = Cdr.find(params[:id])
    @cdr.destroy

    respond_to do |format|
      format.html { redirect_to(cdrs_url) }
      format.xml  { head :ok }
    end
  end
end

class MotoristaController < ApplicationController
  # GET /motorista
  # GET /motorista.xml
  def index
    @motorista = Motoristum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motorista }
    end
  end

  # GET /motorista/1
  # GET /motorista/1.xml
  def show
    @motoristum = Motoristum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motoristum }
    end
  end

  # GET /motorista/new
  # GET /motorista/new.xml
  def new
    @motoristum = Motoristum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motoristum }
    end
  end

  # GET /motorista/1/edit
  def edit
    @motoristum = Motoristum.find(params[:id])
  end

  # POST /motorista
  # POST /motorista.xml
  def create
    @motoristum = Motoristum.new(params[:motoristum])

    respond_to do |format|
      if @motoristum.save
        format.html { redirect_to(@motoristum, :notice => 'Motoristum was successfully created.') }
        format.xml  { render :xml => @motoristum, :status => :created, :location => @motoristum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motoristum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /motorista/1
  # PUT /motorista/1.xml
  def update
    @motoristum = Motoristum.find(params[:id])

    respond_to do |format|
      if @motoristum.update_attributes(params[:motoristum])
        format.html { redirect_to(@motoristum, :notice => 'Motoristum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motoristum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /motorista/1
  # DELETE /motorista/1.xml
  def destroy
    @motoristum = Motoristum.find(params[:id])
    @motoristum.destroy

    respond_to do |format|
      format.html { redirect_to(motorista_url) }
      format.xml  { head :ok }
    end
  end
end

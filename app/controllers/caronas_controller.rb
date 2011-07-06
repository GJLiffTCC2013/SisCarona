class CaronasController < ApplicationController
  # GET /caronas
  # GET /caronas.xml
  def index
    @caronas = Carona.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caronas }
    end
  end

  # GET /caronas/1
  # GET /caronas/1.xml
  def show
    @carona = Carona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @carona }
    end
  end

  # GET /caronas/new
  # GET /caronas/new.xml
  def new
    @carona = Carona.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carona }
    end
  end

  # GET /caronas/1/edit
  def edit
    @carona = Carona.find(params[:id])
  end

  # POST /caronas
  # POST /caronas.xml
  def create
    @carona = Carona.new(params[:carona])

    respond_to do |format|
      if @carona.save
        format.html { redirect_to(@carona, :notice => 'Carona was successfully created.') }
        format.xml  { render :xml => @carona, :status => :created, :location => @carona }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @carona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caronas/1
  # PUT /caronas/1.xml
  def update
    @carona = Carona.find(params[:id])

    respond_to do |format|
      if @carona.update_attributes(params[:carona])
        format.html { redirect_to(@carona, :notice => 'Carona was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @carona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caronas/1
  # DELETE /caronas/1.xml
  def destroy
    @carona = Carona.find(params[:id])
    @carona.destroy

    respond_to do |format|
      format.html { redirect_to(caronas_url) }
      format.xml  { head :ok }
    end
  end
end

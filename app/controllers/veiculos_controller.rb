class VeiculosController < ApplicationController
  # GET /veiculos
  # GET /veiculos.xml
  def index
    @veiculos = Veiculo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @veiculos }
    end
  end

  # GET /veiculos/1
  # GET /veiculos/1.xml
  def show
    @veiculo = Veiculo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @veiculo }
    end
  end

  # GET /veiculos/new
  # GET /veiculos/new.xml
  def new
    @veiculo = Veiculo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @veiculo }
    end
  end

  # GET /veiculos/1/edit
  def edit
    @veiculo = Veiculo.find(params[:id])
  end

  # POST /veiculos
  # POST /veiculos.xml
  def create
    @veiculo = Veiculo.new(params[:veiculo])

    respond_to do |format|
      if @veiculo.save
        format.html { redirect_to(@veiculo, :notice => 'Veiculo was successfully created.') }
        format.xml  { render :xml => @veiculo, :status => :created, :location => @veiculo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @veiculo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /veiculos/1
  # PUT /veiculos/1.xml
  def update
    @veiculo = Veiculo.find(params[:id])

    respond_to do |format|
      if @veiculo.update_attributes(params[:veiculo])
        format.html { redirect_to(@veiculo, :notice => 'Veiculo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @veiculo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1
  # DELETE /veiculos/1.xml
  def destroy
    @veiculo = Veiculo.find(params[:id])
    @veiculo.destroy

    respond_to do |format|
      format.html { redirect_to(veiculos_url) }
      format.xml  { head :ok }
    end
  end
end

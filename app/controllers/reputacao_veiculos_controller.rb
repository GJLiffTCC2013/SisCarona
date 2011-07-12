class ReputacaoVeiculosController < ApplicationController
  # GET /reputacao_veiculos
  # GET /reputacao_veiculos.xml
  def index
    @reputacao_veiculos = ReputacaoVeiculo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reputacao_veiculos }
    end
  end

  # GET /reputacao_veiculos/1
  # GET /reputacao_veiculos/1.xml
  def show
    @reputacao_veiculo = ReputacaoVeiculo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reputacao_veiculo }
    end
  end

  # GET /reputacao_veiculos/new
  # GET /reputacao_veiculos/new.xml
  def new
    @reputacao_veiculo = ReputacaoVeiculo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reputacao_veiculo }
    end
  end

  # GET /reputacao_veiculos/1/edit
  def edit
    @reputacao_veiculo = ReputacaoVeiculo.find(params[:id])
  end

  # POST /reputacao_veiculos
  # POST /reputacao_veiculos.xml
  def create
    @reputacao_veiculo = ReputacaoVeiculo.new(params[:reputacao_veiculo])

    respond_to do |format|
      if @reputacao_veiculo.save
        format.html { redirect_to(@reputacao_veiculo, :notice => 'Voce reputou o veiculo com sucesso.') }
        format.xml  { render :xml => @reputacao_veiculo, :status => :created, :location => @reputacao_veiculo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reputacao_veiculo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reputacao_veiculos/1
  # PUT /reputacao_veiculos/1.xml
  def update
    @reputacao_veiculo = ReputacaoVeiculo.find(params[:id])

    respond_to do |format|
      if @reputacao_veiculo.update_attributes(params[:reputacao_veiculo])
        format.html { redirect_to(@reputacao_veiculo, :notice => 'A reputacao do veiculo foi atualizada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reputacao_veiculo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reputacao_veiculos/1
  # DELETE /reputacao_veiculos/1.xml
  def destroy
    @reputacao_veiculo = ReputacaoVeiculo.find(params[:id])
    @reputacao_veiculo.destroy

    respond_to do |format|
      format.html { redirect_to(reputacao_veiculos_url) }
      format.xml  { head :ok }
    end
  end
end

class ActvidadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_actvidad, only: [:show, :edit, :update, :destroy]
  

  # GET /actvidads
  # GET /actvidads.json
  def index
    if current_user.rol == "Admin"
    @actvidads = Actvidad.all
  else
    redirect_to get_act_path
  end


  end
   def get_act
    @actvidads = current_user.actvidads.where(estado_envio: true)
    @tipo = "Mis Actividades"
  end
    def invitado

    @actvidads = Actvidad.where(responsable_id: current_user.id).where(estado_envio: true)
    @tipo = "Actividades Invitado"
    render "get_act"
  end

 def set_act
    if current_user.rol == "Director" ||  current_user.rol == "Admin"
    @actvidads = Actvidad.where(user_id: current_user.id)
      else
    redirect_to get_act_path
  end
end



  # GET /actvidads/1
  # GET /actvidads/1.json
  def show
  end

  # GET /actvidads/new
  def new
    @actvidad = Actvidad.new
  end

  # GET /actvidads/1/edit
  def edit
  end

  # POST /actvidads
  # POST /actvidads.json
  def create
    @actvidad = Actvidad.new(actvidad_params)
    @actvidad.estado_cierre  = false
    num = Actvidad.where(tipo: @actvidad.tipo).maximum(:consecutivo)
    if num != nil
        num = num + 1

    else
        num = 1001
    end
    ano = Time.now.year.to_s
    ano = ano.remove("20") 

    tipo = get_tipo(@actvidad.tipo)
    code= "#{tipo}-#{num}-#{ano}" 
    @actvidad.codigo= code
    @actvidad.consecutivo = num
    respond_to do |format|
      if @actvidad.save
        
        format.html { redirect_to @actvidad, notice: 'Actvidad was successfully created.' }
        format.json { render :show, status: :created, location: @actvidad }
      else
        format.html { render :new }
        format.json { render json: @actvidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actvidads/1
  # PATCH/PUT /actvidads/1.json
  def update
    respond_to do |format|
      if @actvidad.update(actvidad_params)

        format.html { redirect_to @actvidad, notice: 'Actvidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @actvidad }
      else
        format.html { render :edit }
        format.json { render json: @actvidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actvidads/1
  # DELETE /actvidads/1.json
  def destroy
    @actvidad.destroy
    respond_to do |format|
      format.html { redirect_to actvidads_url, notice: 'Actvidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


def new_seguimiento
  @actvidad = Actvidad.find(params[:actvidad])
end

def create_seguimiento

  @actvidad = Seguimiento.create(user_id:params[:user_id],actvidad_id:params[:actvidad_id],descripcion:params[:descripcion],s_cierre:params[:s_cierre],porcentaje:params[:porcentaje],cierre:params[:cierre],anexo: params[:anexo])

if @actvidad.save

redirect_to actvidad_path(params[:actvidad_id])
end
  end

private
def get_tipo(x)
    if x == "Actividad"
                "ACT"
    elsif x == "Peticion"
                   "PET" 
    elsif x == "Queja"
                "QUE"
    elsif x == "Reclamo"
                    "REC"
    elsif x == "Felicitaciones"
                    "FEL"
      elsif x == "Solicitud"
                    "SOL"

  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actvidad
      @actvidad = Actvidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actvidad_params
      params.require(:actvidad).permit(:consecutivo, :tipo, :user_id, :prioridad, :responsable_id, :nombre, :descripcion, :anexo, :f_entrega, :porcentaje, :estado_cierre, :estado_envio, :contador, :codigo, :e_vencimiento , :user_ids => [])
    end
end

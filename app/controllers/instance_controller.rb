class InstanceController < ApplicationController

  def validate_vm
    if params.has? 'container_id'
      Instance.find(container_id: params(:container_id)).validate
    end
  end

  def available
    @instance = Instance.find(container_id: instance_params[:container_id])
  end

  def instance_params
    params.require(:instance).permit(:container_id)
  end

end

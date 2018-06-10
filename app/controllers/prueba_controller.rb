class PruebaController < ApplicationController
  def prueba
  end
  def set_permission
    @role = Role.find(params[:role])
    @permission = Permission.find(params[:permission])
    @role_permissions = @role.permissions.collect{|p| p.id}
    if @role_permissions.include?(@permission.id)
      @role.permissions.delete(@permission)
    else
      @role.permissions << @permission
      @role.save
    end
    redirect_to roles_path
  end
end

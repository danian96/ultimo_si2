class HomeController < ApplicationController
  def home
        render :layout => false
  end

  def index
  end

  def default
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "default"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "default"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def blue_dark
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "blue_dark"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "blue_dark"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def blue
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "blue"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "blue"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def default_dark
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "default_dark"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "default_dark"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def green_dark
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "green_dark"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "green_dark"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def green
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "green"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "green"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def megna_dark
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "megna_dark"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "megna_dark"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def megna
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "megna"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "megna"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def purple_dark
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "purple_dark"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "purple_dark"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def purple
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "purple"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "purple"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def red_dark
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "red_dark"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "red_dark"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end

  def red
    user = User.find(current_user.id)
    @personalization = Personalization.find_by_user_id(user.id)
    if @personalization.present?
      @personalization.name = "red"
      @personalization.save
    else
      @personalization = Personalization.new
      @personalization.name = "red"
      @personalization.user = current_user
      @personalization.save
    end
    redirect_to home_index_path, notice: 'Estilo Modificado.'
  end
end

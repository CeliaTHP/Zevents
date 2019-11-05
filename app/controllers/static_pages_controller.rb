class StaticPagesController < ApplicationController
before_action :authenticate_user!, only: [:ddsecret]
  def index
  end

  def secret
  end


end

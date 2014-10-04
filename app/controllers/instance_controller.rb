class InstanceController < ApplicationController
  def create
    Instance.create!
  end
end

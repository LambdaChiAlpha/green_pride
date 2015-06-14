class GammaController < ApplicationController
  before_filter :access_policy

  def access_policy
    restrict_to :gamma
  end
end

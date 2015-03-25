
class WenjuanController < ApplicationController
  skip_before_filter :verify_authenticity_token
 
  def create
    Questionare.create(answer: params.to_s)
    render nothing: true
  end
end

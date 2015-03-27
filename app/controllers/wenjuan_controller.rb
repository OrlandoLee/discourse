
class WenjuanController < ApplicationController
  skip_before_filter :verify_authenticity_token
 
  def create
    Jobs.enqueue(:save_questionare, answer: params.to_s)
    render nothing: true
  end
end

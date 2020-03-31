class AwsController < ApplicationController
  def index
    @aws = Awstext.all
  end
  def show
    @aws = Awstext.find(params[:id])
  end
end

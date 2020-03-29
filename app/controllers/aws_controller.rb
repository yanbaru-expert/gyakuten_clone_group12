class AwsController < ApplicationController
  def index
    @aws = Awstext.all
  end
end

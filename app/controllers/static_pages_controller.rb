class StaticPagesController < ApplicationController
  def home
    @dollar = Currency.new(:usd, 1)
    @euro = @dollar.convert(:eur)
  end

  def projects
  end

  def about
  end

  def contact
  end
end

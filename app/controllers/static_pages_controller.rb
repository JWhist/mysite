class StaticPagesController < ApplicationController
  def home
    @dollar = Currency.new(:usd, 1)
    @euro = @dollar.convert(:eur)
  end

  def projects
    @dollar = Currency.new(:usd, 42)
    @euro = @dollar.convert(:eur)
  end

  def about
  end

  def contact
  end
end

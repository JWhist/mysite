class StaticPagesController < ApplicationController

  def home
    @valid_types = ["USD", "EUR", "JPY", "GBP", "AUD", "CAD", "CNY", "HKD", "NZD", "CHF"]
  end

  def projects
    @valid_types = ["USD", "EUR", "JPY", "GBP", "AUD", "CAD", "CNY", "HKD", "NZD", "CHF"]
  end

  def about
  end

  def contact
  end

  def convert
    from_type = params['from_type']
    to_type = params['to_type']
    val = params['val'].to_f
    @in = Currency.new(from_type, val)
    @out = @in.convert(to_type)
    render partial: 'conversion', locals: {in_currency: @in, out_currency: @out}, layout: false
  end
end

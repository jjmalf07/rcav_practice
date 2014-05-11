class CalculationsController < ApplicationController
  def home
    @the_number = 9
    @interest_rate = 4
    @number_of_payments = 360
    @present_value = 260000
  end

  def sqr
    @the_number = params[:number].to_i
    @answer = @the_number**2
  end

  def sqrt
    @the_number = params[:number].to_i
    @answer = Math.sqrt(@the_number)
  end

  def pmt (@interest_rate, @number_of_payments, @present_value)
    @interest_rate = params[:interest_rate].to_i
    @number_of_payments = params[:number_of_payments].to_i
    @present_value = params[:present_value].to_i
    rate12 = @interest_rate/100.0/12
    numerator = @present_value*rate12
    denomenator = 1-(1+rate12)**-@number_of_payments
    pmt = numerator/denomenator
    @payment = "#{pmt(@interest_rate, @number_of_payments, @present_value)}"
  end

end

class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end 

  def calculate_square
    @num = params.fetch("square_input").to_f
    @num_squared = @num ** 2
    render({:template => "calculation_templates/square_results.html.erb"})
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end 

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @random = rand(@lower..@upper)
    render({:template => "calculation_templates/random_results.html.erb"})
  end

  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end 

  def calculate_square_root
    @num1 = params.fetch("square_root_input").to_f
    @num1_square_root = @num1 ** 0.5
    render({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end 

  def calculate_payment
    @apr = params.fetch("apr").to_f
    @principal = params.fetch("principal").to_f
    @years = params.fetch("years").to_f
    @payment = (@principal * ((1+@apr) ** @years) ) / (@years * 12).to_f

    render({:template => "calculation_templates/payment_results.html.erb"})
  end


end

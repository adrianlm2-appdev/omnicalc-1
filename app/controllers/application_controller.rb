class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end 
  def calculate_square
    @num = params.fetch("square_input").to_i
    @num_squared = @num ** 2
    render({:template => "calculation_templates/square_results.html.erb"})
  end

end

class AreasController < ApplicationController
  def square
    @a = params[:length_of_side].to_f
    @area = @a**2
  end

  def circle
    pi = 3.1416 # Close enough.
    @r = params[:radius].to_f
    @area = pi * @r ** 2
    #I don't get how to make pi work or how to make this read properly. Am I supposed to create a Model or use Math::PI or @pi

  end

  def triangle
    @b = params[:base].to_f
    @h = params[:vertical_height].to_f
    @area = 0.5 * @b * @h
  end
  #missing link in routes, missing : symbols

  def rectangle
    @w = params[:width].to_f
    @h = params[:height].to_f
    @area = @w * @h
  end
  #changed the routes section by adding a proper link to params :width and :height

  def trapezoid
    @a = params[:a].to_f
    @b = params[:b].to_f
    @h = params[:vertical_height].to_f
    @area = 0.5 * (@a + @b) * @h
  end
  #completely missing trapezoid in controller and view was labeled differently. followed routes.rb to determine params

  def ellipse
    pi = 3.1416 # Close enough.
    @a = params[:a].to_f
    @b = params[:b].to_f
    @area = pi * @a * @b
  end

  def random
    #@rc = params[random_circles]
    @radii = [rand(1..20), rand(1..20), rand(1..20), rand(1..20), rand(1..20)]
  end
end

class HomeController < ApplicationController

  def index
    render({ template: 'home/_home'})
  end

  def dice_roll
    @num_dice = params.fetch("x").to_i
      
    @sides = params.fetch("y").to_i
      
    @rolls = []
      
      @num_dice.times do
        die = rand(1..@sides)
      
        @rolls.push(die)
      end
      
    render({ template: 'home/_dice_roll' })
  end

end

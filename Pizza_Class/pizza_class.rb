class Pizza

  def initialize(toppings)
    @topping_1 = toppings
    @cookedness = "unbaked"
    @slices = 0
    @quantity_remaining = 1
  end

  def bake
    if @cookedness == "unbaked"
      @cookedness = "baked"
    else
      return "Pizza is already baked"
    end
  end

  def slice
    if @cookedness == "unbaked"
      return "Pizza cannot be sliced before it is baked."
    elsif @slices < 6
      @slices += 2
    else
      return "The pizza has already been sliced the maximum number of times."
    end
  end

  def eat
    if @slices > 0
      @slices -= 1
      @quantity_remaining -= 1/3
      return "yummy"
    elsif @quantity_remaining > 0
      return "The pizza needs to be sliced."
    else
      return "Someone finished the pizza already!"
    end
  end

end

class Pizzeria
  def initialize
    @open = false
    @stock = 5
  end

  def open
    if @open
      return "The pizzeria is already open."
    else
      @open = true
      return "The pizzeria is now open."
    end
  end

  def close
    if @open
      @open = false
      return "The pizzeria is now closed."
    else
      return "The pizzeria is already closed."
    end
  end

  def order(name,ingredients)
    if @open
      if @stock > 0
      @stock -= 1
      name = Pizza.new(ingredients)
      else
      return "The Pizzeria needs to be restocked."
      end
    else
      return "The Pizzeria is not open."
    end
  end

  def stock
    unless @open
      return "The Pizzeria must be closed before restocking can happen."
    else
      @stock = 5
    end
  end

end

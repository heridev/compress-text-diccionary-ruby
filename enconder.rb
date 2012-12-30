class Enconder

  attr_accessor :values, :index

  def initialize string_to_convert
    @string = string_to_convert
    @values = []
    @index = []
  end

  #we need to split the string and loop through the array
  def run_through_elements
    string_to_array = @string.split
    string_to_array.each do |element|
      apply_conditions element
    end
  end

  #in this method we apply the right conditions in each case
  def apply_conditions element
    if new_element? element
      add_new_element element
    else
      update_index element
    end

  end

  #update index array with the position of no repeated elements
  def update_index element
    position = @values.index element
    @index << position
  end

  # we return true if some element already exist in no repeated elements array
  def new_element? element
    !@values.include?(element)
  end

  # only we need to add some element if not exist in values array already
  def add_new_element element
    @values << element
    @index << @values.size - 1
  end

end


codificar = Enconder.new 'este se repite mucho y cuando algo se repite mucho no me gusta'
codificar.run_through_elements
puts codificar.index
puts codificar.values

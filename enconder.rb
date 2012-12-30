class Enconder

  attr_accessor :values, :index

  def initialize string_to_convert
    @string = string_to_convert
    @values = []
    @index = []
  end

  def run_through_elements
    string_to_array = @string.split
    string_to_array.each do |element|
      apply_conditions element
    end
  end

  def apply_conditions element
    if new_element? element
      add_new_element element
    else
      update_index element
    end

  end

  def update_index element
    position = @values.index element
    @index << position
  end

  def new_element? element
    !@values.include?(element)
  end

  def add_new_element element
    @values << element
    @index << @values.size - 1
  end

end


codificar = Enconder.new 'este se repite mucho y cuando algo se repite mucho no me gusta'
codificar.run_through_elements
puts codificar.index
puts codificar.values

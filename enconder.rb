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
    end

  end

  def new_element? element
    !@values.include?(element)
  end

  def add_new_element element
    @values << element
    @index << @values.size - 1
  end

end

defmodule Ten do
  # Implement the following Enum functions using no library functions or list
  # comprehensions: all?, each, filter. split. and take. You may need to use
  # an if statement to implement filter. The syntax for this
  # if condition do
  #  expression(s)
  # else
  #  expression(s)
  # end 
  
  defmodule CreateOwn do
    def all([], _function), do: true 
    def all([head|tail], function)  do 
      if function.(head) == false do 
        false 
      else
        all(tail, function) 
      end
    end  # One false means not all 
    def each([], _function), do: [] 
    def each([head|tail], function), do: [ function.(head) | each(tail, function)]
  end
end

defmodule Chapter_six do 
  # Find the sum all number below 
  defmodule Sum do
    def of(1), do: 1
    def of(n) when n > 1, do:  n + of(n-1)
  end

  # Find the greatest common divisor 
  defmodule Greatest do 
    def gcd(x,0), do: x
    def gcd(x,y) when x > 0 and y > 0, do: gcd(y,rem(x,y))    
  end
  
  #Think of a number between 1 and 1000 ...
  defmodule Guess do
    def num(x,a..b) when x < a or x > b,  do: "Number outside of range" 
    def num(x,a..b) when b - div(b-a,2) > x do 
      IO.puts "Is it #{b - div(b-a,2)}"
      b = a + div(b-a,2)
      num(x,a..b)
    end
    def num(x,a..b) when b - div(b-a,2) < x do
      IO.puts  "Is it #{b - div(b-a,2)}"
      a = b - div(b-a,2)
      num(x,a..b)
    end 
   def num(x,a..b) when b - div(b-a,2) == x, do: "Your number is #{x}"
  end
end

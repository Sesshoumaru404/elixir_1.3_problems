defmodule Seven do
  defmodule Sum do
    # I defined our sum function to carry a partial total as a second parameter
    # so I could illustrate how to use accumulators to build values. The sum
    # function can also be written without an accumulator. Can you do it?
    def add([head|[]]), do: head
    def add([head|[a|b]]), do: add([head+a|b]) 
  end 
  defmodule Mapsum do
    # Write a maxsum function that takes a list and a function. It applies the
    # function to each element of the list and then sums the result.
    def sum(list,func), do: _sum(list,0, func)
    defp _sum([], total, _), do: total
    defp _sum([a|b],total, func) do
       _sum(b, total + func.(a), func)
    end 
  end
  defmodule Max do
    # Write a max(list) that returns the element with the
    # maximum value in the list. (This is slightly trickier than it sounds) 
    def list([a|b]), do: _list([a|b], a)
    defp _list([], max), do: max
    defp _list([a|b], max) when a > max, do: _list(b, a)
    defp _list([_a|b], max), do: _list(b,max)
  end
  defmodule Caesar do
    # Write a ceasar(list, n) function that adds n to eact list element,
    # wrapping if the addition results in a chatacter greater than Z
    def list([], _c), do: []
    def list([a|b], c), do: [_list(a,c)| list(b, c)] 
    defp _list(a,c) when (a+c) > ?z, do:  a + (c - 26)
    defp _list(a,c), do: a+c
  end
  defmodule Span do 
      # Write a function MyList.span(from, to) that returns a list 
      # of the numbers from up to
      def list(from, to), do: _list(from, to,[])
      defp _list(from, to, a) when from > to, do: raise "From must be less then to"
      defp _list(from, to, a) when from != to, do: _list(from+1,to,a ++ [from]) 
      defp _list(from, to, a) when from == to, do: a ++ [from] 
     
  end
end


using Graphs
import Base.*
import Base.print
import Graphs.add_vertex!
Pkg.update()

type crssn
  id::Int
  op::String
  name::String
  argv::Array{Int,1}
end

function print(p::crssn)
  println("{\nid: ", p.id, "\nop: ", p.op, "\nname: ", p.name, "\nargv: ", p.argv, "\n}")
end

*(k::crssn, l::crssn)=crssn(3, "matmul", "multiply", [k.id, l.id])


#crssn instances

a= crssn(1, "input", "x", [])
b=crssn(2, "input2", "y", [])
d=crssn(3, "matmul", "multiply?", [1,2])
L= [a, b, d]


for i in 1:length(L)
  print(L[i])
end

#this is an experiment


h=a*b
print(h)


#graphs

tGraph=graph(crssn[], Edge{crssn}[])

add_vertex!(tGraph, a)
add_vertex!(tGraph, b)
add_vertex!(tGraph, d)

add_edge!(tGraph, a, d)
add_edge!(tGraph, b, d)





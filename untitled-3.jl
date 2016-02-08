using Graphs
import Base.*
import Base.print


type crssn
  id::Int
  op::String
  name::String
  argv::Array{Int,1}
end

function print(p::crssn)
  println("{\nid: ", p.id, "\nop: ", p.op, "\nname: ", p.name, "\nargv: ", p.argv, "\n}")
end

*(k::crssn, l::crssn)=crssn(10, "matmul", "multiply", [k.id, l.id])


#crssn instances

a= crssn(1, "input", "x", [0])
b=crssn(2, "input2", "y", [0])
d=crssn(3, "matmul", "multiply?", [1,2])
L= [a, b, d]


for i in 1:length(L)
  print(L[i])
end

#this is an experiment


h=a*b
print(h)


#graphs
g=graph(L, [])

e1=make_edge(g, a, d)
e2=make_edge(g, b, d)
g=graph(L, [e1, e2])
#i can't use add_edge! or make_edge for some reason
#it says there's no method matching what i wrote


#i don't fully get how graphs work yet

#testGraph=graph([1, 2, 4, 7], [])     ->makes a graph wit those vertices and zero edges
#print(vertices(testGraph))            ->[1,2,4,7]
#vertex_index(4, testGraph)            ->3
#make_edge(testGraph, 1, 4)            ->seems to works BUT only makes the edge/doesn't add it to edgelist
#add_edge!(testGraph, 1, 7)            ->gives error
#add_edge!(testGraph, vertices(testGraph)[1], vertices(testGraph)[3])       ->gives the same error
#j=make_edge(testGraph, 1, 4)
#add_edge!(testGraph, j)               ->gives the same error
#add_vertex!(testGraph, 5)             ->works fine
#make_vertex(testGraph, 6)             ->gives the same error



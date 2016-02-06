type crssn
  id::Int
  op::String
  name::String
  argv::Array{Int,1}
end

a= crssn(1, "input", "x", [0])
b=crssn(2, "input2", "y", [0])
d=crssn(7, "add", "add???", [1,2])
L= [a, b, d]

import Base.print
function print(p::crssn)
  println("{\nid: ", p.id, "\nop: ", p.op, "\nname: ", p.name, "\nargv: ", p.argv, "\n}")
end

for i in 1:length(L)
  print(L[i])
end

#this is an experiment
println("\n*******this is an experiment\n")
import Base.*
*(k::crssn, l::crssn)=crssn(10, "matmul", "multiply", [k.id, l.id])

h=a*b
print(h)

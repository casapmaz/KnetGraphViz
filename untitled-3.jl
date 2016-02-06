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
for i in 1:length(L)
  println("{\nid: ", L[i].id, "\nop: ", L[i].op, "\nname: ", L[i].name, "\nargv: ", L[i].argv, "\n}")
end

#this is an experiment
println("\n*******this is an experiment\n")
import Base.*
*(k::crssn, l::crssn)=crssn(10, "matmul", "multiply", [k.id, l.id])

h=a*b
print(h)



#Run 50ns
run 50ns

#Set counter increment = 2
add_force /counter/incr_i -radix hex 2 

#Enable core
add_force /counter/resetn -radix hex 1 

#Run 50ns
run 50ns

#Set counter increment = 4
add_force /counter/incr_i -radix hex 0 

#Run 50ns
run 50ns

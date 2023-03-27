#Restart simulation
restart

#Define clock (100 MHz)
add_force /counter/clk -radix hex {1 0ns} {0 5000ps} -repeat_every 10000ps 

#Reset core
add_force /counter/resetn -radix hex 0
add_force /counter/incr_i -radix hex 0 

#Run 50ns
run 50ns

#Set counter increment = 2
add_force /counter/incr_i -radix hex 2 

#Enable core
add_force /counter/resetn -radix hex 1 

#Run 50ns
run 50ns

#Set counter increment = 4
add_force /counter/incr_i -radix hex 4 

#Run 50ns
run 50ns
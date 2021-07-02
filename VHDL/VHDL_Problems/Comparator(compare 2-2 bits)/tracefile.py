with open("Making_TRACEFILE.txt","w") as f:

    for a1 in range(2):
        for a0 in range(2):
            for b1 in range(2):
                for b0 in range(2):
                    xnor1 = ~(a1^b1)
                    xnor2 = ~(a0^b0)
                    greater = (a1&(~b1))| (xnor1&(a0&(~b0)))
                    lesser = ((~a1)&b1) | (xnor1&((~a0)&b0))
                    if greater == 0 and lesser == 0:
                        equal = 1
                    else:
                        equal = 0
                    f.write(str(a1)+str(a0)+str(b1)+str(b0)+ " " + str(greater)+str(equal)+str(lesser)+ " " + "1""1""1\n" )
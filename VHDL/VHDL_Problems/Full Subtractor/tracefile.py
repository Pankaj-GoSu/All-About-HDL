with open("Making_TRACEFILE.txt","w") as f:

    for a2 in range(2):
        for a1 in range(2):
            for a0 in range(2):
                D = a0^a1^a2
                B = ((~a2)&a1)|((~a2)&a0)|(a1&a0)
                f.write(str(a2)+str(a1)+str(a0) + " " + str(D) + str(B) + " " +"1""1\n" )
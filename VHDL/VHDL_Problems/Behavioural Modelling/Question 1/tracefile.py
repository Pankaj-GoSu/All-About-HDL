out = ""
with open("Making_TRACEFILE","w") as f:
     for a3 in range(2):
         for a2 in range(2):
             for a1 in range(2):
                 for a0 in range(2):
                     for b3 in range(2):
                         for b2 in range(2):
                             for b1 in range(2):
                                 for b0 in range(2):
                                    
                                    if b3 == 0 and b2 == 0:
                                        x = str(a3)+str(a2)+str(a1)+str(a0)
                                        out1 = bin(int(x,2)*3)
                                        if len(out1) == 2:
                                            out = "000000"
                                        elif len(out1) == 3:
                                            out = "00000"+str(out1[2:])
                                        elif len(out1) == 4:
                                            out = "0000"+str(out1[2:])
                                        elif len(out1) == 5:
                                            out = "000"+str(out1[2:])
                                        elif len(out1) == 6:
                                            out = "00"+str(out1[2:])
                                        elif len(out1)==7:
                                            out = "0" + str(out1[2:])
                                        elif len(out1) == 8 :
                                            out = str(out1[2:])

                                        
                                    if b3 == 0 and b2 == 1:
                                        x1 = str(a3)+str(a2)+str(a1)+str(a0)
                                        x2 = str(b3)+str(b2)+str(b1)+str(b0)
                                        if  int(x1,2) % 3 == 0 or int(x1,2) % 5 == 0 :
                                            out = "00" + str(x1)
                                        elif int(x2,2) % 3 == 0 or int(x2,2) % 5 == 0:
                                            out = "00" + str(x2)
                                        else:
                                            out = "000000"
                                    
                                    if b3 == 1 and b2 == 0:
                                        
                                        x1 = str(a3)+str(a2)+str(a1)+str(a0)
                                        x2 = str(b3)+str(b2)+str(b1)+str(b0)
                                        out1 = str(int(x1)^int(x2))
                                        if len(out1) == 3:
                                            out = "000" + str(out1)
                                        if len(out1) == 4:
                                            out = "00" + str(out1)
                                        if len(out1) == 5 :
                                            out = "0" + str(out1)
                                        if len(out1) == 6 :
                                            out = "0" + str(out1)

                                    
                                    if b3 ==1 and b2 == 0:
                                        x1 = str(a3)+str(a2)+str(a1)+str(a0)
                                        y = bin(int(x1,2) + 1)
                                        if len(y) == 7:
                                            out = "00" + str(y[3:])
                                        else:
                                            out = "00" + str(y[2:])
                                    
                                    f.write(str(a3)+str(a2)+str(a1)+str(a0)+str(b3)+str(b2)+str(b1)+str(b0) + " " + out + " " + "111111\n") 
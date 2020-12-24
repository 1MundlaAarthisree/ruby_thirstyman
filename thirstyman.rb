 
def drw(p)
  s=["(   )",
  "|",
  "/|\\",
  "/ | \\",
  "/ \\",
  "/   \\"]
  i=0
  while i<6
    if i==2 || i==4
       puts s[i].rjust(p-1)
    elsif i==1
      puts s[i].rjust(p-2)
    else
       puts s[i].rjust(p)
    end      
    i+=1
  end
  print <<s;                                   
              LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
                                                                              |                                   | 
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                                                                              |___________________________________|
                                                                              
s
end
p="roses"
g="_ _ _ _ _ _"
i=0
while i<6
     m=gets.chomp
     h=p
     d=0
     while h.index(m)!=nil
          g[2*(h.index(m)+p.length-h.length)]=m
           if (h.index(m)+1)<p.length
               h=h[(h.index(m)+1)..(p.length-1)]
           else
            break
          end
         d+=1
     end
     puts g
     if d==0
      puts "It's not there"
     else
        puts "Correct"
        drw(30+(i*15))
     end
     i+=1
end


if g.index("_")!=nil
  puts "Game Oer"
end


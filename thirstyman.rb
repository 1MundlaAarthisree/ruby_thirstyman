 
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


def see(h,answers)
  i=0
  p=0
  c=1
  score=0
  while i<5
     puts h[i]
     p=0
     results = select [STDIN], nil, nil, 8
     if !results
      puts "not answered,TIMEOUT"
     else
      m=gets.chomp
     end
     if (m==answers[i].chomp)
                puts "Correct"
                score+=1
                drw(30+(i*15))
                p=p+1
     else
        puts "not correct"
        score=score-1
        drw(30+((p-1)*15))
     end
     c=0  
     i+=1
  end
  puts score
  if score==5
    puts "WATER :P"
    puts "Thankyou"
  else
    puts "NO WATER:("
    puts "GAME OVER"
  end
end
p=IO.readlines("q.txt")
answers=IO.readlines("a.txt")
see(p,answers)

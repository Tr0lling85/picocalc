
'goto testing

'- CONTROL CENTER -'

   startsFrom = 1
   fileLimit = 6

     xbox = 10
     ybox = 20

'------------------'

orgFileLimit = fileLimit
orgStartsFrom = startsFrom
page = 1

orgXbox = xbox
orgYbox = ybox

dim RName$(1)

sub icon(x, y, type$)
 
 type$ = lcase$(type$)
 
 if type$ = "file" then
  
  y2 = y+1
  
  color RGB(white)
  box x+3, y2, 13, 15, 100
  
  color RGB(210, 210, 210)
  box x+3, y2, 13, 15, 2

  line x+6, y2+4, x+12, y2+4
  line x+6, y2+7, x+12, y2+7
  line x+6, y2+10, x+12, y2+10
 
  color RGB(black)
  box x+3, y2, 13, 15, 1
  
 elseif type$ = "sound" then
  
  y2 = y+1
  
  color RGB(white)
  box x+3, y2, 13, 15, 100
  
  color RGB(blue)
  box x+3, y2, 13, 15, 2

  'color RGB(147, 217, 229)
  'line x+6, y2+4, x+12, y2+4
  'line x+6, y2+7, x+12, y2+7
  'line x+6, y2+10, x+12, y2+10
 
  color RGB(black)
  box x+3, y2, 13, 15, 1

  x2 = x+4
  
  pixel x2+3, y+6
  pixel x2+4, y+6
  pixel x2+5, y+6
  pixel x2+6, y+5
  pixel x2+7, y+5
  pixel x2+8, y+5
  
  pixel x2+4, y+7
  pixel x2+4, y+8
  pixel x2+4, y+9
  pixel x2+4, y+10
  pixel x2+3, y+9
  pixel x2+3, y+10
  
  pixel x2+7, y+6
  pixel x2+7, y+7
  pixel x2+7, y+8
  pixel x2+7, y+9
  pixel x2+6, y+8
  pixel x2+6, y+9
 
 elseif type$ = "unknown" then
  
  y2 = y+1
  
  color RGB(white)
  box x+3, y2, 13, 15, 100
  
  color RGB(210, 210, 210)
  box x+3, y2, 13, 15, 2

  line x+6, y2+4, x+12, y2+4
  line x+6, y2+7, x+12, y2+7
  line x+6, y2+10, x+12, y2+10
 
  color RGB(black)
  box x+3, y2, 13, 15, 1
  
  pixel x+8, y+5
  pixel x+8, y+8
  pixel x+8, y+9
  pixel x+8, y+10
  
  pixel x+9, y+4
  pixel x+9, y+7
  pixel x+9, y+10
  pixel x+9, y+12
  
  pixel x+10, y+4
  pixel x+10, y+5
  pixel x+10, y+6
  pixel x+10, y+9
  
  pixel x+8, y+4
  pixel x+8, y+7
  pixel x+10, y+7
  pixel x+10, y+10

 elseif type$ = "txt" then

  y2 = y+1

  color RGB(white)
  box x+3, y2, 13, 15, 100
 
  color RGB(210, 210, 210)
  box x+3, y2, 13, 15, 2

  line x+6, y2+4, x+12, y2+4
  line x+6, y2+7, x+12, y2+7
  line x+6, y2+10, x+12, y2+10
 
  color RGB(black)
  box x+3, y2, 13, 15, 1

  y2 = y2 - 1

  'T
  pixel x+6, y2+3
  pixel x+7, y2+3
  pixel x+7, y2+4
  pixel x+7, y2+5
  pixel x+7, y2+6
  pixel x+7, y2+7
  pixel x+8, y2+3
 
  ' ### # # ### '
  '  #  # #  #  '
  '  #   #   #  '
  '  #  # #  #  '
  '  #  # #  #  '
 
  'X
  pixel x+10, y2+3
  pixel x+10, y2+4
  pixel x+10, y2+6
  pixel x+10, y2+7
  pixel x+11, y2+5
  pixel x+12, y2+3
  pixel x+12, y2+4
  pixel x+12, y2+6
  pixel x+12, y2+7
 
  y2 = y2 + 6
 
  'T
  pixel x+6, y2+3
  pixel x+7, y2+3
  pixel x+7, y2+4
  pixel x+7, y2+5
  pixel x+7, y2+6
  pixel x+7, y2+7
  pixel x+8, y2+3
 
  y2 = y2 - 6
 
 elseif type$ = "bas" then
   
  y2 = y+1
  
  color RGB(white)
  box x+3, y2, 13, 15, 100
  
  color RGB(red)
  box x+3, y2, 13, 15, 2
   
  color RGB(black)
  box x+3, y2, 13, 15, 1

  y2 = y2 - 1

  'B
  pixel x+6, y2+3
  pixel x+6, y2+4
  pixel x+6, y2+5
  pixel x+6, y2+6
  pixel x+6, y2+7
  pixel x+7, y2+3
  pixel x+7, y2+5
  pixel x+7, y2+7
  pixel x+8, y2+4
  pixel x+8, y2+6
 
  'A
  pixel x+10, y2+4
  pixel x+10, y2+5
  pixel x+10, y2+6
  pixel x+10, y2+7
  pixel x+11, y2+3
  pixel x+11, y2+5
  pixel x+12, y2+4
  pixel x+12, y2+5
  pixel x+12, y2+6
  pixel x+12, y2+7

  y2 = y2 + 1

  'S
  pixel x+6, y+9
  pixel x+6, y+10
  pixel x+6, y+11
  pixel x+6, y+13
  pixel x+7, y+9
  pixel x+7, y+11
  pixel x+7, y+13
  pixel x+8, y+9
  pixel x+8, y+11
  pixel x+8, y+12
  pixel x+8, y+13


 elseif type$ = "img" then
  
  color RGB(white)
  box x+2, y+1, 15, 15, 100

  color RGB(150, 220, 230)
  box x+5, y+4, 9, 9, 100
 
  color RGB(black)
  box x+2, y+1, 15, 15, 1
  
  color RGB(50, 200, 80)
  box x+5, y+11, 9, 2
  line x+5, y+10, x+10, y+10 
  line x+7, y+9, x+9, y+9

  color RGB(255, 250, 100)
  box x+10, y+5, 3, 3, 100
 
 elseif type$ = "dir" then
  
  color RGB(255, 206, 27)
  
  y2 = y+6
  x2 = x+1
  box x2, y2, 16, 9, 100

  line x+17, y+7, x+17, y+10
  line x+18, y+7, x+18, y+8
  
  
  color RGB(219, 164, 0)
  
  x2 = x+1
  y2 = y+4
  line x2, y2, x2+15, y2
  line x2, y2+1, x2+15, y2+1
  line x2+2, y+2, x2+6, y+2
  line x2+3, y+3, x2+6, y+3
  line x+1, y+3, x+1, y+8
  line x+2, y+3, x+2, y+6
  
  
  color RGB(black)
  
  y2 = y+3
  for i1 = 1 to 12
   pixel x, y2
   y2 = y2 + 1
  
  next
 
  x2 = x
  for i2 = 1 to 16
   pixel x2, y2
   x2 = x2 + 1

  next

  x2 = x2 - 1
  for i3 = 1 to 4
   x2 = x2 + 1
   y2 = y2 - 1
   pixel x2, y2
   y2 = y2 - 1
   pixel x2, y2 
 
  next
  y2 = y2 - 1
  x3 = x2
  y3 = y2
  
  for i4 = 1 to 17
   pixel x2, y2
   x2 = x2 - 1
   
  next

  x2 = x2 + 1  
  for i5 = 1 to 3
   x2 = x2 - 1
   y2 = y2 + 1
   pixel x2, y2
   y2 = y2 + 1
   pixel x2, y2

  next
 
  x3 = x3 - 2
  y3 = y3 - 1
  for i6 = 1 to 3
   pixel x3, y3
   y3 = y3 - 1
 
  next
  
  for i7 = 1 to 17
   pixel x3, y3+1
   x3 = x3 - 1
 
  next

  pixel x+2, y+2
  pixel x+7, y+2
  y2 = y
  
  x2 = x+3
  for i8 = 1 to 4
   pixel x2, y2+1
   x2 = x2 + 1
 
  next
 
 endif
end sub

'cls RGB(1, 130, 129)

'icon(50, 50, "file")
'icon(80, 50, "sound")
'icon(110, 50, "bas")
'icon(140, 50, "dir")
'icon(170, 50, "unknown")

'icon 50, 80, "img")
'icon 50, 80, "txt")
'end

'=======================================

dim fl$(1)
dim flr$(1)

openWindow = 1


start:


if openWindow = 1 then
 cls RGB(0, 130, 130) 
 openWindow = 0

else

endif

'COUNT FILE$
ACount = 1
name$ = dir$("*.*", file$)
do while name$ <> ""
 
 name$ = dir$()
 ACount = ACount + 1

loop

ACount = ACount - 1


'COUNT DIR$
DCount = 1
name$ = dir$("*", dir$)
do while name$ <> ""
 
 name$ = dir$()
 DCount = DCount + 1

loop

DCount = DCount - 1


erase fl$
erase flr$
 
dim fl$(ACount+DCount+1)
dim flr$(ACount+DCount+1)

empty = 0
if ACount + DCount = 0 then
 empty = 1
endif

x1 = xbox '30
y1 = ybox '20
width1 = 245
height1 = 170

x2 = x1+10 '40
y2 = y1+10 '30
width2 = width1-20 '225
height2 = height1-50 '120

height3 = 20


color RGB(190, 190, 190)
'box 30, 20, 245, 170, 100
box x1, y1, width1, height1+10, 100

color RGB(210, 210, 210)
'box 40, 30+30, 225, 120, 100
box x2, y2+30, width2, height2, 100
box x2, y2, width2, height3, 100

color RGB(black)
'medium
line x2, y2+height2+30, x2, y2+30
line x2, y2+30, x2+width2, y2+30

'big
line x1, y1+height1+10, x1+width1, y1+height1+10
line x1+width1, y1+height1+10, x1+width1, y1

'small
line x2, y2+height3, x2, y2
line x2, y2, x2+width2, y2    
    
color RGB(white)
'medium
line x2, y2+height2+30, x2+width2, y2+height2+30
line x2+width2, y2+height2+30, x2+width2, y2+30

'big
line x1, y1+height1+10, x1, y1
line x1, y1, x1+width1, y1

'small
line x2, y2+height3, x2+width2, y2+height3
line x2+width2, y2+height3, x2+width2, y2


path$ = cwd$

if len(path$) > 36 then
 path$ = right$(path$, 35) + "~"
endif

text x2+5, y2+5, path$, , 7, , RGB(black), RGB(210, 210, 210)


DCount = 0
ACount = 1
name$ = dir$("*", dir$)
do while name$ <> ""

 flr$(ACount) = name$

 if len(name$) => 11 then
  name$ = left$(name$, 10) + "~"
 endif 
 
 'print name$
 
 fl$(ACount) = name$
 name$ = dir$()
 ACount = ACount + 1
 DCount = DCount + 1

loop


ACount = 1 + DCount

name$ = dir$("*.*", file$)
do while name$ <> ""

 flr$(ACount) = name$

 if len(name$) => 11 then
  name$ = left$(name$, 6) + "~." + right$(name$, 3)
 endif 

 'print name$
 
 fl$(ACount) = name$
 name$ = dir$()
 ACount = ACount + 1

loop


Acount = Acount - 1
limit = Acount

mp = 0
ACount1 = ACount
ACount2 = ACount

for i = 1 to ACount1

 if ACount2 > orgFileLimit then
   ACount2 = ACount2 - orgFileLimit
   mp = mp + 1
   
 else
  mp = mp + 1
  exit for
  
 endif
next


p$ = str$(page)
mxp$ = str$(mp)

if empty = 1 then
 p$ = "0"
 mxp$ = "0"
 
endif

pages$ = "page " + p$ + " / " + mxp$
text x2, y1+height1-5, pages$, , 7, , RGB(black), RGB(190, 190, 190)

'PRINT ALL FILES - START

fcount = startsFrom
fy = startsFrom

fcountPL = 0
 
x = x1+20 '50  / 30
y = y1+80 '100 / 20
a = 1

if ACount =< 6 then
 limit = ACount
 
else
 limit = fileLimit

endif

if limit > ACount then
 limit = ACount
endif


for q = startsFrom to limit

 if x => 230 and a => 1 then
  y = y + 60
  a = a + 1
  x = x1+20
  
 endif

 if fl$(q) = "" then
  exit for
 endif

'     -     
'===========

 if len(fl$(q)) = 1 then
  x2 = 25

 elseif len(fl$(q)) = 2 then
  x2 = 22.5

 elseif len(fl$(q)) = 3 then
  x2 = 20

 elseif len(fl$(q)) = 4 then
  x2 = 17.5
  
 elseif len(fl$(q)) = 5 then
  x2 = 15
  
 elseif len(fl$(q)) = 6 then
  x2 = 12.5
  
 elseif len(fl$(q)) = 7 then
  x2 = 10
  
 elseif len(fl$(q)) = 8 then
  x2 = 7.5

 elseif len(fl$(q)) = 9 then
  x2 = 5
  
 elseif len(fl$(q)) = 10 then
  x2 = 2.5

 else
  x2 = 0

 endif

 if fy = fcount then
   text x+x2, y, fl$(q), , 7, , RGB(blue), RGB(210, 210, 210)

 else
   text x+x2, y, fl$(q), , 7, , RGB(black), RGB(210, 210, 210)
    
 endif 


 extension$ = right$(flr$(q), 3)
 bakExtension$ = right$(flr$(q), 7) 
  
 if q <= DCount then
  icon(x+20, y-25, "dir")

 elseif extension$ = "bas" then
  icon(x+20, y-25, "bas")
  
 elseif extension$ = "bmp" then
  icon(x+20, y-25, "img")

 elseif extension$ = "wav" or extension$ = "mp3" then
  icon(x+20, y-25, "sound")
 
 elseif bakExtension$ = "bas.bak" then
  icon(x+20, y-25, "bas") 

 elseif extension$ = "txt" then
  icon(x+20, y-25, "txt")

 else
  icon(x+20, y-25, "unknown") 
   
 endif
  
 x = x + 70
 fcount = fcount + 1

next

if empty = 1 then
 text xbox+85, ybox+90, "- empty -", , , , RGB(black), RGB(210, 210, 210)
endif
 
'PRINT ALL FILES - END

fy = startsFrom

do

 k$ = inkey$
 if k$ <> "" then
 
'===== PREVIOUS ========================
 
  if k$ = chr$(130) then
   fy = fy - 1
   
   if fy < startsFrom then
    fy = startsFrom
   endif
   
'===== NEXT ============================
   
  elseif k$ = chr$(131) then
   fy = fy + 1
   
   if fy > limit then
    fy = limit
   endif
   
   if fy > ACount then
    'color RGB(green)
    'print ACount
    fy = Acount
    
   endif

'===== GO 1 FLOOR UP ===================

  elseif k$ = chr$(128) then
   fy = fy - 3
   
   if fy =< 0 or fy < startsFrom then
    fy = fy + 3     
   endif

'===== GO 1 FLOOR DOWN =================
   
  elseif k$ = chr$(129) then
   fy = fy + 3
  
   if fy > limit then
    fy = fy - 3
   endif

'===== CHANGE DRIVE ====================

  elseif k$ = chr$(9) then

   if mm.info$(drive) = "A:" then
    drive "b:"
   
    startsFrom = orgStartsFrom
    fileLimit = orgFileLimit
    page = 1
   
    goto start
   
   elseif mm.info$(drive) = "B:" then
    drive "a:"
   
    startsFrom = orgStartsFrom
    fileLimit = orgFileLimit
    page = 1

    goto start

   endif

'===== ENTER ===========================
  
  elseif k$ = chr$(13) then
   if fy <= DCount then 'IS DIR
    chdir flr$(fy)
    
    startsFrom = orgStartsFrom
    fileLimit = orgFileLimit
    page = 1
    
    goto start
    
   endif
    
   extension$ = right$(flr$(fy), 3) 
    
   if extension$ = "bas" then 'NOT DIR
    run flr$(fy)
  
   elseif extension$ = "mp3" then
    color RGB(green)
    print "unable to play MP3"
  
   elseif extension$ = "wav" then

    openWindow = 1

    color RGB(190, 190, 190)    
    box xbox+20, ybox+20, 150, 110, 100
    
    color RGB(210, 210, 210)
    box xbox+30, ybox+60, 130, 60, 100
    box xbox+30, ybox+30, 130, 20, 100
    
    
    color RGB(white)

    line xbox+20, ybox+130, xbox+20, ybox+20 
    line xbox+20, ybox+20, xbox+170, ybox+20
    
    line xbox+30, ybox+120, xbox+160, ybox+120
    line xbox+160, ybox+120, xbox+160, ybox+60
    
    line xbox+30, ybox+50, xbox+160, ybox+50
    line xbox+160, ybox+50, xbox+160, ybox+30
    
    color RGB(black)
    
    line xbox+20, ybox+130, xbox+170, ybox+130 
    line xbox+170, ybox+130, xbox+170, ybox+20
    
    line xbox+30, ybox+120, xbox+30, ybox+60
    line xbox+30, ybox+60, xbox+160, ybox+60
    
    line xbox+30, ybox+50, xbox+30, ybox+30
    line xbox+30, ybox+30, xbox+160, ybox+30
 
   
    ptext$ = "PLAYING " + fl$(fy)
    text xbox+36, ybox+37, ptext$, , 7, , RGB(black), RGB(210, 210, 210)
    
    circle xbox+60, ybox+90, 25, , , RGB(black), RGB(190, 190, 190)

    color RGB(white)
    pixel xbox+35, ybox+90
    
    a1 = 34
    a2 = 90
    a3 = 4
    check = 0
    
    klm:
    
    for qw = 1 to 9
     
     if check = 0 then
      a1 = a1 + 1
      a2 = a2 - 1
     
     else
      a1 = a1 - 1
      a2 = a2 + 1
    
     endif
    
     pixel xbox+a1, ybox+a2
     
     if a3 = 0 then
      goto rightThere
     endif
     
     for qw2 = 1 to a3
      
      if check = 0 then
       a2 = a2 - 1
      
      else
       a1 = a1 - 1
      
      endif
      
      pixel xbox+a1, ybox+a2
      
     next
     a3 = a3 - 1
     rightThere:
     
    next

    a1 = 60
    a2 = 64
    a3 = 4
    check = check + 1
    
    if check = 2 then    
 
    else
     goto klm
     
    endif

    pixel xbox+60, ybox+65
    
    ybox = ybox - 3
    
    text xbox+101, ybox+70, " LAY", , 7, , RGB(black), RGB(210, 210, 210)    
    text xbox+100, ybox+70, "P", , 7, , RGB(white), RGB(210, 210, 210)
    
    text xbox+101, ybox+80, " AUSE", , 7, , RGB(black), RGB(210, 210, 210)    
    text xbox+100, ybox+80, "P", , 7, , RGB(white), RGB(210, 210, 210)
    
    text xbox+101, ybox+90, " LOSE", , 7, , RGB(black), RGB(210, 210, 210)    
    text xbox+100, ybox+90, "C", , 7, , RGB(white), RGB(210, 210, 210)

    text xbox+100, ybox+100, "PLAY", , 7, , RGB(black), RGB(210, 210, 210)    
    text xbox+101, ybox+110, " GAIN", , 7, , RGB(black), RGB(210, 210, 210)    
    text xbox+100, ybox+110, "A", , 7, , RGB(white), RGB(210, 210, 210)

    ybox = ybox + 3
   
    playAgain:

    icon = 0
    circle xbox+60, ybox+90, 24, , , RGB(190, 190, 190), RGB(190, 190, 190)

    color RGB(210, 210, 210) 
    line xbox+52.5, ybox+75, xbox+52.5, ybox+105, 5
    line xbox+62.5, ybox+75, xbox+62.5, ybox+105, 5

    sub DrawLines
    
     xbox = xbox + 2
    
     color RGB(white)
     line xbox+50, ybox+105, xbox+50, ybox+75
     line xbox+50, ybox+75, xbox+55, ybox+75

     line xbox+60, ybox+105, xbox+60, ybox+75
     line xbox+60, ybox+75, xbox+65, ybox+75

     color RGB(black)
     line xbox+50, ybox+105, xbox+55, ybox+105
     line xbox+55, ybox+105, xbox+55, ybox+75

     line xbox+60, ybox+105, xbox+65, ybox+105
     line xbox+65, ybox+105, xbox+65, ybox+75
    
     xbox = xbox - 2

    end sub
    
    DrawLines

    play wav flr$(fy)
   
    do
    
     if mm.info(sound) = "OFF" then
      
      if sndStop <> 1 then
       circle xbox+60, ybox+90, 24, , , RGB(190, 190, 190), RGB(190, 190, 190)
       triangle xbox+52.5, ybox+75, xbox+72, ybox+90, xbox+52.5, ybox+105, , RGB(210, 210, 210)
       sndStop = 1
      
       color RGB(white)
       line xbox+52.5, ybox+75, xbox+52.5, ybox+105
      
       color RGB(210, 210, 210)
       box xbox+80, ybox+32, 80, 18, 100
      
      endif
      
     endif
       
     k$ = inkey$
     if k$ <> "" then
           
      if k$ = "p" then
      
       icon = icon + 1
     
       if icon = 2 then
        icon = 0
       endif
     
      elseif k$ = "a" then
       play stop
       sndStop = 0
       icon = icon + 1
       
       color RGB(210, 210, 210)
       box xbox+31, ybox+32, 129, 18, 100
    
       text xbox+36, ybox+37, ptext$, , 7, , RGB(black), RGB(210, 210, 210) 
    
       goto playAgain
     
      elseif k$ = "c" then
       play stop
       sndStop = 0
       goto start
    
      else
       goto skipThis
 
      endif
      
      if icon = 0 then
       
       if sndStop = 1 then
        color RGB(210, 210, 210)
        box xbox+31, ybox+31, 129, 19, 100
        text xbox+50, ybox+37, "NO SOUND PLAYING", , 7, , RGB(red), RGB(210, 210, 210)
        goto skipThis
        
       else
        text xbox+36, ybox+37, ptext$, , 7, , RGB(black), RGB(210, 210, 210)
        play resume
        
       endif

       circle xbox+60, ybox+90, 24, , , RGB(190, 190, 190), RGB(190, 190, 190)
       
       color RGB(210, 210, 210)
       line xbox+52.5, ybox+75, xbox+52.5, ybox+105, 5
       line xbox+62.5, ybox+75, xbox+62.5, ybox+105, 5
        
       DrawLines
 
      elseif icon = 1 then       

       if sndStop = 1 then
        color RGB(210, 210, 210)
        box xbox+31, ybox+31, 129, 19, 100
        text xbox+50, ybox+37, "NO SOUND PLAYING", , 7, , RGB(red), RGB(210, 210, 210)
        goto skipThis       
 
       else
        play pause
 
       endif
       
       circle xbox+60, ybox+90, 24, , , RGB(190, 190, 190), RGB(190, 190, 190)
       
       color RGB(black)
       triangle xbox+52.5, ybox+75, xbox+72, ybox+90, xbox+52.5, ybox+105, , RGB(210, 210, 210)

       color RGB(white)
       line xbox+52.5, ybox+75, xbox+52.5, ybox+105
         
      endif
      
      skipThis:
      
     endif
    loop
    
          
   elseif extension$ = "bmp" then
    goto waitUntil

   elseif extension$ = "txt" then
   
   'OPEN TEXT FILE

    openWindow = 1
   
    open flr$(fy) for input as #1

    orgX = orgXbox+10
    orgY = orgYbox+10

    x = orgX+10
    y = orgY+10
    w = 150
    h = 100

    chrLimit = 3
    lineLimit = 3
    lineCheck = 0

    color RGB(190, 190, 190)
    box x, y, w, h, 100

    color RGB(210, 210, 210)
    box x+10, y+10, w-20, 20, 100
    box x+62, y+35, 25, 20, 100

    text x+14, y+13, "character limit", , , , RGB(black), RGB(210, 210, 210)
    text x+12, y+73, "enter to confirm", , , , RGB(black), RGB(190, 190, 190)

    color RGB(white)
    line x, y+h, x, y
    line x, y, x+w, y

    line x-10+w, y+10, x-10+w, y+30
    line x-10+w, y+30, x+10, y+30

    line x-10+45+52, y+10+25, x-10+45+52, y+30+25
    line x-10+45+52, y+30+25, x+10+52, y+30+25

    color RGB(black)
    line x, y+h, x+w, y+h
    line x+w, y+h, x+w, y

    line x+10, y+30, x+10, y+10
    line x+10, y+10, x-10+w, y+10

    line x+10+52, y+30+25, x+10+52, y+10+25
    line x+10+52, y+10+25, x-10+45+52, y+10+25

    x = x + 13
    triangle x+40, y+55, x+25, y+45, x+40, y+35, , RGB(210, 210, 210) 
    x = x - 13

    x = x + 55
    triangle x+40, y+55, x+55, y+45, x+40, y+35, , RGB(210, 210, 210) 
    x = x - 55

    rpt:

    if len(str$(chrLimit)) = 1 then
     chL$ = "0" + str$(chrLimit)

    else
     chL$ = str$(chrLimit)
 
    endif

    if len(str$(lineLimit)) = 1 then
     lnL$ = "0" + str$(lineLimit)

    else
     lnL$ = str$(lineLimit)
 
    endif

    if lineCheck = 1 then
     text x+14, y+13, "line limit     ", , , , RGB(black), RGB(210, 210, 210)
     text x+66.5, y+40, lnL$, , , , RGB(black), RGB(210, 210, 210)

    else
     text x+66.5, y+40, chL$, , , , RGB(black), RGB(210, 210, 210)

    endif

    color RGB(white)

    line x+38, y+45, x+53, y+35
    line x+95, y+55, x+95, y+35

    color RGB(black)

    line x+95, y+55, x+110, y+45
    line x+110, y+45, x+95, y+35

    line x+53, y+55, x+38, y+45
    line x+53, y+55, x+53, y+35

    do

     k$ = inkey$
     if k$ <> "" then
      if k$ = chr$(130) then

       color RGB(black)
       line x+38, y+45, x+53, y+35
   
       color RGB(white)
       line x+53, y+55, x+38, y+45
       line x+53, y+55, x+53, y+35

       if lineCheck = 1 then
        lineLimit = lineLimit - 1
    
       else
        chrLimit = chrLimit - 1
   
       endif
   
       if chrLimit < 1 then
        chrLimit = 1
       endif

       if lineLimit < 1 then
        lineLimit = 1
       endif
   
      elseif k$ = chr$(131) then
  
       color RGB(black)
       line x+95, y+55, x+95, y+35

       color RGB(white)
       line x+95, y+55, x+110, y+45
       line x+110, y+45, x+95, y+35
   
       if lineCheck = 1 then
        lineLimit = lineLimit + 1    

       else
        chrLimit = chrLimit + 1

       endif

       if chrLimit > 20 then
        chrLimit = 20
       endif
  
       if lineLimit > 20 then
        lineLimit = 20
       endif

      elseif k$ = chr$(13) then
       lineCheck = lineCheck + 1
   
       if lineCheck > 1 then
        goto b
   
       else
        goto rpt
   
       endif
      endif

      pause 100
      goto rpt

     endif
    loop

    b:
    x = orgX
    y = orgY

    h = 0+15+lineLimit*20

    if chrLimit =< 5 then
     w = x+15+5*10

    else
     w = x+15+chrLimit*7
 
    endif

    w = w - 20

    color RGB(190, 190, 190)
    box x, y, w+40, h+50, 100 '20

    color RGB(210, 210, 210)
    box x+10, y+10, w+20, h, 100 '10 10
    box x+10, y+h+20, w+20, 20, 100

    color RGB(white)

    line x, y+h+50, x, y
    line x, y, x+w+40, y

    line x+10, y+10+h, x+w+30, y+10+h
    line x+w+30, y+10+h, x+w+30, y+10

    line x+10, y+40+h, x+w+30, y+h+40
    line x+w+30, y+40+h, x+w+30, y+20+h

    color RGB(black)

    line x, y+h+50, x+w+40, y+h+50
    line x+w+40, y+h+50, x+w+40, y

    line x+10, y+10+h, x+10, y+10
    line x+10, y+10, x+w+30, y+10

    line x+10, y+40+h, x+10, y+h+20
    line x+10, y+20+h, x+w+30, y+20+h

    w = w + 20

    y = y+20
    x = x-5

    text x+20, y+h+4, chr$(148), , , , RGB(black), RGB(210, 210, 210)
    text x+30, y+h+6, "next", , 7, , RGB(black), RGB(210, 210, 210)
    text x+60, y+h+6, "c", , 7, , RGB(210, 210, 210), RGB(black)
    text x+66, y+h+6, "lose", , 7, , RGB(black), RGB(210, 210, 210)

    y = y-20
    x = x+5

    c = 0

    if rpt = 1 then
     rpt = 0
     goto repeat
 
    elseif rpt1 = 1 then
     rpt1 = 0
     goto repeat1

    endif

    do while not eof(1)

     line input #1, word$
     c = c + 1
     y = y + 20

     if len(word$) > chrLimit then
 
      w1$ = left$(word$, chrLimit)
      w2$ = right$(word$, len(word$)-chrLimit)

      text x+20, y, w1$, , , , RGB(black), RGB(210, 210, 210)
  
      repeat:
  
      if len(w2$) > chrLimit then
  
       do
  
        if c = lineLimit then
         c = 0 : rpt = 1
         goto nextPage
     
        endif
  
        y = y + 20
    
        w1$ = left$(w2$, chrLimit)  
        text x+20, y, w1$, , , , RGB(black), RGB(210, 210, 210)
        c = c + 1
        
        w2$ = right$(w2$, len(w2$)-chrLimit)
    
        if len(w2$) <= chrLimit and c < lineLimit then
         y = y + 20
         text x+20, y, w2$, , , , RGB(black), RGB(210, 210, 210)
         c = c + 1
         exit do
     
        endif
        
       loop 
  
      else  
  
       if c = lineLimit then
        c = 0 : rpt1 = 1
        goto nextPage
     
       endif
       repeat1:
  
       y = y + 20
       text x+20, y, w2$, , , , RGB(black), RGB(210, 210, 210)
       c = c + 1
  
      endif
 
     else
  
      text x+20, y, word$, , , , RGB(black), RGB(210, 210, 210)

     endif
  
     if c = lineLimit then
  
      nextPage:
  
      do
  
       k$ = inkey$
       if k$ <> "" then
        if k$ = chr$(131) then      
         goto b

        elseif k$ = "c" then
         close #1
         goto start
 
        endif
       endif
      loop

    endif
    
    loop

    do
  
     k$ = inkey$
      if k$ <> "" then
       close #1
       goto start
   
     endif
    loop

   else 
    color RGB(green)
    print flr$(fy)
    
   endif

'===== DELETE ==========================

  elseif k$ = chr$(127) then
  
   color RGB(190, 190, 190)
   wbox = 140
   ybox = ybox + 10
   
   box xbox+30, ybox+30, wbox, 50, 100
   
   color RGB(210, 210, 210)
   box xbox+40, ybox+40, wbox-20, 30, 100

   color RGB(black)
   line xbox+30, ybox+80, xbox+30+wbox, ybox+80 
   line xbox+30+wbox, ybox+80, xbox+30+wbox, ybox+30

   line xbox+40, ybox+40, xbox+40, ybox+40+30
   line xbox+40, ybox+40, xbox+40+wbox-20, ybox+40

   color RGB(white)
   line xbox+30, ybox+80, xbox+30, ybox+30 
   line xbox+30, ybox+30, xbox+30+wbox, ybox+30

   line xbox+40, ybox+40+30, xbox+40+wbox-20, ybox+40+30
   line xbox+40+wbox-20, ybox+40+30, xbox+40+wbox-20, ybox+40

   
   color RGB(red)
   xbox = xbox + 3
   
   line xbox+30+15, ybox+30+15, xbox+30+15, ybox+30+25, 5
   line xbox+30+15, ybox+30+30, xbox+30+15, ybox+30+34, 5

   xbox = xbox - 3

   text xbox+30+30, ybox+30+15, "delete ? (y/n)", , 7, , RGB(black), RGB(210, 210, 210)
   text xbox+30+30, ybox+30+27, fl$(fy), , 7, , RGB(blue), RGB(210, 210, 210)

 
   do
   
    k$ = inkey$
    if k$ <> "" then
    
     if k$ = "y" then
      if fy <= DCount then 
      
       chdir flr$(fy)
      
       count2 = 0
       name2$ = ""
       
       name2$ = dir$("*", dir$)
       do while name2$ <> ""
       
        count2 = count2 + 1
        name2$ = dir$
       
       loop
      
       name2$ = dir$("*.*", file$)
       do while name2$ <> ""
       
        count2 = count2 + 1
        name2$ = dir$() 
       
       loop
       
       chdir ".."
       
       if count2 > 0 then
        color RGB(210, 210, 210)
        box xbox+40, ybox+40, wbox-20, 30, 100

        color RGB(black)
        line xbox+40, ybox+40, xbox+40, ybox+40+30
        line xbox+40, ybox+40, xbox+40+wbox-20, ybox+40
       
        err$ = "ERR : DIR FULL"
        text xbox+30+15, ybox+30+20, err$, , , , RGB(red), RGB(210, 210, 210)
       
        do
        
         k$ = inkey$
         if k$ <> "" then
          ybox = ybox - 10
          goto start
        
         endif
        loop
       
       else
        rmdir flr$(fy)
        ybox = ybox - 10
        goto start
       
       endif
     
      else
      
       kill flr$(fy)
       ybox = ybox - 10
       goto start
     
      endif
     
     
     elseif k$ = "n" then
      ybox = ybox - 10
      goto start
    
     endif  
    endif
   loop

'===== MOVE FILE =======================

  elseif k$ = "m" then

   /*

   if moving = 0 then

     mfile$ = flr$(fy)
     moving = 1
     pathMoveFrom$ = cwd$
     goto start

   else
     
    moving = 0
    destinationPath$ = cwd$
    
    chdir pathMoveFrom$

    d$ = left$(destinationPath$, 3)
    pth$ = right$(destinationPath$, len(destinationPath$)-3)

    'copy mfile$ to destinationPath$+mfile$
    copy mfile$ to d$+pth$+mfile$

    chdir destinationPath$
    
   endif

   goto start

   */

'===== MAKE NEW DIR ====================

  elseif k$ = "k" then
   mkd = 1
   goto name

'===== HELP ============================

  elseif k$ = "h" then
  
   testing:
   openWindow = 1
  
   color RGB(190, 190, 190)
   box xbox+10, ybox+10, 220, 185, 100
  
   color RGB(210, 210, 210)
   box xbox+20, ybox+20, 200, 165, 100
  
   color RGB(white)
   
   line xbox+10, ybox+195, xbox+10, ybox+10
   line xbox+10, ybox+10, xbox+230, ybox+10
    
   line xbox+20, ybox+185, xbox+220, ybox+185 
   line xbox+220, ybox+185, xbox+220, ybox+20
    
   color RGB(black)
   
   line xbox+10, ybox+195, xbox+230, ybox+195
   line xbox+230, ybox+195, xbox+230, ybox+10
  
   line xbox+20, ybox+185, xbox+20, ybox+20
   line xbox+20, ybox+20, xbox+220, ybox+20
  
   rx = xbox+25 '25
   ry = ybox+65 '55
   
   orx = rx
   ory = ry
  
   for i = 1 to 2
    for i2 = 1 to 5
     rbox rx+51, ry-24, 22, 10, 3, RGB(190, 190, 190), RGB(190, 190, 190)
     rx = rx + 24
    
    next
    
    ry = ry + 12
    rx = orx
    
   next
  
   rx = orx
   ry = ory
  
   text orx+59, ory-21, "F1", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+24, ory-21, "F2", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+48, ory-21, "F3", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+72, ory-21, "F4", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+96, ory-21, "F5", , 8, , RGB(white), RGB(190, 190, 190)
    
   text orx+56, ory-10, "Esc", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+22, ory-10, "Tab", , 8, ,RGB(white), RGB(190, 190, 190)
   text orx+59+43, ory-10, "CpLK", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+70, ory-10, "Del", , 8, , RGB(white), RGB(190, 190, 190)
   text orx+59+92, ory-10, "Back", , 8, , RGB(white), RGB(190, 190, 190)
    
   color RGB(210, 210, 210)
   line rx+168, ry-24, rx+168, ry-2
 
   tx$ = "   ~/\-=[]1234567890QWERTYUIOPASDFGHJKL ZXCVBNM,."
   cnt = 1
  
   for i = 1 to 5
    for i2 = 1 to 10
    
     rbox rx, ry, 15, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
     text rx+5, ry+4, right$(left$(tx$, cnt), 1), , 7, , RGB(white), RGB(190, 190, 190)
     rx = rx + 17
     cnt = cnt + 1
     
    next
    
    rx = orx
    ry = ry + 17
    
  next

  color RGB(white)
 
  rbox rx+153, ory+34+17, 15, 30, 3, RGB(190, 190, 190), RGB(190, 190, 190) 
  text rx+155, ory+54+17, "Ent", , 8, , RGB(white), RGB(190, 190, 190)

  line rx+156, ory+66, rx+164, ory+66
  line rx+164, ory+66, rx+164, ory+62
  triangle rx+159, ory+64, rx+156, ory+66, rx+159, ory+68, RGB(white), RGB(white) 
  
  rbox orx+3, ory+68+17, 24, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
  rbox orx+29, ory+68+17, 15, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
  rbox orx+29+17, ory+68+17, 15, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
  
  rbox orx+29+34, ory+68+17, 40, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
  
  rbox orx+29+76, ory+68+17, 15, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
  rbox orx+29+76+17, ory+68+17, 15, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)
  rbox orx+29+76+34, ory+68+17, 24, 15, 3, RGB(190, 190, 190), RGB(190, 190, 190)

  text orx+5, ory+90, "Shift", , 8, , RGB(white), RGB(190, 190, 190)
  text orx+141, ory+90, "Shift", , 8, , RGB(white), RGB(190, 190, 190)
  text orx+31, ory+90, "Ctr", , 8, , RGB(white), RGB(190, 190, 190)
  text orx+48, ory+90, "Alt", , 8, , RGB(white), RGB(190, 190, 190)

  text orx+110, ory+90, ";", , 7, , RGB(white), RGB(190, 190, 190)
  text orx+127, ory+90, "'", , 7, , RGB(white), RGB(190, 190, 190)

  chx = orx+78

  for i = 1 to 10
   pixel chx, ory+68+27
   chx = chx + 1
  
  next

  pixel chx, ory+68+27
  pixel chx-10, ory+94
  pixel chx, ory+94

  color RGB(210, 210, 210)
  box orx, ory, 51, 15, 100

  ory = ory - 5

  triangle orx+45, ory+10, orx+30, ory-5, orx+45, ory-20, RGB(190, 190, 190), RGB(190, 190, 190)
  triangle orx+5, ory+10, orx+20, ory-5, orx+5, ory-20, RGB(190, 190, 190), RGB(190, 190, 190)
  triangle orx+10, ory-25, orx+25, ory-10, orx+40, ory-25, RGB(190, 190, 190), RGB(190, 190, 190)
  triangle orx+10, ory+15, orx+25, ory, orx+40, ory+15, RGB(190, 190, 190), RGB(190, 190, 190)
 
  color RGB(210, 210, 210)

  triangle orx+42, ory+7, orx+45, ory+7, orx+45, ory+10, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+45, ory+6
  
  triangle orx+42, ory-17, orx+45, ory-20, orx+45, ory-17, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+45, ory-16
 
 
  triangle orx+5, ory+10, orx+5, ory+7, orx+8, ory+7, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+5, ory+6
 
  triangle orx+5, ory-20, orx+5, ory-17, orx+8, ory-17, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+5, ory-16 
 
 
  triangle orx+10, ory-25, orx+13, ory-25, orx+13, ory-22, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+14, ory-25
 
  triangle orx+40, ory-25, orx+37, ory-25, orx+37, ory-22, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+36, ory-25
 
 
  triangle orx+10, ory+15, orx+13, ory+15, orx+13, ory+12, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+14, ory+15
 
  triangle orx+40, ory+15, orx+37, ory+15, orx+37, ory+12, RGB(210, 210, 210), RGB(210, 210, 210)
  pixel orx+36, ory+15

  text orx+36, ory-10, chr$(148), , , , RGB(white), RGB(190, 190, 190)
  text orx+7, ory-10, chr$(149), , , , RGB(white), RGB(190, 190, 190)
  text orx+22, ory+3, chr$(147), , , , RGB(white), RGB(190, 190, 190) 
  text orx+22, ory-23, chr$(146), , , , RGB(white), RGB(190, 190, 190) 
  
  color RGB(210, 210, 210)
  pixel orx+29, ory+3
  pixel orx+22, ory-12
  pixel orx+28, ory-12
  pixel orx+29, ory-12
  pixel orx+29, ory-13

  color RGB(white)
  line orx+26, ory-5, orx+33, ory-30
  text orx+28, ory-35, "navigate", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+68, ory-17, orx+70, ory-30
  text orx+65, ory-35, "close rename/make dir", , 8, , RGB(white), RGB(210, 210, 210)
  text orx+80, ory-30, "window", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+95, ory-2, orx+115, ory-21
  text orx+110, ory-26, "change drive", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+142, ory-2, orx+170, ory-21
  text orx+165, ory-26, "delete", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+167, ory-4, orx+173, ory+5
  text orx+173, ory+7, "chdir", , 8, , RGB(white), RGB(210, 210, 210)
  text orx+175, ory+14, "'..'", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+131, ory+50, orx+171, ory+52
  text orx+171, ory+49, "info", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+165, ory+85, orx+167, ory+93
  text orx+165, ory+95, "execute", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+115, ory+100, orx+120, ory+113
  line orx+127, ory+100, orx+120, ory+113
  text orx+100, ory+115, "next/previous page", , 8, , RGB(white), RGB(210, 210, 210)
 
  line orx+121, ory+67, orx+90, ory+120
  text orx+60, ory+115, "make dir", , 8,, RGB(white), RGB(210, 210, 210)
 
  line orx+87, ory+84, orx+80, ory+105
  text orx+60, ory+107, "rename", , 8, ,RGB(white), RGB(210, 210, 210)
 
  line orx+53, ory+50, orx+35, ory+107
  text orx+15, ory+107, "goto root", , 8, ,RGB(white), RGB(210, 210, 210)
 
  ory = ory + 5
  
  do
  
   k$ = inkey$
   if k$ <> "" then
    goto start
   endif
   
  loop

'===== INFO ============================

  elseif k$ = "i" then

   openWindow = 1
  
   x = xbox+20
   y = ybox+50
   
   color RGB(190, 190, 190)
   box x, y, 150, 110, 100
   
   color RGB(210, 210, 210)
   box x+10, y+10, 130, 90, 100

   color RGB(white)
   
   line x, y+110, x, y
   line x, y, x+150, y
   
   line x+10, y+100, x+140, y+100
   line x+140, y+100, x+140, y+10
   
   color RGB(black)
   
   line x, y+110, x+150, y+110
   line x+150, y+110, x+150, y

   line x+10, y+100, x+10, y+10
   line x+10, y+10, x+140, y+10

   if right$(flr$(fy), 4) = ".bas" then
    icon(x+15, y+20, "bas")
    
   elseif right$(flr$(fy), 8) = ".bas.bak" then
    icon(x+15, y+20, "bas")
    
   elseif right$(flr$(fy), 4) = ".wav" then
    icon(x+15, y+20, "sound")
    
   elseif right$(flr$(fy), 4) = ".mp3" then
    icon(x+15, y+20, "sound")

   elseif right$(flr$(fy), 4) = ".bmp" then
    icon(x+15, y+20, "img")
    
   elseif right$(flr$(fy), 4) = ".txt" then
    icon(x+15, y+20, "txt")
   
   elseif fy <= DCount then
    icon(x+15, y+20, "dir")
 
   else
    icon(x+15, y+20, "unknown")
    
   endif

   if len(flr$(fy)) =< 15 then   
    text x+40, y+25, flr$(fy), , 7, , RGB(black), RGB(210, 210, 210)

   elseif len(flr$(fy)) =< 30 then
    text x+40, y+20, left$(flr$(fy), 15), , 7, , RGB(black), RGB(210, 210, 210)
    text x+40, y+30, right$(flr$(fy), len(flr$(fy))-15), , 7, , RGB(black), RGB(210, 210, 210)

   else
   
    textt$ = right$(flr$(fy), 15)
    textt2$ = left$(textt$, 14) + "~"
   
    text x+40, y+20, left$(flr$(fy), 15), , 7, , RGB(black), RGB(210, 210, 210)
    text x+40, y+30, textt2, , 7, , RGB(black), RGB(210, 210, 210)

   endif
   
   text x+15, y+50, "size", , 7, , RGB(black), RGB(210, 210, 210)
   text x+15, y+75, "modified", , 7, , RGB(black), RGB(210, 210, 210)  
 
   if fy =< DCount then
    text x+15, y+60, "<DIR>", , 7, , RGB(blue), RGB(210, 210, 210)
   
   else
    text x+15, y+60, str$(mm.info(filesize flr$(fy)))+" bytes", , 7, , RGB(blue), RGB(210, 210, 210)
   
   endif
   
   text x+15, y+85, mm.info$(modified flr$(fy)), , 7, , RGB(blue), RGB(210, 210, 210)
   
   repeatAgain:
   
   do
   
    k$ = inkey$
    if k$ <> "" then
     if k$ = "i" then
     
      color RGB(210, 210, 210)
      box x+11, y+11, 129, 89, 100
      text x+20, y+20, "free space (bytes)", , 7, , RGB(black), RGB(210, 210, 210)
      text x+20, y+30, "CALCULATING", , 7, , RGB(blue), RGB(210, 210, 210)
      
      text x+20, y+45, "boot count", , 7, , RGB(black), RGB(210, 210, 210)
      text x+20, y+55, str$(mm.info(boot count)), , 7, , RGB(blue), RGB(210, 210, 210)
      
      text x+20, y+70, "ID", , 7, , RGB(black), RGB(210, 210, 210)
      text x+20, y+80, mm.info$(id), , 7, , RGB(blue), RGB(210, 210, 210)

      text x+20, y+30, str$(mm.info(free space)), , 7, , RGB(blue), RGB(210, 210, 210)
     
      goto repeatAgain
    
     else
      goto start
      
     endif
    endif
   loop

'===== RENAME ==========================

  '/*
  
  elseif k$ = "n" then
   renm = 1
   
   name:
   
   x3 = xbox+30
   y3 = ybox+50
   
   color RGB(190, 190, 190)
   box x3, y3, 100+50, 70, 100
   
   color RGB(210, 210, 210)
   box x3+10, y3+10, 80+50, 20, 100
   
   color RGB(210, 210, 210)
   box x3+10, y3+40, 80+50, 20, 100
   
   color RGB(white)
   line x3, y3+70, x3, y3
   line x3, y3, x3+150, y3
   
   line x3+10, y3+30, x3+140, y3+30
   line x3+140, y3+30, x3+140, y3+10
   
   line x3+10, y3+60, x3+140, y3+60
   line x3+140, y3+60, x3+140, y3+40
      
   color RGB(black)
   line x3, y3+70, x3+150, y3+70
   line x3+150, y3+70, x3+150, y3
   
   line x3+140, y3+10, x3+10, y3+10
   line x3+10, y3+10, x3+10, y3+30
   
   line x3+140, y3+40, x3+10, y3+40
   line x3+10, y3+40, x3+10, y3+60
   
   if renm = 1 then
    rnm$ = "RENAME :"' + fl$(fy)
    text x3+15+53, y3+15+1, fl$(fy), , 7, , RGB(blue), RGB(210, 210, 210)
   
   elseif mkd = 1 then
    rnm$ = "MAKE NEW DIR"
    
   endif
   
   text x3+15, y3+15+1, rnm$, , 7, , RGB(black), RGB(210, 210, 210)
   
   x3 = x3+15
   y3 = y3+50-3 'y3+50+20-2.5
   ox3 = x3
   mx3 = x3+( 6 * 20 )
   LCount = 0
   
   erase RName$
   dim RName$(21)
   
   do
    
    n$ = inkey$
    if n$ <> "" then
     if n$ = chr$(8) then
      LCount = Lcount - 1
      x3 = x3 - 6

      if x3 < ox3 then
       x3 = ox3
       LCount = LCount + 1
       
      elseif x3 > mx3 then
       x3 = mx3
       
      else
       RName$(LCount) = ""
       
      endif
       
      text x3, y3, " ", , 7, , RGB(210, 210, 210), RGB(210, 210, 210)

     elseif n$ = chr$(13) then
     
      ReNameF$ = ""
      for m = 1 to LCount
       ReNameF$ = ReNameF$ + RName$(m) 
      
      next

      if ReNameF$ = "" then
       err$ = "ERR : TYPE SOMETHING"
       text ox3, y3+16-47, err$, , 7, , RGB(red), RGB(210, 210, 210) 
        
       do
        
        k$ = inkey$
        if k$ <> "" then
         goto name:
        
        endif
       loop
        
      elseif mm.info(exists file ReNameF$) = 1 then
       err$ = "FILE ALREADY EXISTS!"
       text ox3, y3+16-47, err$, , 7, , RGB(red), RGB(210, 210, 210)

       do
        
        k$ = inkey$
        if k$ <> "" then
         goto name:
        
        endif
       loop
       
      elseif mm.info(exists dir ReNameF$) = 1 then
       err$ = "DIR ALREADY EXISTS!"
       text ox3, y3+16-47, err$, , 7, , RGB(red), RGB(210, 210, 210)
           
       do
        
        k$ = inkey$
        if k$ <> "" then
         goto name:
        
        endif
       loop
   
      else
      
       if renm = 1 then
        rename flr$(fy) as ReNameF$
        renm = 0
        goto start

       elseif mkd = 1 then
        mkdir RenameF$
        mkd = 0
        goto start

       endif
      endif

     'F1 KEY ( EXIT )
     elseif n$ = chr$(145) then
      mkd = 0 : renm = 0
      goto start

     else
     
      LCount = LCount + 1 
      x3 = x3 + 6
      
      if x3 > mx3 then
       x3 = mx3
       LCount = LCount - 1
      
      else
       text x3-6, y3, n$, , 7, , RGB(black), RGB(210, 210, 210)
       RName$(LCount) = n$
      
      endif
      
     endif
    endif
   loop

   '*/

'===== CHDIR - DOWN ====================

  elseif k$ = chr$(8) then
   chdir ".."

   startsFrom = orgStartsFrom
   fileLimit = orgFileLimit
   page = 1

   goto start

'===== GOTO ROOT =======================

 elseif k$ = "r" then
 
  chdir mm.info$(drive)
  goto start
  
'===== NEXT PAGE =======================

  elseif k$ = "." then
   
   if empty = 1 then
    goto start
   endif
   
   if ACount > fileLimit then
    startsFrom = startsFrom + orgFileLimit
    fileLimit = fileLimit + orgFileLimit
    page = page + 1
   
   else
    fileLimit = orgFileLimit
    startsFrom = orgStartsFrom
    page = 1
    
   endif

   p2$ = str$(page)
   mxp2$ = str$(mp)
   
   goto start
   
'===== PREVIOUS PAGE ===================   
   
  elseif k$ = "," then
  
   if empty = 1 then
    goto start
   endif
  
   if orgFileLimit < fileLimit then
    startsFrom = startsFrom - orgFileLimit
    fileLimit = fileLimit - orgFileLimit
    page = page - 1
   
   else
    fileLimit = orgFileLimit * mp
    startsFrom = fileLimit - orgFileLimit + 1 
    page = mp
 
   endif

   p2$ = str$(page)
   mxp2$ = str$(mp)

   goto start

'=======================================

  endif
 
  fcount = startsFrom
  fcountPL = 0
 
  x = x1+20 '50  / 30
  y = y1+80 '100 / 20
  a = 1

  if ACount < 6 then
   limit = ACount
 
  else
   limit = fileLimit

  endif

  if limit > ACount then
   limit = ACount
  endif


  for i = startsFrom to limit

   if x => 230 and a => 1 then
    y = y + 60
    a = a + 1
    x = x1+20
  
   endif 

   if fl$(i) = "" then
    exit for
   endif

   if len(fl$(i)) = 1 then
    x2 = 25

   elseif len(fl$(i)) = 2 then
    x2 = 22.5

   elseif len(fl$(i)) = 3 then
    x2 = 20
 
   elseif len(fl$(i)) = 4 then
    x2 = 17.5
  
   elseif len(fl$(i)) = 5 then
    x2 = 15
  
   elseif len(fl$(i)) = 6 then
    x2 = 12.5
  
   elseif len(fl$(i)) = 7 then
    x2 = 10
  
   elseif len(fl$(i)) = 8 then
    x2 = 7.5

   elseif len(fl$(i)) = 9 then
    x2 = 5
  
   elseif len(fl$(i)) = 10 then
    x2 = 2.5

   else
    x2 = 0

   endif

   if fy = fcount then
    text x+x2, y, fl$(i), , 7, , RGB(blue), RGB(210, 210, 210)

   else
    text x+x2, y, fl$(i), , 7, , RGB(black), RGB(210, 210, 210)

   endif 
   
  
   if a = 1 then
    fcountPL = fcountPL+1
   endif
  
   x = x + 70
   fcount = fcount + 1
  
  next
 
 endif
loop
 
waitUntil:

cls 

if extension$ = "bmp" then
 load image flr$(fy)
endif

text 60, 300, "press anything to exit", , , , RGB(green), RGB(black)

do

 k$ = inkey$
 if k$ <> "" then
  play stop
  cls RGB(0, 130, 130)
  goto start

 endif
loop 

 

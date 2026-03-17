        '-= FILE EXPLORER =-'

/*

=-====================-=
 .____ ___
 | ___| __| _  _
 | |_ | |_ \ \/ / ___+
 | __|| __| \  / |   |
 | |  | |_  /  \ | O |
 |_|  |___|/_/\_\| __|
                 |_|

  -= FILE  EXPLORER =-

*/


'+-= CONTROL CENTER =-+

  startsFrom = 1 'FILE
  'from which file the count starts

  'exam. startsFrom = 2
  '- - - - - - - - - - -
  ' file1 # won't appear
  ' file2 <- 1th file
  ' file3 <- 2nd file

  startFrom = 1  'DIR
  'same for startsFrom

  fileLimit = 6  'FILE
  'how many files will appear on
  'a page

  dirLimit = 6   'DIR
  'same for fileLimit

'+--------------------+

orgFileLimit = fileLimit
orgstartsFrom = startsFrom

orgDirLimit = dirLimit
orgStartFrom = startFrom

page = 1
dpage = 1

eras = 0
eras = eras - 1

'- - - - - - - - - - - - - - - - - - - -

start:
eras = eras + 1

'COUNT FILE$
ybox = 25
orgYbox = ybox
yMin = ybox
yMax = ybox

c = 1
name$ = Dir$("*.*", file$)
Do While name$ <> ""

 c = c + 1
 name$ = Dir$()

Loop

fileC = c - 1

mp = 0
For p = 1 To c

 If fileC > orgFileLimit Then
  fileC = fileC - orgFileLimit
  mp = mp + 1

 Else
  mp = mp + 1
  GoTo p

 EndIf

 Next

p:

'COUNT DIR$
dyMin = ybox
dyMax = ybox

dc = 1
dire$ = Dir$("*", dir$)
Do While dire$ <> ""

 dc = dc + 1
 dyMax = dyMax + 20
 dire$ = Dir$()

Loop
dyMax = dyMax + 20


y2 = 30
fy = startsFrom
dy = 0

If eras >= 1 Then

 Erase f$
 Erase d$

EndIf

c = c + 1

Dim f$(c+100)
Dim d$(100)

name$ = Dir$("*.*", file$)
f$(1) = name$
y2 = 30
fcount = 1
fileCount = 0

Do While name$ <> ""

 name$ = Dir$()
 fcount = fcount + 1
 f$(fcount) = name$
 fileCount = fileCount + 1

Loop

maxFile = fileCount

fileC = fcount - 1
fcount = startsFrom '1
fileCount = 0

'PRINT ALL FILES - START

Color RGB(200, 200, 200)
Box 40, ybox, 241, 20, 100

a = 0
pg$ = Str$(page)
mxpg$ = Str$(mp)
pg$ = "page : " + pg$ + " / " + mxpg$
Text 10, 300, pg$, , , , RGB(0, 160, 0)

For i2 = startsFrom To fileLimit

 If fcount = fy Then
  Text 50, y2, f$(i2), , , , RGB(black), RGB(200, 200, 200)

 Else
  Text 50, y2, f$(i2), , , , RGB(white)

 EndIf

 fcount = fcount + 1
 fileCount = fileCount + 1
 y2 = y2 + 20
 a = a + 1

 If i2 = maxFile Then
  GoTo skipRepeatFile
 EndIf

Next

skipRepeatFile:
yMax = ( a * 20 ) + 5

'MAX ( 6 FILES ) = y125

if yMax => 125 then

 Color RGB(green)
 path$ = Cwd$
 Text 60, yMax+55-8, path$, , 7

 Line 50, yMax+55, 270, yMax+55

 Text 60,  yMax+55+8, Chr$(144)
 Text 70,  yMax+55+9, "up/down", , 7
 Text 138, yMax+55+7, Chr$(145)
 Text 150, yMax+55+9, "next/previous page", , 7
 Text 222, yMax+55+20, "(q)uit", , 7
 Text 60,  yMax+55+20, "(d)irectory", ,  7
 Text 60,  yMax+55+30, "(enter) to execute", , 7
 Text 60,  yMax+55+40, "del/r to remove f.", , 7
 
else

 Color RGB(green)
 path$ = Cwd$
 Text 60, 172, path$, , 7

 Line 50, 180, 270, 180
 
 Text 60,  188, Chr$(144)
 Text 70,  189, "up/down", , 7
 Text 138, 187, Chr$(145)
 Text 150, 189, "next/previous page", , 7
 Text 222, 200, "(q)uit", , 7
 Text 60,  200, "(d)irectory", , 7
 Text 60,  210, "(enter) to execute", , 7
 Text 60,  220, "del/r to remove f.", , 7

endif

'PRINT ALL FILES - END


'-= MAIN LOOP =-'
Do

 skipfile:
 k$ = Inkey$

 If k$ <> "" Then
  CLS

'===== W KEY - UP ======================

  If k$ = Chr$(128) Then
   Color RGB(200, 200, 200)
   ybox = ybox - 20

   If ybox < yMin Then
    ybox = ybox + 20
    fy = fy + 1
   EndIf

   Box 40, ybox, 241, 20, 100
   fy = fy - 1

'===== S KEY - DOWN ====================

  ElseIf k$ = Chr$(129) Then
   Color RGB(200, 200, 200)
   ybox = ybox + 20

   If ybox > yMax Then
    ybox = ybox - 20
    fy = fy - 1
   EndIf

   Box 40, ybox, 241, 20, 100
   fy = fy + 1

'===== ENTER KEY =======================

  ElseIf k$ = Chr$(13) Then
   If Right$(f$(fy), 3) = "bas" Then
    Run f$(fy)

   ElseIf Right$(f$(fy), 3) = "bmp" Then
    Load image f$(fy)
    GoTo waitt

   ElseIf Right$(f$(fy), 3) = "wav" Then
    Play wav f$(fy)
    GoTo waitt

   ElseIf Right$(f$(fy), 3) = "mp3" Then
    CLS
    Color RGB(green)
    Text 20, 156, "cannot play MP3 sound"
    Pause 1500
    CLS
    GoTo start
/*
   ElseIf Left$(f$(fy), 2) = "._" Then
    CLS
    Color RGB(green)
    Text 20, 156, "unknown file"
    Pause 1500
    CLS
    GoTo start
*/
   Else
    CLS
    Color RGB(green)
    Text 20, 156, "unknown file extension"
    Pause 1500
    CLS
    GoTo start

   EndIf

   waitt:

   color RGB(green)
   text 70, 310, "press anything to exit"
  
   Do

    k4$ = Inkey$
    If k4$ <> "" Then
     CLS
     Play stop
     GoTo start

    EndIf

   Loop

'===== CHDIR ===========================

  ElseIf k$ = "d" Then
   CLS
   fileLimit = orgFileLimit
   page = 1
   startsFrom = orgStartsFrom
   GoTo directory

'===== NEXT PAGE =======================

  ElseIf k$ = Chr$(131) Then
   If fileC > fileLimit Then
    CLS

    fileLimit = fileLimit + orgFileLimit
    'print fileLimit, orgFileLimit,startsFrom
    startsFrom = fileLimit + 1 - orgFileLimit
    'print fileLimit, orgFileLimit,startFrom
    page = page + 1

    GoTo start

   Else
    fileLimit = orgFileLimit
    startsFrom = orgStartsFrom
    page = 1
    GoTo start

   EndIf

'==== PREVIOUS PAGE ====================
    
  ElseIf k$ = chr$(130) Then
   If orgFileLimit < fileLimit Then
    CLS
    
    fileLimit = fileLimit - orgFileLimit
    'print fileLimit, orgFileLimit,startsFrom
    startsFrom = startsFrom - orgFileLimit
    'print fileLimit, orgFileLimit,startFrom
    page = page - 1
    
    GoTo start
    
   Else
    fileLimit = orgFileLimit * mp
    startsFrom = fileLimit - orgFileLimit + 1 
    page = mp
    GoTo start
    
   endif
    
'===== DELETE ==========================

  ElseIf k$ = Chr$(127) or k$ = "r" Then
   delConfirm1$ = "do you want to delete file :"
   delConfirm2$ = f$(fy) + " ?"
   CLS
   Color RGB(green)
   Text 10, 50, delConfirm1$
   Text 10, 70, delConfirm2$
   Text 10, 100, "(y)es"
   Text 70, 100, "(n)o"

   Do

    k3$ = Inkey$
    If k3$ <> "" Then
     If k3$ = "y" Then
      kill f$(fy) ' - KILL COMMAND
      CLS
      GoTo start

     ElseIf k3$ = "n" Then
      CLS
      GoTo start

     EndIf
    EndIf
   Loop

'===== EXIT ============================

  elseif k$ = "q" then
   cls
   end

'===== ELSE ============================

  Else
   Color RGB(200, 200, 200)
   Box 40, ybox, 241, 20, 100

'=======================================

  EndIf

  y2 = 30
  fcount = startsFrom '1
  fileCount = 0

  pg$ = Str$(page)
  mxpg$ = Str$(mp)
  pg$ = "page : " + pg$ + " / " + mxpg$
  Text 10, 300, pg$, , , , RGB(0, 160, 0)

  For i = startsFrom To fileLimit

   If fcount = fy Then
    Text 50, y2, f$(i), , , , RGB(black), RGB(200, 200, 200)

   Else
    Text 50, y2, f$(i), , , , RGB(white)

   EndIf

   fcount = fcount + 1
   y2 = y2 + 20
   fileCount = fileCount + 1

  Next
  
  if yMax => 125 then

   Color RGB(green)
   path$ = Cwd$
   Text 60, yMax+55-8, path$, , 7

   Line 50, yMax+55, 270, yMax+55

   Text 60,  yMax+55+8, Chr$(144)
   Text 70,  yMax+55+9, "up/down", , 7
   Text 138, yMax+55+7, Chr$(145)
   Text 150, yMax+55+9, "next/previous page", , 7
   Text 222, yMax+55+20, "(q)uit", , 7
   Text 60,  yMax+55+20, "(d)irectory", , 7
   Text 60,  yMax+55+30, "(enter) to execute", , 7
   Text 60,  yMax+55+40, "del/r to remove f.", , 7
  
  else
 
   Color RGB(green)
   path$ = Cwd$
   Text 60, 172, path$, , 7

   Line 50, 180, 270, 180

   Text 60,  188, Chr$(144)
   Text 70,  189, "up/down", , 7
   Text 138, 188, Chr$(145)
   Text 150, 189, "next/previous page", , 7
   Text 222, 200, "(q)uit", , 7
   Text 60,  200, "(d)irectory", , 7
   Text 60,  210, "(enter) to execute", , 7
   Text 60,  220, "del/r to remove f.", , 7

  endif

 EndIf
Loop

'= = = = = = = = = = = = = = = = = = = =

directory:
CLS
ybox = 25

dire$ = Dir$("*", dir$)
d$(1) = dire$
y3 = 30
dcount = 1
dirCount = 0
dy = startFrom

Do While dire$ <> ""

 dire$ = Dir$()
 dcount = dcount + 1
 d$(dcount) = dire$
 dirCount = dirCount + 1

Loop

dirC = dcount - 1
dirC2 = dirC
dmp = 0

For p2 = 1 To dc

 If dirC2 > orgDirLimit Then
  dmp = dmp + 1
  dirC2 = dirC2 - orgDirLimit

 Else
  dmp = dmp + 1
  GoTo p2

 EndIf

Next

p2:

dpg$ = Str$(dpage)
dmxpg$ = Str$(dmp)

dpg$ = "page : " + dpg$ + " / " + dmxpg$
Text 10, 300, dpg$, , , , RGB(0, 160, 0)

'PRINT ALL DIR - START

Color RGB(200, 200, 200)
Box 40, ybox, 241, 20, 100

a = 0
dcount = startFrom

For id2 = startFrom To dirLimit

 If dcount = dy Then
  Text 50, y3, d$(id2), , , , RGB(black), RGB(200, 200, 200)

 Else
  Text 50, y3, d$(id2), , , , RGB(white)

 EndIf

 y3 = y3 + 20
 dcount = dcount + 1
 dirCount = dirCount
 a = a + 1

 If id2 = dirC Then
  GoTo here
 EndIf

 Next

here:
dyMax = ( a * 20 ) + 5

if dyMax => 125 then

 Color RGB(green)
 path$ = Cwd$
 Text 60, dyMax+55-8, path$, , 7

 Line 50, dyMax+55, 270, dyMax+55

 Text 60,  dyMax+55+8, Chr$(144)
 Text 70,  dyMax+55+9, "up/down", , 7
 Text 146, dyMax+55+8, Chr$(145)
 Text 158, dyMax+55+9, "next/previous page", , 7
 Text 60,  dyMax+55+20, "(q)uit", , 7
 Text 158, dyMax+55+20, "a/b - change drive", , 7
 Text 60,  dyMax+55+30, "(enter) to chdir", , 7
 Text 60,  dyMax+55+40, "(backspace) go layer down", , 7

else
 
 Color RGB(green)
 path$ = Cwd$
 Text 60, 172, path$, , 7

 Line 50, 180, 270, 180
 
 Text 60,  188, Chr$(144)
 Text 70,  189, "up/down", , 7
 Text 146, 188, Chr$(145)
 Text 158, 189, "next/previous page", , 7
 Text 60,  200, "(q)uit", , 7
 Text 158, 200, "a/b - change drive", , 7
 Text 60,  210, "(enter) to chdir", , 7
 Text 60,  220, "(backspace) go layer down", , 7

endif

'PRINT ALL DIR - END

Do

 skipdir:
 k2$ = Inkey$

 If k2$ <> "" Then
  CLS

'===== W KEY - UP ======================

  If k2$ = Chr$(128) Then
   ybox = ybox - 20
   Color RGB(200, 200, 200)

   If ybox < dyMin Then
    ybox = ybox + 20
    dy = dy + 1
   EndIf

   Box 40, ybox, 241, 20, 100
   dy = dy - 1

'===== S KEY - DOWN ====================

  ElseIf k2$ = Chr$(129) Then
   ybox = ybox + 20
   Color RGB(200, 200, 200)

   If ybox > dyMax Then
    ybox = ybox - 20
    dy = dy - 1
   EndIf

   Box 40, ybox, 241, 20, 100
   dy = dy + 1

'===== ENTER KEY =======================

  ElseIf k2$ = Chr$(13) Then
   Chdir d$(dy)
   GoTo start

  ElseIf k2$ = Chr$(8) Then
   Chdir ".."
   GoTo start

  ElseIf k2$ = "a" Then
   Drive "a:"
   GoTo start

  ElseIf k2$ = "b" Then
   Drive "b:"
   GoTo start

  ElseIf k2$ = "q" Then
   GoTo start

'===== NEXT PAGE =======================

  ElseIf k2$ = Chr$(131) Then
   If dirC > dirLimit Then
    dirLimit = dirLimit + orgDirLimit
    startFrom = dirLimit + 1 - orgDirLimit
    dpage = dpage + 1

    GoTo directory

   Else
    dirLimit = orgDirLimit
    startFrom = orgStartFrom
    dpage = 1

    GoTo directory

   EndIf

'==== PREVIOUS PAGE = ===================

  ElseIf k2$ = chr$(130) Then
   If orgDirLimit < dirLimit Then
    CLS
    
    dirLimit = dirLimit - orgDirLimit
    'print fileLimit, orgFileLimit,startsFrom
    startFrom = startFrom - orgDirLimit
    'print fileLimit, orgFileLimit,startFrom
    dpage = dpage - 1
    
    GoTo directory
    
   Else
    dirLimit = orgDirLimit * dmp
    startFrom = dirLimit - orgDirLimit + 1 
    dpage = dmp
    GoTo directory
    
   endif    
    
'===== ELSE ============================

  Else
   Color RGB(200, 200, 200)
   Box 40, ybox, 241, 20, 100

'=======================================

  EndIf

  dcount = startFrom
  y3 = 30
  dirCount = 0

  For id = startFrom To dirLimit

   If dcount = dy Then
    Text 50, y3, d$(id), , , , RGB(black), RGB(200, 200, 200)

   Else
    Text 50, y3, d$(id), , , , RGB(white)

   EndIf

   dcount = dcount + 1
   y3 = y3 + 20
   dirCount = dirCount + 1

  Next
  
  if dyMax => 125 then

   Color RGB(green)
   path$ = Cwd$
   Text 60, dyMax+55-8, path$, , 7

   Line 50, dyMax+55, 270, dyMax+55

   Text 60,  dyMax+55+8, Chr$(144)
   Text 70,  dyMax+55+9, "up/down", , 7
   Text 146, dyMax+55+8, Chr$(148)
   Text 158, dyMax+55+9, "next/previous page", , 7
   Text 60,  dyMax+55+20, "(q)uit", , 7
   Text 158, dyMax+55+20, "a/b - change drive", , 7
   Text 60,  dyMax+55+30, "(enter) to chdir", , 7
   Text 60,  dyMax+55+40, "(backspace) go layer down", , 7

  else
  
   Color RGB(green)
   path$ = Cwd$
   Text 60, 172, path$, , 7

   Line 50, 150+30, 270, 150+30

   Text 60,  188, Chr$(144)
   Text 70,  189, "up/down", , 7
   Text 146, 188, Chr$(148)
   Text 158, 189, "next page", , 7
   Text 60,  200, "(q)uit", , 7
   Text 158, 200, "a/b - change drive", , 7
   Text 60,  210, "(enter) to chdir", , 7
   Text 60,  220, "(backspace) go layer down", , 7

  endif
  
  dpg$ = Str$(dpage)
  dmxpg$ = Str$(dmp)

  dpg$ = "page : " + dpg$ + " / " + dmxpg$
  Text 10, 300, dpg$, , , , RGB(0, 160, 0)

 EndIf
Loop

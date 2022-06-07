rem This program is designed to alert you of changes to the changelog and is intended to be run at login.
rem If you have an Autorun.bas file it will add it self to that.
10 if instr(dir$," changelog.bak ")=-1 then th_exec "cp changelog.txt changelog.bak" : Print "inital run detected" : go to 9001
20 open "changelog.txt",AS #1
   open "changelog.bak",AS #2
30 if EOF(1) = -1 THEN GOTO 79
40 INPUT# 1, A
50 INPUT# 2, B
REM 60 PRINT A, B
65 IF A<>B then goto 70
70 print "NEW CHANGES FOUND"
71 th_exec "more changelog.txt"
72 Goto 80
67 GOTO 30
79 Print "NO NEW CHANGES"
80 CLOSE #1
81 close #2


REM the 5000 series is not working "will fix(TM)"
REM 5000 if instr(dir$," autorun.bas ")=1 then GOTO 5030
REM 5030 open "autorun.bas", AS #1
REM 5040 IF EOF(1) = -1 THEN GOTO 5070
REM 5050 INPUT# 1, DUMPP$
REM 5060 GOTO 5040
REM 5070 PRINT# 1, "tood"
9000 end
9001 goto 10

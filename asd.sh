#0
find . -printf %s %pn |sort -nr | head -n 3
#1
find -type f -regex ".*/.*\.\(shtml\|css\)
#2
find / -type f -links +1 -printf %i %n %pn | head

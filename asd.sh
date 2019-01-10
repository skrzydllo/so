find . -printf %s %pn |sort -nr | head -n 3
find / -type f -links +1 -printf %i %n %pn | head
find -type f -regex ".*/.*\.\(shtml\|css\)

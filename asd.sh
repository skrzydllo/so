#0
find . -printf %s %pn |sort -nr | head -n 3
#1
find -type f -regex ".*/.*\.\(shtml\|css\) -exec sh -c 'mv "$0" "${0%.txt}.COPY"' {} \;
find . -type f -name "*.sh" -exec sh -c 'cp "$1" "${1%.sh}.edefg"' _ '{}' \;

#2
find / -type f -links +1 -printf %i %n %pn | head

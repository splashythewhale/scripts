#/bin/sh

#Just put this code into a file /bin/treesize and make it executable. 
#Then any system user can get a list of directory sizes within a directory by just running treesize from any directory.

du -k --max-depth=1 | sort -nr | awk '
BEGIN {
split("KB,MB,GB,TB", Units, ",");
}
{
u = 1;
while ($1 >= 1024) {
$1 = $1 / 1024;
u += 1
}
$1 = sprintf("%.1f %s", $1, Units[u]);
print $0;
}
'

# Hostname
hostname

# Distribution name and version
echo
echo '## Distribution name and version'
head -n1 /etc/issue 

# Kernel version and system architecture
echo
echo '## Kernel version and system architecture'
uname -snrm

# Partitions
echo
echo '## Partitions'
cat /proc/partitions 

# RAM info
echo
echo '## Total info'
grep MemTotal /proc/meminfo 

# CPU info
echo
echo '## CPU info'
grep "model name" /proc/cpuinfo
lscpu

# Mounted filesystems
echo
echo '## Mounted filesystems'
mount | column -t 

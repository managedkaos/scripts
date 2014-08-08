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

# RAM info
echo
echo '## RAM info'
grep MemTotal /proc/meminfo 

# CPU info
echo
echo '## CPU info'
grep "model name" /proc/cpuinfo
echo
lscpu

# Network interfaces
echo
echo '## Network interfaces'
lspci | egrep -i 'network|ethernet'
echo
ifconfig

# Partitions
echo
echo '## Partitions'
df -Th
echo
cat /proc/partitions 

# Mounted filesystems
echo
echo '## Mounted filesystems'
mount | column -t

echo
echo "Generated on `date`"

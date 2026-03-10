## Storage Media
- Devices which store data and information and connected to Linux
- The devices could be:

    1.  RAID (Redundant array of independent disks)
    2. Hard drive
    3. SSD
    4. GPU etc..

List all mounted on the system
```
mount
```
### File System(fs)

- File system is responsible for data storage, indexing and retrieval of data on a storage device.

O.S and their fs:

    1. Linux        - ext,ext4
    2. MacOs        - APFS, HFS+(older)
    3. Microsoft    - NTFS

Creating file system using command
```
mkfs -t <type> <path>
```
``-t`` represents what type of file system

- Unmounting a device
Outside of the mounted device
```
unmount <filepath>
```

### Checking file systems and reparing
- Due to hardware, power failures, the file systems may corrupt disk.

Check a file system corruption
``fsck``(file system check)
```
fsck <path>
```
**DON'T**
- Run ``fsck`` on root, as it simultaneoulsy checks on running system causing damage to the OS

- Linux actually runs ``fsck`` automatically at boot if it detects the filesystem wasn't cleanly unmounted

### RAID
check RAID configuration
```
cat /proc/mdstat
```
gives detailed information about that particular array.
```
mdadm --detail /dev/<raid-array>
```
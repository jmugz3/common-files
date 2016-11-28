
# editing
alt + ->
alt + <-
ctrl + e (end)
ctrl + a (beginning)

# log
history
!history

# info
ls -i (show inode number)
ls -t (sort by newest)
ls -R (recursively list)
ls -ali (long format with hidden files and inode number) *most useful*

drwxrwxr-x 4 user1 dev 4096 Aug 1 2013 fooworld.py
* d (directory) + rwxrwxr (permissions)
* 4 is the number of hardlinks
* user1 is the name of the owner of file
* dev is the group name
* 4096 is the file size
* Aug 1 2013 is the file creation date
* fooworld.py is the name of the file

whatis <function/library/etc>  (not for builtins)

# renaming
mv <old> <new>

# removing
rm -R <dirname>
rm -Rv <dirname> <filename>

# symbolic links
ln (hard link - same inode)
ln -s (soft link - different inode)

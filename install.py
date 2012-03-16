#!/usr/bin/python
import os

# Files and directories that should not be linked.
ignore = ['.git', 'README.md', 'install.py'] 


def make_link(filename):
    # Make a backup of the old file and replace it with a 
    # symbolic link to filename.

    target = os.path.expanduser('~/.%s' % filename)
    fullname = os.path.join(os.getcwd(), filename) 

    if (os.path.islink(target)):
        os.remove(target)
    elif (os.path.exists(target)):
        os.rename(target, target + '.old')

    os.symlink(fullname, target)


if __name__ == "__main__":
    
    files = os.listdir('./.')
    files = filter(lambda s: s not in ignore, files)
    files = filter(lambda s: s[-3:] != 'swp', files)
    files = filter(lambda s: s[0] != '.', files)

    for f in files:
        print('Linking: %s' % f)
        make_link(f)

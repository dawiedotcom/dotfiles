#!/usr/bin/python
import os

# Files and directories that should not be linked.
ignore = ['.git', 'README.md', '.vim', 'install.py'] 


def make_link(filename):
    # Make a backup of the old file and replace it with a 
    # symbolic link to filename.

    target = os.path.expanduser('~/%s' % filename)

    if (os.path.exists(target)):
            os.rename(target, target + '.old')

    os.symlink(filename, target)


if __name__ == "__main__":
    
    files = os.listdir('./.')
    files = filter(lambda s: s not in ignore and s[-3:] != 'swp', files)

    for f in files:
        print('Linking: %s' % f)
        make_link(f)

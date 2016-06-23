#!/usr/bin/env python

import os
import os.path as pt

# Files and directories that should not be linked.
ignore = [
    'README.md',
    'install.py',
    'install-vim-plugins.py',
    'plugins.yaml',
    # Using spacemacs
    'emacs.el',
    'emacs.d',
]

destinations = dict((
    ('config.fish', '~/.config/fish/'),
))

def make_link(destination, filename):
    # Make a backup of the old file and replace it with a
    # symbolic link to filename.

    path = pt.expanduser(destination)
    target = pt.join(path,
                     ('.' + filename
                      if destination == '~'
                      else filename))
    fullname = pt.join(os.getcwd(), filename)

    if (pt.islink(target)):
        os.remove(target)
    elif (pt.exists(target)):
        os.rename(target, target + '.old')

    os.symlink(fullname, target)


if __name__ == "__main__":

    files = os.listdir('./.')
    files = filter(lambda s: s not in ignore, files)
    files = filter(lambda s: s[0] != '.', files)

    for f in files:
        dest = destinations.get(f, '~')
        print('Linking: {0}{1} -> {1}'
              .format(dest
                      if not dest == '~'
                      else dest+'/.',
                      f))
        make_link(dest, f)

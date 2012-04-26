#!/usr/bin/python

import os
import shutil
import sys
import subprocess
import yaml

try:
    f = open('plugins.yaml')
    plugins = yaml.load(f)
    f.close()
except:
    print('Could not find plugins(.yaml) to install.')
    sys.exit(1)

def bundle(plugin):
    '''Get the path to the plugin.'''
    return os.path.join(os.getcwd(), 'vim', 'bundle', plugin)

def git_clone(url, plugin):
    '''Git the git clone command.'''
    return 'git clone %s %s' % (url, bundle(plugin))

def dotgit(plugin):
    '''Git the path to the .git folder.'''
    return os.path.join(bundle(plugin), '.git')

def main():
    for plugin, url in plugins.iteritems():
        if os.path.exists(bundle(plugin)):
            shutil.rmtree(bundle(plugin))
        subprocess.call(git_clone(url, bundle(plugin)), shell=True)
        shutil.rmtree(dotgit(plugin))


if __name__ == '__main__':
    main()

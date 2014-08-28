#!/usr/bin/env python3
import os
import glob
import re
import subprocess

root = os.path.join(subprocess.getoutput('git rev-parse --show-toplevel'), 'slides')

def cat(name):
    return open(name, 'r').readlines()


def grep(text, pattern):
    p = re.compile(pattern)
    lines = []
    i = 0
    for l in text:
        i += 1
        if p.match(l):
            lines += [i]
    return lines


def get_grep(text, pattern):
    p = re.compile(pattern)
    out = []
    i = 0
    for l in text:
        i += 1
        m = p.match(l)
        if m:
            out += [m.groups()[0]]
    return out


def gglob(path, f):
    l = glob.glob(os.path.join(path, f))
    for folder in os.listdir(path):
        full_path = os.path.join(path, folder)
        if os.path.isdir(full_path):
            l += gglob(full_path, f)
    return l


def check_size(name, size):
    return True if os.path.getsize(name) < size else False


# ---------------------------------------------------------

def check_all_file_tab():
    err = False
    global root
    files = gglob(root, "*.md")
    for f in files:
        lines = grep(cat(f), "\t")
        if len(lines) > 0:
            print('error: in {} has tabs in {} lines'.format(f, lines))
            err = True
    return err


def check_all_file_end_empty_lines():
    err = False
    global root
    files = gglob(root, "*.md")
    for f in files:
        if cat(f)[-1][-1] == '\n':
            print('error: in {} has space in the end of file'.format(f))
            err = True
    return err


def check_all_file_end_space():
    err = False
    global root
    files = gglob(root, "*.md")
    for f in files:
        lines = grep(cat(f), ".*[ ]+$")
        if len(lines) > 0:
            print('error: in {} has space in the end of lines {}'.format(f, lines))
            err = True
    return err


def check_all_file_size(max_size):
    err = False
    global root
    files = gglob(root, "*")
    for f in files:
        if not check_size(f, max_size):
            print('error: sizeof({}) >= {}'.format(f, max_size))
            err = True
    return err


def check_all_file_name():
    err = False
    global root
    files = os.listdir(root)
    for f in files:
        if os.path.isdir(f) and re.match('\d\d-.*', f):
            path = os.path.abspath(os.path.join(root, f))
            file = os.path.join(path, os.path.basename(path) + '.md')
            if not os.path.exists(file):
                print('error: folder {} has not {}'.format(f, file))
                err = True
    return err


def check_all_images_exists():
    err = False
    global root
    files = gglob(root, "*.md")
    for f in files:
        path = os.path.dirname(os.path.abspath(f))
        m = get_grep(cat(f), "!\[\]\(([^)]*)\)")
        for img in m:
            full_path = os.path.join(path, img).replace('/./', '/')
            if not os.path.exists(full_path):
                print('error: {} not exist'.format(full_path))
                err = True
    return err


def main():
    err = False
    err = err or check_all_file_size(512 * 1024)
    err = err or check_all_file_name()
    err = err or check_all_file_tab()
    err = err or check_all_file_end_space()
    err = err or check_all_file_end_empty_lines()
    err = err or check_all_images_exists()

    return 1 if err else 0


if __name__ == '__main__':
    exit(main())


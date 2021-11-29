#!/usr/bin/python3

import sys
import os

all_repo = []

def usage():
    print("usage: ")
    print("\t./pullallgit directory")
    print("")
    print("\t-------")
    print("\tpull all git repos under the directory")

def findrepo(path):
    with os.scandir(path) as it:
        for entry in it:
            #print(entry.path)
            if entry.is_dir():
                if entry.name=='.git': 
                    all_repo.append(os.path.abspath(os.path.dirname(entry.path)))
                else:
                    findrepo(entry.path)

def pullallgit(path):
    print("pullallgit", os.path.abspath(path))
    findrepo(path)

    for repo in all_repo:
        print("repo:", repo)

        os.chdir(repo)
        print("git pull")
        f=os.popen("git pull")  # 返回的是一个文件对象
        print(f.read())            # 通过文件的read()读取所返回的内容


if __name__=="__main__":
    path = "."
    if len(sys.argv) == 2:
        if sys.argv[1]=='-h' or sys.argv[1] =='--help':
            usage()
            sys.exit(1)
        path = sys.argv[1]
    else:
        usage()
        sys.exit(1)
        
    pullallgit(path)

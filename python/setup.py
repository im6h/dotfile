import sys


def get_system():
    os = sys.platform
    if os == "darwin":
        print("Mac OS")
    else:
        print("Other OS")

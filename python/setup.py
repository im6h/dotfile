import sys

def get_os():
    os = sys.platform
    if os == "darwin":
        print("Mac OS")
    else:
        print("Other OS")

get_os()

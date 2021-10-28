import subprocess


def install_oh():
    url = "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cmd = ["sh", "-c", url]
    subprocess.run(cmd)

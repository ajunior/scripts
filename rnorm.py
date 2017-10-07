from platform import system
from subprocess import check_output
from time import sleep

def get_documment(platform, url):
    if platform is "Windows":
        check_output("start chrome " + url, shell=True)

count = 0
with open("resolucoes.txt", "r") as file:
    for line in file:
        get_documment(system(), line)
        count += 1
        sleep(2)

print("Finalizado! %d link(s) lidos." % (count))
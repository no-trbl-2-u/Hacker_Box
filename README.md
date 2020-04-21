# Kali Linux Hacking Boxes

This Docker container is a dedicated environment to practice pen-testing in HTB.
It has the ability to run JS and Python scripts which are found in `./Utils`. This
Directory is copied into the container's `/utils` directory.

## In Order to start using this environment
```sh
git clone ___
cd _____
sudo chmod +x Start.sh
./Start.sh
```
**NOTE!**
> In Start.sh, update `cd ~/Workspace/PenTesting/Environment` line to the directory you cloned the repo into.


## List of installed tools
* nmap
* curl

## List of Utils scripts
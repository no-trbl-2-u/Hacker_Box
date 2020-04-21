# Kali Linux Hacking Boxes

This Docker container is a dedicated environment to practice pen-testing in HTB.
It has the ability to run JS and Python scripts which are found in `./Utils`. This
Directory is copied into the container's `/utils` directory.

## In Order to start using this environment
```sh
git clone https://github.com/no-trbl-2-u/Hacker_Box.git
cd Hacker_Box
sudo chmod +x Start.sh
./Start.sh
```

**NOTE!**
> In order to use this ./Start.sh script as a quick command from your terminal, add a `cd ~/Path/To/Repo` line at the top of the script to allow this `Start.sh` Script to work starting from anywhere.

## List of Utils scripts

## Future Plans
* Create another Dockerfile (or extend this one) to allow for a db container to assist Metasploits' environment.
* Configure ssh
* Check Security Implications to see if main machine is safe while ssh'ing into a HTB Machine from inside the container.
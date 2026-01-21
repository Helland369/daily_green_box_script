# daily_green_box_script

A script made just for fun that is a one command daily push to github, so that you get your green box for the day.

# How to run and install

Simplest way:

Setp 1:
```bash
git clone https://github.com/Helland369/daily_green_box_script.git
```

Step 2:
```bash
cp ~/daily_green_box_script/greenbox.sh ~/
```

Step 3:

Use your favorite text editor to edit the REPO="$HOME/path/to/repo" variable to the actual path to your repo.
```bash
emacs -nw greenbox.sh
```

Step 4:

Source/run the script

``` bash
source greenbox.sh
```

# Optional

You could also chmod -x the script and set it up with some systemd magic and have it be automated. If you want to do this you shold uncomment line 4 in greenbox.sh for more safety.

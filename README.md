### Dotfiles
```
  _                         _____               _______        _ 
 | |                       |  __ \             |__   __|      (_)
 | |    _   _  __ _ _ __   | |  | | ___ _ __      | |_ __ __ _ _ 
 | |   | | | |/ _` | '_ \  | |  | |/ _ \ '_ \     | | '__/ _` | |
 | |___| |_| | (_| | | | | | |__| |  __/ |_) |    | | | | (_| | |
 |______\__,_|\__,_|_| |_| |_____/ \___| .__/     |_|_|  \__,_|_|
                                       | |                       
                                       |_|                       

```

Install
-----
Clone the repo and its submodules, then install links.
The install **will not** override any configs by default.

```sh
git clone https://github.com/luanldt/dotfiles.git && \
cd dotfiles && \
git submodule update --init --recursive && \
./install
```

If errors occur due to existing files, move them and try again:

```
mv <config file> <config file>.bak
```

The install can be retried with `./install`

Update
-----

Included is an `./update` script which fetches and rebases upstream changes, updates submodules and installs the new configs.

```sh
cd /path/to/dotfiles
./update.sh
```

Or if you don't trust my scripts (why should you?), you can update manually:

```sh
git fetch -vp --tags # Update refs
git rebase origin/master # Bring in new changes
git submodule update --init --recursive # Update submodules
python2 libs/github/dotbot/bin/dotbot -d ./ -c install.conf.json # Install/clean links
```

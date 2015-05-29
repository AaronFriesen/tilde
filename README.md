# ~

My home directory (sans confidential stuff, of course). I've spent too long incessantly fiddling with various config files to just let them dissappear if my disk crashes.

Places I have blatantly stolen ideas from:

* https://github.com/csimpkins/dotfiles
* https://github.com/webpro/dotfiles
* https://github.com/mathiasbynens/dotfiles

## Personal Rules

1. If other repositories are used as part of configs (I'm looking at you, `.vim/bundle`) then they should be declared as submodules to keep things clean.
2. Keep this as trim and tidy as I can. This means limiting most of my junk work to `~/scratch`, which has been .gitignore'd.
3. Comments on as many files as I can. Even now I barely know what half of these configurations do anymore. Future me will appreciate it (right?).

## Fresh Install

When I inevitably need to do a fresh install of this repo:

1. Install [brew](http://brew.sh/), you monster! Unless OSX starts coming bundled with it. That'll be the day...
2. Install git via `brew install git`. How else were you going to clone this bad boy?
3. `cd` to `/Users/`
4. `git clone https://github.com/AaronFriesen/tilde.git aaron` (or whatever I'm calling myself by then)
5. Run `./.install-brew.sh && ./install-cask.sh`. Go have a drink. Cask in particular could take a _while_.
6. Thank past you (a.k.a. me) for updating the README before I actually needed it.

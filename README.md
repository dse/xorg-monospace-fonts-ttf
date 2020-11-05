# xorg-monospace-fonts-ttf

My work in progress at converting **all** of the monospace bitmap
fonts that come with X11 to `.ttf`.

This includes:

-   Lucida Typewriter
-   DEC Terminal
-   Misc Fixed (6x13, 10x20, and all the others)
-   Sony bitmap fonts

## About Submodules

If you just run

    git clone git@github.com:dse/xorg-monospace-fonts-ttf.git

You'll get the directories containing the submomdules but nothing in
them yet.

You'll then need to run:

    git submodule init          # initialize your .gitmodules
    git submodule update        # fetch your data from referred-to projects

You could have run:

    git clone --recurse-submodules

The `submodule init` and `update` commands can be combined:

    git submodule update --init

With nested submodules:

    git submodule update --init --recursive

To pull your submodules from remote:

    git submodule update --remote
    git submodule update --remote --recursive

When pulling your repos:

    git pull --recurse-submodules
    # runs:
    #     git submodule update ...

When a submodule changes its remote URL:

    git submodule sync --recursive
    git submodule update --init --recursive

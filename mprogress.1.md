% MProgress(1) mprogress 1.0.0
% Mitja Felicijan
% 2022-12-30

# NAME
mprogress - A simple progress bar for the terminal

# SYNOPSIS
mprogress [options] [command]

# DESCRIPTION
Tiny utility that displays progress bar in terminal. It can read from stdin or from arguments.

# OPTIONS
*--help*::
  Show help message and exit.

*-h*::
  Show help message and exit.

# EXAMPLES
**mprogress 10 200**
:  Show progress bar with 10 as current value and 200 as maximum value.

**echo 10 200 | mprogress**
:  Same as above.

# License
MIT

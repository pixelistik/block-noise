## "Block Noise!"
![Photo](http://pixelistik.de/projekte/block-noise/img/P1211973t.jpg)

### An interactive video installation

"Block Noise!" is a video installation on MPEG-4 and recursive pixel regimes.
You can read about the background 
[on the project page](http://pixelistik.de/projekte/block-noise/en.html).

### Technical stuff

The installation is basically a visual feedback loop between a DV camera and
a digital projection, with a Linux machine inbetween. This repository contains
the shell scripts that create the live effect.

#### Requirements

 - A computer running linux (tested on Ubuntu 11.04)
 - `dvgrab`
 - `ffmpeg`
 - `vlc`
 - [`autodatamosh.pl` by Joe Friedl](https://github.com/grampajoe/Autodatamosh),included as a git submodule
 - A DV camera that connects to the computer
 - A digital projector that connects to the computer
 
 ### License
 
 [GPL3](https://www.gnu.org/licenses/gpl-3.0.html)
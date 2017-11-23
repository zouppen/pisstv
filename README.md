# PiSSTV

PiSSTV is a simple implementation of various SSTV protocols, to be used by low-frills computers running a CLI, such as with Raspberry Pis and so on.
Its intended for use by ham radio amateurs.

## Compiling

To compile PiSSTV, you should download this repository and also have:

* gcc
* libgd
* libmagic
* make

On Ubuntu or Debian, you should be able to install those dependencies by typing into your terminal:

`sudo apt-get install build-essential libgd libmagic`

After that, type `make pisstv` in the directory where PiSSTV resides in.

## Usage

`./pisstv [-rSAMPLERATE] [-pPROTOCOL] imagename`

This command creates a WAVE file in the current working directory that encodes a PNG or JPG image into an SSTV audio signal. 

Supported protocols and their respective options:

* Martin 1: m1
* Martin 2: m2
* Scottie 1: s1
* Scottie 2: s2
* Scottie DX: sdx
* Robot 36: r36
* PD 120: pd120

`file` must be a PNG or JPG formatted image. Be advised that all modes except Robot 36 can only accept 320x256 sized images without cropping, whereas Robot 36 can only accept 320x240 sized images without cropping. The PD120 mode accept only 640x496 sized images.

For instance, to create an audio file with the Scottie 2 protocol with a sampling rate of 22050Hz, and the input as a file `buzzece_qr.png` invoke:

`./pisstv -r 22050 -p s2 buzzece_qr.png`

This will create `buzzece_qr.png.wav` in the working directory that encodes the ECE Buzz image in the Scottie 2 protocol.

## Other things

pisstv: to convert the image to a soundfile.


pisstv is heavilly based on work from KI4MCW, which can be found here: https://sites.google.com/site/ki4mcw/Home/sstv-via-uc
I fixed some errors and made it a little bit more flexible.


The original program was intended for transmitting broadband stereo signals.
[AgriVision] adapted it a little bit so that the bandwidth can be set, which is very important for narrow-band ham radio transmissions. Also the timing can be tuned from the command-line, which is important for SSTV, where impropper timing results in slanted images.


## License
All of the code contained here is licensed by the GNU General Public License v3.
A copy of the GPLv3 has been included in the repository.

## Credits

AgriVision (Gerrit Polder)

KI4MCW for SSTV

Oliver Mattos and Oskar Weigl for PiFM

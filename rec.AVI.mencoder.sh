
# apt-get install liblzo2-2 mencoder

[ "$1" = "-h" ] && ( echo "usage: $0  DEVICE  WIDTH  HEIGHT OUTPUT.avi" ; echo "outputs a RIFF (little-endian) data, AVI, W x H, 30.00 fps, video: FFMpeg MPEG-4" )


[ "$#" -gt 3 ] && mencoder tv:// -tv driver=v4l2:width=$2:height=$3:device=$1 -nosound -ovc lavc -o $4

##example
#  mencoder tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video0 -nosound -ovc lavc -o out.avi


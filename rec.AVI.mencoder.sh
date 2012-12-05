
# apt-get install liblzo2-2 mencoder

[ "$1" = "-h" ] && ( echo "usage: $0  DEVICE  WIDTH  HEIGHT OUTPUT.avi" )

[ "$#" -gt 3 ] && mencoder tv:// -tv driver=v4l2:width=$2:height=$3:device=$1 -nosound -ovc lavc -o $4

##example
#  mencoder tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video0 -nosound -ovc lavc -o out.avi


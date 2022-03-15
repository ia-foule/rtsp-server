# Run the image
```docker run -d --name CONTAINER_NAME ghcr.io/ia-foule/vlc-server CVLC_ARGUMENTS```

CVLC_ARGUMENTS could be :
```/data/5.mp4 --loop :sout=#gather:rtp{sdp=rtsp://:8554/test.sdp} :network-caching=1500 :sout-all :sout-keep```

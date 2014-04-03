Embedded_Beamer
===============

Setting up embedded videos in beamer for linux

Needs git:

<code>
sudo apt-get install git
</code>

Clone using:

<code>
git clone https://github.com/Giannie/Embedded_Beamer
</code>

Run scripts with:

```
cd Embedded_Beamer
./embedded_beamer.sh
```

To embed the files, you have to use the extrabeamercmds style file, either place it in the same directory as your tex file, or in the tex search path:

```
\usepackage{extrabeamercmds}
```

You have to create a poster file for any video you want to embed, the way to do this is to run:

```
create_poster /path/to/video/folder/
```

This will create posters for all mp4 and avi files in the directory.

To embed an avi, with a poster already created and in the same folder as the video (note: no extension):

```
\fullFrameMovieAvi{videos/myvideo}
```

For other formats or to choose a poster with a different name:

```
\fullFrameMovie{videos/myvideo.avi}{videos/myvideo.jpg}
```

Or without the style file:

```
\href{run:myvideo.avi?autostart&loop}{\includegraphics[width=\paperwidth,height=0.5625\paperwidth]{myposter.jpg}}
```

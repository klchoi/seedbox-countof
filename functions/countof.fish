function countof -a dir -d "count direct child directories and video files"
  set -l count ( count $dir/*.{mp4,MP4,mkv,MKV,avi,AVI} )
  for d in $dir/*/
    switch ( path basename $d )
    case '_*'
      set count ( math $count + ( countof $d ) )
    case '*'
      count $d/*.{mp4,MP4,mkv,MKV,avi,AVI,jpg,JPG,jpeg,JPEG,png,PNG} >/dev/null && set count ( math $count + 1 )
    end
  end
  echo $count
end

function countof -a dir -d "count direct child directories and video files"
  count $dir/*/ \
    $dir/*.mp4 $dir/*.MP4 \
    $dir/*.mkv $dir/*.MKV \
    $dir/*.avi $dir/*.AVI
end

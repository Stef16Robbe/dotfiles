function ytmp3
    if test (count $argv) -eq 0
        echo "Usage: ytmp3 <URL>"
        return 1
    end

    set url $argv[1]
    uvx yt-dlp $url -f bestaudio -x --audio-format mp3 --output "%(title)s.%(ext)s"
end

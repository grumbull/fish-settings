function fish_prompt
    set_color $fish_color_cwd

    echo

    if [ $PWD = "/" ]
      echo -n "/"

    else if [ $PWD = "/Users/michaelosky" ]
      echo -n "~"

    else
      echo -n (basename (dirname $PWD))
      echo -n '/'
      echo -n (basename $PWD)
    end

    set_color normal
    echo -n ' >> '
end

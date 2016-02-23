function fish_prompt
    set_color $fish_color_cwd

    echo

    if test $PWD = "/"
      echo -n "/"

    else if test $PWD = "/Users/michaelosky"
      echo -n "~"

    else if  test (basename (dirname $PWD)) = "/"
      echo -n "/"
      echo -n (basename $PWD)

    else if test (basename (dirname $PWD)) = "michaelosky"
      echo -n "~/"
      echo -n (basename $PWD)

    else
      echo -n (basename (dirname $PWD))
      echo -n '/'
      echo -n (basename $PWD)
    end

    set_color normal
    echo -n ' >> '
end

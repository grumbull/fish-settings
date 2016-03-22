function dirstring
  if test (count $argv) -gt 1
    echo "usage: must specify one argument"
    return 1
  end

  if test (count $argv) -eq 0
    echo "usage: must specify one argument"
    return 1
  end

  echo (dirname $argv)/(basename $argv)/
end

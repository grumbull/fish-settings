function lessca
  for i in *.less; # for every .less file in this directory
    if count (lessc $i) > /dev/null # if there is any compilation to be done
      if count $argv > /dev/null # if there is an argument specified
        for p in $argv # for every path in the arguments list
          lessc $i (dirstring $p)(basename $i .less).css; # compile to path
        end
      else # there are no arguments specified
        lessc $i (basename $i .less).css; # compile to current directory
      end
    end
  end
end

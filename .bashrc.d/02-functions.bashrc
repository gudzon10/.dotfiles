# Размер файлов и папок на заданную глубину
dus () {
    if [ $# -gt 1 ]; then
        depth=$2
    else
        depth=1
    fi

    du -bah --max-depth=$depth $1 | sort -h
    # du -bah --max-depth=$depth $1 2> >(grep -v 'Operation not permitted') | sort -h
}

shistory () {
    history|awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -rn|head -30
}

s2history () {
    history|awk '{print $2,$3}'|awk 'BEGIN {FS="|"} {print $1,$2}'|sort|uniq -c|sort -rn|head -30
}

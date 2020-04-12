PATH=${PATH}:~/bin
export PATH
source ~/.bashrc

function list () {
                ls | sort | grep - |  cut -d- -f1 | uniq |   sed 's,\(.*\),"\1",' | tr '\n' ' '
}

function empty () {
        find . -empty -exec rmdir {} \;
}
function here () {
        find . -type f -exec mv {} . \;
}

export ROOT=$(realpath $(dirname $0))

[ "$0" = "./main.sh" ] || echo try './main.sh'
[ "$0" = "./main.sh" ] || exit

#export ROOT=${PWD}
export SCRIPTS=${ROOT}/scripts

echo ROOT is ${ROOT}

for script in $(ls ${SCRIPTS} | sort | grep ^[0-9]); do
    echo '--> ' $script
    ${SCRIPTS}/${script}
done


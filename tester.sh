REF=$1
BRANCH_COMMIT=`git show-ref refs/heads/${REF} | awk '{ print $1 }'`
# if [ -n `git ls-remote --heads git@github.com:ricky-undeadcoders/grafana-private-mirror.git cloud-main | wc -l` -eq 1 ]
BRANCH_COMMIT_LS_REMOTE=`git ls-remote --heads git@github.com:ricky-undeadcoders/grafana-private-mirror.git ${REF}`

TESTER=`git show-ref refs/heads/${REF} | awk '{ print $1 }'`
echo awk: ${TESTER}

echo REf: ${REF}
echo Branch commit: ${BRANCH_COMMIT}
echo ls remote: ${BRANCH_COMMIT_LS_REMOTE}



if [ ! -z $BRANCH_COMMIT ]
then
    echo BRANCH_COMMIT EXISTS
else
    echo BRANCH_COMMIT does not exist
fi

if [ -n $BRANCH_COMMMIT_LS_REMOTE ]
then
    echo LS REMOTE exists
else
    echo LS REMOTE does not exist
fi


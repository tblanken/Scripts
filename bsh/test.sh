#!/bin/bash
BACKUPDIR=$(ls -t -1 | sed '1q')
echo $BACKUPDIR

jhome () {
    cd "${BACKUPDIR}"
}

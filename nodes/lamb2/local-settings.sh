#!/bin/bash
# ========================
# Local settings for lamb2
# ========================


if [ "$BBS_HOME" == "" ]; then
    export BBS_HOME="/home/biocbuild/BBS"
fi

export BBS_PYTHON_CMD="/usr/bin/python"

export BBS_SSH_CMD="/usr/bin/ssh"
export BBS_RSYNC_CMD="/usr/bin/rsync"

# Needed only on a node capable of running STAGE1 (STAGE1 is supported on
# Linux only)
export BBS_SVN_CMD="/usr/bin/svn"
export BBS_TAR_CMD="/bin/tar"

#!/bin/bash
# ====================
# Settings for linux1.bioconductor.org
# ====================



#set -x  # print commands and their arguments as they are executed

export BBS_DEBUG="0"

export BBS_NODE_HOSTNAME="linux1.bioconductor.org"
export BBS_USER="biocbuild"
export BBS_RSAKEY="/home/biocbuild/.BBS/id_rsa"
export BBS_WORK_TOPDIR="/home/biocbuild/bbs-3.2-data-experiment"
export BBS_R_HOME="/home/biocbuild/bbs-3.2-bioc/R"
export BBS_NB_CPU=5



# Shared settings (by all Unix nodes).

wd0=`pwd`
cd ..
. ./config.sh
cd "$wd0"



# Needed only on the node performing stage6 (must be run on the
# BBS_CENTRAL_RHOST machine).

export BBS_OUTGOING_MAP="source:linux1.bioconductor.org/buildsrc win.binary:windows1.bioconductor.org/buildbin mac.binary:perceval/buildbin"
# Needed only on the node performing stage7a (BBS-make-STATUS_DB.py) and
# stage8 (BBS-report.py)
#
# IMPORTANT: BBS-report.py will treat BBS_REPORT_PATH as a _local_ path so it
# must be run on the BBS_CENTRAL_RHOST machine.

export BBS_REPORT_PATH="$BBS_CENTRAL_RDIR/report"
export BBS_REPORT_NODES="linux1.bioconductor.org windows1.bioconductor.org:bin perceval:bin"
export BBS_REPORT_PATH="$BBS_CENTRAL_RDIR/report"
export BBS_REPORT_CSS="$BBS_HOME/$BBS_BIOC_VERSION/report.css"
export BBS_REPORT_BGIMG="$BBS_HOME/images/DEVEL3b.png"
export BBS_REPORT_JS="$BBS_HOME/$BBS_BIOC_VERSION/report.js"
export BBS_REPORT_DEST_DIR="webadmin@master.bioconductor.org:/extra/www/bioc/checkResults/$BBS_BIOC_VERSION/data-experiment-LATEST"


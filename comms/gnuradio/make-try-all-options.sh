#! /bin/sh
# Loop through all options to make individual PLISTs.
#
export P_MAKE_PATH=comms_gnuradio
#export P_PATH=/usr/ports/comms/gnuradio
export P_PATH=/home/pcc/src/FreeBSD/ports/comms/gnuradio
# This requires at least one run of 'make config'.
export P_OPTIONS=`grep _FILE_COMPLETE_OPTIONS_LIST /var/db/ports/${P_MAKE_PATH}/options | cut -f2- -d=`
#export P_OPTIONS='BLAH BLUBB'
#		make rmconfig 2>&1 | `${LOGCMD}` && \
#

for option in ${P_OPTIONS} ; do
	export LOGCMD="tee -a ${P_MAKE_PATH}.${option}.log"
	if [ -z "$LOGCMD" ] ; then export LOGCMD="cat -" ; fi
	echo $0" ===>>> Now working on OPTION "$option"."
	echo ${P_MAKE_PATH}"_SET+=	"${option} >> /etc/make.conf
	(
		cd ${P_PATH} && \
		echo $0" ===>>> Now working in "`pwd`"." && \
		make makeplist 2>&1 | ${LOGCMD} && \
		mv pkg-plist pkg-plist.${option} && \
		make showconfig 2>&1 | ${LOGCMD} && \
		make all 2>&1 | ${LOGCMD} && \
		make clean 2>&1 | ${LOGCMD} && \
		echo $0" ===>>> Work done for ${option} in "`pwd`"."
	)
done

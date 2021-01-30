unset JAVA_HOME
export LANG=C

set -x

if [ x"$JDK_TO_BUILD_WITH" == x ] ; then
JDK_TO_BUILD_WITH=/usr/lib/jvm/java-1.7.0
fi

make \
ALLOW_DOWNLOADS="true" \
ALT_JDK_IMPORT_PATH="$JDK_TO_BUILD_WITH" \
ALT_BOOTDIR="$JDK_TO_BUILD_WITH" \
ANT="/usr/bin/ant" \
STATIC_CXX="false" \
NO_DOCS="true" \
DEBUG_CLASSFILES="true" \
DEBUG_BINARIES="true" \
STRIP_POLICY=no_strip \
HOTSPOT_BUILD_JOBS=8 $*


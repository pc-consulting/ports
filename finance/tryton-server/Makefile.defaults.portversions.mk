#
# Makefile to set Tryton default versions
#
# Dependency checks and early (PORTVERSION) references require this
# Makefile be included very early hence maintained as separate file.
#
# Flag for inclusion checks.
TRYTON_MK_DEFAULTS_PORTVERSIONS_INCLUDED=	YES
#
# Minimum compatible Tryton version, usually _included_ in range
# checks (i. e. first permitted version)
TRYTON_MIN_VERSION=	7.0.0
# Minimum compatible Tryton version, usually _exluded_ in range
# checks (i.e. first non-permitted version)
TRYTON_MAX_VERSION=	7.1.0
# Default Tryton version. MUST be in the above range. Usually set to
# the version which most of the subports have to reduce the number of
# Makefiles which need to be touched bt maintainers.
TRYTON_DEFAULT_VERSION=	7.0.0

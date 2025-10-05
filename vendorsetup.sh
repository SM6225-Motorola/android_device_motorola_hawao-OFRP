# Basic variables list

export LC_ALL="C"
export ALLOW_MISSING_DEPENDENCIES=true

if [ "$BUILD_OFOX" = "true" ]; then
    # If you building OrangeFox, then do "export BUILD_OFOX=true"
    # See orangefox_build_vars.txt in fox_12.1/vendor/recovery/ for full list of OrangeFox variables

    echo -e "[✨] Starting to add OrangeFox-hawao variables..."

    # About
    export OF_MAINTAINER=ZetLink
    export FOX_MAINTAINER_PATCH_VERSION=$(date +%y%m%d)

    # A/B
    export FOX_VIRTUAL_AB_DEVICE=1

    # Binaries
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_GREP_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export FOX_USE_BUSYBOX_BINARY=1
    export FOX_ENABLE_APP_MANAGER=1
    export FOX_DELETE_AROMAFM=1

    # Bash
    export FOX_USE_BASH_SHELL=1

    # Dynamic full size
    export OF_DYNAMIC_FULL_SIZE=7583301632

    # UI display settings
    export OF_SCREEN_H=2400
    export OF_STATUS_H=100
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    export OF_HIDE_NOTCH=1
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0

    # Quick backup list
    export OF_QUICK_BACKUP_LIST="/boot;/data;"

    # Security
    export OF_ADVANCED_SECURITY=1

    echo -e "[✔] If you see this message, all OrangeFox variables have been added successfully!"
else
    echo -e "[✘] BUILD_OFOX is not set to true. Skipping OrangeFox variables."
fi
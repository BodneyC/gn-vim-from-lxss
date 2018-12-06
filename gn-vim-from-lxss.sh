funcition gvim() {
    # Location of [gn]vim.exe in Windows
    GVIM_PROG="/mnt/d/Users/BenJC/Documents/4_Software/gvim/Vim/vim81/gvim.exe"

    # Location of /root in Windows
    LXSS_ROOT="C:/Users/BenJC/AppData/Local/lxss"

    args=()
    for arg in "$@"; do
	arg=$(realpath $arg)

	if [[ $arg =~ ^/mnt/ ]]; then
	    arg=$(echo $arg | sed 's,^/mnt/\(.\),\1:,')
	else
	    arg=$LXSS_ROOT$arg
	fi

	arg=$(echo $arg | sed 's,/,\\,g')

	args+=("$arg")
    done

    $GVIM_PROG $args
}


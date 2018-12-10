function UNIX_2_WIN_FP() {
    LXSS_ROOT="C:/Users/BenJC/AppData/Local/lxss"

    args=()
    for arg in "$@"; do
		arg=$(realpath $arg)

		if [[ $arg =~ ^/mnt/ ]]; then
			arg=$(echo $arg | sed 's#^/mnt/\(.\)#\1:#')
		else
			arg=$LXSS_ROOT$arg
		fi

		args+=("$arg")
    done

    echo $args
}

function nvim() {
    NVIM_PROG="nvim-qt.exe"
    $NVIM_PROG $(UNIX_2_WIN_FP $@) & disown
}

function gvim() {
    GVIM_PROG="/mnt/d/Users/BenJC/Documents/4_Software/gvim/Vim/vim81/gvim.exe"
    $GVIM_PROG $(UNIX_2_WIN_FP $@) & disown
}


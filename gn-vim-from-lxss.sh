function UNIX_2_WIN_FP() {
    PROG=$1
    shift
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
    $PROG $args &
}

function nvim() {
    NVIM_PROG="/mnt/d/Users/BenJC/Documents/4_Software/Neovim/bin/nvim-qt.exe"
    UNIX_2_WIN_FP $NVIM_PROG $@
}

function gvim() {
    GVIM_PROG="/mnt/d/Users/BenJC/Documents/4_Software/gvim/Vim/vim81/gvim.exe"
    UNIX_2_WIN_FP $GVIM_PROG $@
}

return {
	'junegunn/fzf',
	'junegunn/fzf.vim',
    config = function()
	-- Configure fzf actions
	vim.g.fzf_action = {
		['ctrl-t'] = 'tab split',
		['ctrl-x'] = 'split',
		['ctrl-s'] = 'vsplit',
		['ctrl-o'] = 'v:lua.fzf_copy_results',
	}

	vim.cmd([[
	let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}'
	\ --bind ctrl-y:preview-up,ctrl-e:preview-down,
	\ctrl-b:preview-page-up,ctrl-f:preview-page-down,
	\ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
	\shift-up:preview-top,shift-down:preview-bottom,
	\alt-up:half-page-up,alt-down:half-page-down"
	]])
    end,
}

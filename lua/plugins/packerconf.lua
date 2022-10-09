local status_ok, packer = pcall(require, 'packer')
if not status_ok then return end

packer.setup({
	git = {
		cmd = 'git',
		subcommands = {
			update = 'pull --ff-only --progress',
			install = 'clone --depth %i --no-single-branch --progress',
		}
	}
})

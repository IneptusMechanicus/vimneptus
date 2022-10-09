local status_ok, lint = pcall(require, 'lint')
if not status_ok then return end

lint.linters_by_ft = {
	bash = {'shellcheck'},
	cpp = {'cpplint'},
	css = {'stylelint'},
	scss = {'stylelint'},
	javascript = {'jshint'},
	lua = {'luacheck'},
	markdown = {'vale'},
	php = {'php'},
	python = {'pylint'},
}

local wk = require("which-key")
local telescope = require("telescope")

-- Loading telescope extensions

for _, extension in ipairs {
  "projects"
} do
  telescope.load_extension(extension)
end

-- User Functions

-- Get filename, than change it extension, than return it.
function cExtension(extension)
    local file_name = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":e")
    return vim.fn.fnamemodify(file_name, ":e") .. extension
end

-- Git Commit Shortcut
function commit_shortcut()
	local message = vim.fn.input('Enter commit message: ')
	if (message == '') then
        return
	end
	vim.cmd(":TermExec cmd=\'git commit -m \"" .. message .. "\"\'")
end

-- Send Command to terminal
function term_command()
	local message = vim.fn.input('Enter command: ')
	if (message == '') then
		message = '^C'
	end
	vim.cmd(":TermExec cmd=\'" .. message .. "\'")
end

-- ToggleTerm
local Terminal  = require('toggleterm.terminal').Terminal


wk.register({
    ["<Space>"] = {
        g = {
            name = "+git",
            o = { ":DiffviewOpen<CR>", "Open a diff view window" },
            q = { ":DiffviewClose<CR>", "Close the diff view window" },
            a = { ":TermExec cmd=\"git add %\"<CR>", "Add the current file to the staging area" },
            c = { ":lua commit_shortcut()<CR>", "Commit the current file" },
            g = { ":TermExec cmd=\"git push -u origin main\"<CR>", "Push the current file to the remote repository" },
        },
        s = {
            name = "+shell",
            o = { ":TermExec cmd=\"clear\"<CR>", "Clear the terminal" },
            q = { ":TermExec cmd=\"exit\"<CR>", "Exit the terminal" },
            l = { ":TermExec cmd=\"!!\"<CR>", "Run the last command" },
            t = { ":ToggleTerm size=75<CR>", "Toggle the terminal size" },
            s = { ":TermExec cmd=\"xclip -sel c -o | pygmentize -f html | xclip -sel c\"<CR>", "Copy the current line to the clipboard" },
            f = { ":TermExec cmd=\"home-manager switch\"<CR>", "Switch to the next available workspace" },
            p = { ":cd ~/.config <bar> :pwd <CR>", "Print the current directory" },
            j = { ":TermExec cmd=\"npm run dev\"<CR>", "Run the development server" },
            r = { ":TermExec cmd=\"npm start\"<CR>", "Run the production server" },
            g = { ":TermExec cmd=\"git push -u origin main\"<CR>", "Push the current file to the remote repository" },
            k = { ":w % <bar> :TermExec cmd=\"./%\"<CR>", "Run the current file" },
        },
        p = {
            name = "+dotfiles",
            p = { ":cd ~/.config <bar> :pwd <CR>", "Go to the ~/.config dir" },
            f = { ":w % <bar> :TermExec cmd=\"home-manager switch\"<CR>", "Switch to the newest home-manager derivation" },
        },
        f = {
            name = "+files",
            f = { ":Telescope find_files<CR>", "Find files" },
            n = { ":Telescope live_grep<CR>", "Live grep" },
            o = {  ":Telescole old_files<CR>", "Old files" },
            e = {  ":enew<CR>", "New file" },
            t = {  ":tabnew<CR>", "New tab" },
        },
        t = {
            name = "*tabs",
            n = { ":tabnew<CR>", "New tab" },
            h = { ":tabnext<CR>", "Next tab" },
            l = { ":tabprevious<CR>", "Previous tab" },
            q = { ":tabclose<CR>", "Close tab" },
            w = { ":tabmove %<CR>", "Move tab to %" },
        },
        q = {":q<CR>", "Quit the current window"},
        n = {":Telescope projects<CR>", "Open the project manager"},
        w = {":w %<CR>", "Save the current file"},
        r = {":lua append_executable()<CR>", "Append the line that makes a file executable to the file"},
        o = {":NvimTreeToggle <CR>", "Toggle neovim tree."},
        a = {
            name = "*telescope",
            a = { ":Telescope find_files<CR>", "Find files" },
            n = { ":Telescope live_grep<CR>", "Live grep" },
            o = {  ":Telescole old_files<CR>", "Old files" },
            c = {
                name = "*commands",
                c = { ":Telescope commands<CR>", "Commands" },
                o = { ":Telescope commands_history<CR>", "Old commands used" },
            },
            s = { ":Telescope colorscheme<CR>", "Color schemes" },
            m = { ":Telescope marks<CR>", "Marks" },
            t = { ":Telescope tresitter<CR>", "Tags" },
            h = { ":Telescope spellsuggest<CR>", "Spell suggestions" },
            f = { ":Telescope filetypes<CR>", "Filetypes" },
            b = { ":Telescope buffers<CR>", "Buffers" },
        },
        l = {
            name = "*lsp",
            r = { ":Telescope lsp_references<CR>", "References" },
            i = { ":Telescope lsp_document_symbols<CR>", "Document symbols" },
            c = {
                name = "*code_actions",
                c = { ":Telescope lsp_code_actions<CR>", "Code actions" },
                r = { ":Telescope lsp_range_code_actions<CR>", "Range code actions" },
            },
            w = {
                name = "*workspace_symbols",
                w = { ":Telescope lsp_workspace_symbols<CR>", "Workspace symbols" },
                s = { ":Telescope lsp_dynamic_workspace_symbols<CR>", "Workspace symbols search" },
            },

        },
    },
    ["<C-m>"] = {":CommentToggle <CR>", "Toggle current line comments"},
    ["<C-s>"] = {":'<,>SnipRun <CR>", "Run a snippet"},
    ["<C-f>"] = {":Telescope find_files <CR>", "Find files"},
    ["<C-n>"] = {":Telescope live_grep <CR>", "Live grep"},
    ["<C-l>"] = {":noh <CR>", "Noh"},
    ["<C-t>"] = {":ToggleTerm size=75 direction=vertical <CR>", "Toggle the terminal size"},
    ["<CR>"] = {":CommentToggle<CR>", "Toggle current line comment"}
})

wk.setup{
  plugins = {
    spelling = {
      enabled = true,
    },
  },
}

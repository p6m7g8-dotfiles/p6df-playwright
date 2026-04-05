# shellcheck shell=bash
######################################################################
p6df::modules::playwright::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
    lackeyjb/playwright-skill
  )
}

######################################################################
p6df::modules::playwright::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_DIR/lackeyjb/playwright-skill/skills/playwright-skill"                                        "$HOME/.claude/skills/playwright"

  p6_return_void
}

######################################################################
p6df::modules::playwright::langs() {

  p6_js_npm_global_install "@playwright/test"

  p6_return_void
}

######################################################################
p6df::modules::playwright::mcp() {

  p6_js_npm_global_install "@playwright/mcp"

  p6df::modules::anthropic::mcp::server::add "playwright" "npx" "-y" "@playwright/mcp"
  p6df::modules::openai::mcp::server::add "playwright" "npx" "-y" "@playwright/mcp"

  p6_return_void
}
######################################################################
p6df::modules::playwright::vscodes() {

  p6df::modules::vscode::extension::install ms-playwright.playwright

  p6_return_void
}

######################################################################
p6df::modules::playwright::vscodes::config() {

  cat <<'EOF'
  "playwright.env": {
    "DEBUG": "pw:api"
  }
EOF

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::playwright::deps()
#
#>
######################################################################
#<
#
# Function: p6df::modules::playwright::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_DIR
#>
######################################################################
#<
#
# Function: p6df::modules::playwright::vscodes()
#
#>
######################################################################
#<
#
# Function: p6df::modules::playwright::vscodes::config()
#
#>
######################################################################
#<
#
# Function: p6df::modules::playwright::langs()
#
#>
######################################################################
#<
#
# Function: p6df::modules::playwright::mcp()
#
#>

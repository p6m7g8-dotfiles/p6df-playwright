# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::playwright::deps()
#
#>
######################################################################
p6df::modules::playwright::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
  )
}

######################################################################
#<
#
# Function: p6df::modules::playwright::vscodes()
#
#>
######################################################################
p6df::modules::playwright::vscodes() {

  p6df::modules::vscode::extension::install ms-playwright.playwright

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::playwright::vscodes::config()
#
#>
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
# Function: p6df::modules::playwright::langs()
#
#>
######################################################################
p6df::modules::playwright::langs() {

  p6_js_npm_global_install "@playwright/test"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::playwright::mcp()
#
#>
######################################################################
p6df::modules::playwright::mcp() {

  p6_js_npm_global_install "@playwright/mcp"

  p6_return_void
}

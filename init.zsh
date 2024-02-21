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
    p6m7g8-dotfiles/p6common
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

  code --install-extension ms-playwright.playwright

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

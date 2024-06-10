# Oh My Posh

This is a terminal theme that works on all platforms https://ohmyposh.dev/docs/installation/customize

Currently this theme is brought in remotely from the this github repo but to test remotely you can use

zsh: `eval "$(oh-my-posh init zsh --config ~/dotfiles/oh-my-posh/oh-my-posh-config.omp.json)"`
powershell: `oh-my-posh init pwsh --config '~/dotfiles/oh-my-posh/oh-my-posh-config.omp.json' | Invoke-Expression`

## Places Set 

- `.zshrc` `eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/scottyskid/dotfiles/main/oh-my-posh/oh-my-posh-config.omp.json)"`
- Powershell `$profiles` `oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/scottyskid/dotfiles/main/oh-my-posh/oh-my-posh-config.omp.json' | Invoke-Expression`
- vs code `terminal.integrated.profile.windows` `oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/scottyskid/dotfiles/main/oh-my-posh/oh-my-posh-config.omp.json' | Invoke-Expression`
    - this is requried because of this bug https://stackoverflow.com/questions/78468557/unexpected-ansi-escape-codes-on-vs-code-integrated-terminal
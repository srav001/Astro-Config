# AstroNvim User Configuration Example

My configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

### Prerequisites :

#### LazyGit
```sh
brew install jesseduffield/lazygit/lazygit
```

#### RipGrep
```sh
brew install ripgrep
```

### Clone AstroNvim

```shell
git clone https://github.com/srav001/AstroNvim.git ~/.config/nvim
```

#### Sync with AstroNvim
```shell
git remote add upstream https://github.com/AstroNvim/AstroNvim.git && git fetch upstream
```

### Clone the Config repository

```shell
git clone https://github.com/srav001/Astro-Config.git ~/.config/nvim/lua/user
```

#### Or the short hand (using SSH)
```
cd ~ && \
git clone git@github.com:srav001/AstroNvim.git ~/.config/nvim && \
git clone git@github.com:srav001/Astro-Config.git ~/.config/nvim/lua/user && \
cd ~/.config/nvim && git remote add upstream https://github.com/AstroNvim/AstroNvim.git && git fetch upstream && \
cd ~/.config/nvim/lua/user && \
nvim
```

## To remove nvim (Mac OS & Linux)

```sh
rm -rf ~/.config/nvim && rm -rf mv ~/.local/share/nvim && rm -rf mv ~/.local/state/nvim && rm -rf mv ~/.cache/nvim
```

# My Mac Config

# Table of contents

- [My Mac Config](#my-mac-config)

- [Table of contents](#table-of-contents)

- [Catalog introduction](#catalog-introduction)
  
  - [Antigen](#antigen)
  - [Config](#config)
  - [Jenv](#jenv)
  - [SSH](#SSH)
  - [Vim](#vim)

- [Usage](#usage)
  
  - [Mac Config Load](#mac-config-load)
  - [My Config Load](#my-config-load)

# Catalog introduction
[(Back to top)](#table-of-contents)

## Antigen

[(Back to top)](#table-of-contents)

用来管理 zsh插件的

参考： [The plugin manager for zsh.](https://github.com/zsh-users/antigen)

## Config

[(Back to top)](#table-of-contents)

config 这个目录可有可无，不过也可将配置文件集中写在 config 目录中。

比如可以将 git 配置放在 config 目录中。参考：[Git - Git Configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)

## Jenv

[(Back to top)](#table-of-contents)

是用来管理你 Mac 上各个版本的 Java环境的。  
具体用法：

```shell
# 安装 
brew install jenv

brew install tldr

# 查看帮助文档
tldr jenv or jenv --help 
```

## SSH

[(Back to top)](#table-of-contents)

安全免密访问用的，比如平时在 github 拉取代码，就可以使用 ssh。

```shell
# 查看帮助文档
man ssh
# 或者
tldr ssh
# 配置 ssh (生成 使用)
ssh-keygen -t rsa -b 4096 -C 'your-email' -f ~/.ssh/your-key-name

# 场景：既想在 github 使用 ssh，又想在 gitee 使用 ssh（想要配置多个 参考 .ssh/config 文件）
ssh -T github.com
# 测试是否配置成功 如下则表示成功了
# Hi xxx! You've successfully authenticated, but GitHub does not provide shell access.
ssh -T gitee.com

# 场景：github 中有多个账号 （想要配置多个 参考 .ssh/config 文件）
ssh -T github.com
ssh -T github2
# 分别返回不同的用户说明
```

## Vim

[(Back to top)](#table-of-contents)

由于我平时编码 vim 用的也不是特别多，所以也没有太多的定制化的东西

就直接使用了如下github 项目中 The Basic ~/.vimrc 配置 [vimrc](https://github.com/amix/vimrc)

打开差不多是这个样子：![vim-basic-show.png](.vim/vim-basic-show.png)

当然 vim 也有自己的插件管理工具，比如 [Vundle](https://github.com/VundleVim/Vundle.vim) 、[vim-plug](https://github.com/junegunn/vim-plug) 等 。

注：像这种 zsh 和 vim 的插件管理工具和插件推荐使用 brew 结合国内镜像源直接下载。

<!-- *You might have noticed the **Back to top** button(if not, please notice, it's right there!). This is a good idea because it makes your README **easy to navigate.*** 
The first one should be how to install(how to generally use your project or set-up for editing in their machine).
This should give the users a concrete idea with instructions on how they can use your project repo with all the steps.
Following this steps, **they should be able to run this in their device.**
A method I use is after completing the README, I go through the instructions from scratch and check if it is working. -->

# Usage

[(Back to top)](#table-of-contents)

## Mac Config Load

[(Back to top)](#table-of-contents)

Mac 环境配置加载先后顺序：

1. /etc/profile 系统级别（系统默认会加载）
2. /etc/paths 系统级别（系统默认会加载）
3. ~/.bash_profile 用户级
4. ~/.bash_login 用户级
5. ~/.profile 用户级
6. ~/.bashrc or ~/.zshrc 用户级

## My Config Load

[(Back to top)](#table-of-contents)

` ~/.bash_profile ` 开始, 由于 `~/.bash_login、~/.profile` 都没配置所用无需加载

```shell
# 查看当前使用的 shell 环境：显示 /bin/zsh 说明用的 zsh
echo $SHELL
# 查看有哪些 shell 环境: cat /etc/shells
# 切换 shell 环境: chsh -s /bin/zsh
```

核心配置 `~/.zshrc` 加载：

1. 加载 `antigen.zsh`
2. 加载 `.zshrc.pre-oh-my-zsh`
3. 加载 (fzf 命令行搜索)、(zsh-syntax-highlighting 语法高亮)、(zsh-autosuggestions 命令行提示) 等插件
4. 加载 `~/.aliasrc` 定义的快捷操作的别名
5. 加载 `~/.jenvrc` jenv配置

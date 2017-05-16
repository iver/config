# My configuration files

***

This repository contains my own configuration files.

There are a lot of dotfiles, a lot of castles, a little mess… Why don’t we create a one single castle with all of our dotfiles? For some people it can be a reasonable option, but, in general, having them organized has some advantages:

* You can keep different configurations for the same application. A ssh at home and another at work.

* You can keep public the dotfiles you would like to share with the community (vim) and private the ones you don’t want to (mutt).

### INSTALL

First at all, clone it!

```
git clone https://github.com/ivan-iver/config.git ~/Config
```

Then, you can run install script.

```
$> chmod +x install.sh
$> ./install.sh
```

But if you prefer uninstall, then.

```
$> chmod +x uninstall.sh
$> ./uninstall.sh
```

Your dot files configuration is ready. So ... enjoy it!

## Troubleshooting

***

#### Open GoLang files.

Message: ``Exuberant ctags not found ``

Fix:

1.  ``` sudo apt-get install exuberant-ctags ```
2.  ``` vim -c ':GoInstallBinaries ```

## Copyright and license

***

Copyright (c) 2014-2015 Iván Jaimes. See [LICENSE](LICENSE) for details.



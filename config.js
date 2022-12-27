module.exports = {
  brew: [
    // http://conqueringthecommandline.com/book/ack_ag
    "ack",
    "ag",
    // https://github.com/wting/autojump
    "autojump",
    "babashka",
    // alternative to `cat`: https://github.com/sharkdp/bat
    "bat",
    // Install GNU core utilities (those that come with macOS are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    "coreutils",
    "dos2unix",
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    "findutils",
    // 'fortune',
    "fzf",
    "readline", // ensure gawk gets good readline
    "gawk",
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    "gifsicle",
    // "gnupg",
    "git-delta",
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    "gnu-sed --with-default-names",
    // upgrade grep so we can get things like inverted match (-v)
    "grep --with-default-names",
    // better, more recent grep
    "homebrew/dupes/grep",
    // https://github.com/jkbrzt/httpie
    "httpie",
    // jq is a sort of JSON grep
    "jq",
    "lsd",
    // Mac App Store CLI: https://github.com/mas-cli/mas
    "mas",
    // Install some other useful utilities like `sponge`
    "moreutils",
    "nmap",
    "nvm",
    // "openconnect",
    "reattach-to-user-namespace",
    // better/more recent version of screen
    "homebrew/dupes/screen",
    "ripgrep",
    "tmux",
    "todo-txt",
    "tree",
    "ttyrec",
    // better, more recent vim
    "vim --with-client-server --with-override-system-vi",
    "watch",
    // Install wget with IRI support
    "wget --enable-iri",
    "git-extras",
    "git-delta",
    "wakatime-cli",

    "ffmpeg",
    // Languages
    "go",
    "php",
    "php@7.4",
    "clojure",
    "clojure-lsp-native",
    "babashka",
    "clj-kondo",
    "colima",
    "lima"
  ],
  cask: [
    //'adium',
    //'amazon-cloud-drive',
    //'atom',
    //'box-sync',
    //'comicbooklover',
    //'diffmerge',
    "docker", // docker for mac
    //'dropbox',
    //'evernote',
    // "flux",
    // "gpg-suite",
    //'ireadfast',
    'iterm2',
    // 'little-snitch',
    // 'macbreakz',
    // 'micro-snitch',
    // 'signal',
    //'macvim',
    "sizeup",
    //'sketchup',
    'slack',
    // 'the-unarchiver',
    //'torbrowser',
    //'transmission',
    "visual-studio-code",
    "vlc",
    "warp",
    "raycast"
    // "xquartz"
  ],
  sdkman: [
    "java 8.0.352-tem",
    "java 11.0.14-tem",
    "java 17.0.5-tem"
  ],
  npm: [
    "antic",
    "buzzphrase",
    "eslint",
    "instant-markdown-d",
    // 'generator-dockerize',
    // 'gulp',
    "grunt",
    "npm-check-updates",
    "prettyjson",
    "trash",
    "vtop",
    "yo",
    "yarn",
    "keycastr",
    "robo-3t",
  ],
  mas: [
    //com.apple.dt.Xcode (10.2.1)
    '497799835',
    '1333542190', //  1Password 7 - Password Manager (7.9.6)
    '1351639930', // gifski
    '1176895641', // spark
    '412448059', // forklift
    '975937182', // fantastical
    '1519867270', //  Refined GitHub (22.11.21)
    '1480933944', // vimari
    '1482920575', // duckduck go
    //com.if.Amphetamine (4.1.6)
    //'937984704',
    //net.shinyfrog.bear (1.6.15)
    //'1091189122',
    //com.monosnap.monosnap (3.5.8)
    //'540348655',
    //com.app77.pwsafemac (4.17)
    //'520993579',
  ],
};

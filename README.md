# ABOUT

This README contains information I like to have when configuring a Windows system. This repository is currently empty otherwise, but could eventually contains scripts/portable programs I want to have access to across machines.

# SOFTWARE

I have used `chocolately` in the past, but I don't feel like I can fully rely on it so I prefer to download Windows programs the normal way.

List of software I like to install on a Windows computer
- Communication
  - Telegram
  - Discord
  - Twobird (Email)
  - MS Teams / Zoom if needed
- Entertainment
  - Disney+ (through MS Edge)
  - Peacock (through MS Edge)
  - Netflix
  - Hulu
  - Spotify
  - Steam
  - Minecraft
- Development
  - Visual Studio Code
  - SourceTree
  - Windows Terminal
  - WSL (Ubuntu)
  - Arduino IDE
  - PuTTY
- Productivity
  - Microsoft Office
  - Adobe Acrobat
- Creating
  - Cura
  - Fusion 360
  - Adobe Photoshop
- Other
  - Notepad++
  - Obsidian
  - Notion
  - AOMEI Backupper
  - WinSCP / WinSSHFS

# SSH AUTHENTICATION

In an PowerShell prompt with Administrator privileges run the following commands.

```
> Set-Service -Name ssh-agent -StartupType Automatic
> ssh-add
> git config --global core.sshCommand C:/Windows/System32/OpenSSH/ssh.exe
```

Now ssh-agent will always be running and have access to my ssh keys. Call `ssh-add` again as new keys are added.

# WINDOWS SUBSYSTEM FOR LINUX

My preferred distribution is the latest version of `Ubuntu`.

## Don't add Windows PATH to WSL PATH

This makes the `$PATH` variable very long and leads to some weird autocompletions.

```
% vim /etc/wsl.conf
```

Add the following:

```
[interop]
    appendWindowsPath = false
```

## Additional Configuration

- Create aliases for Windows programs I want to access from WSL.  
- Create aliases for changing directories to common Windows directories.
- Create environment variable for Windows user home directory.

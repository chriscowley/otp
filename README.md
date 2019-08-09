# A shell script to generate OTP codes

This is a fairly thin wrapper around [oathtool](http://www.nongnu.org/oath-toolkit/) and [gpg](https://gnupg.org/). It stores the secret keys in an encrypted file and you can then get your OTP passcodes from a shell.

# Install

TL;DR: 

```
sudo make install
```

Alternatively:

Put `otp` somewhere in your $PATH, and add an line to source `otp-completion.bash` in your `.bashrc`.

# Usage

Add a new key:

```
otp add <name> <secret>
```

Get a OTP:

```
otp get <name>
```

List available keys:

```
otp list
```

Delete a key:

```
otp rm <name>
```

# TODO

- Improve bash completion

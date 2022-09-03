# Bypass Activation Lock with Jailbreaking

From what I have gathered, I have not been successful, 
with this method with bypassing the notorious Activation Lock on iDevices. I am hoping though, that maybe by documenting this method it may lead me in the right direction to solve this issue.

The following method is suppose to bypass the activation lock by patching the "setup.app" on a Apple device.

1. Install checkRa1n
2. Install libusbmuxd
3. Boot your device into DFU mode
4. Use iProxy service from usbmuxd

## Installing checkRa1n

Install homebrew if using macOS, by running the following command:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Installing checkRa1n can be done by getting it from their [website](https://checkra.in).

## Installing usbmuxd

Install usbmuxd by running the following command on macOS

```bash
brew install libusbmuxd
```

Use the **iproxy** service from libusbmuxd, and establish a tunnel between the device and the jailbroken device.

```bash
iproxy 2222 44
```

```bash
ssh root@localhost -p 2222
```

The default password is usually 'alpine'

Mount the file system, to modify the setup.app file, rename the file, and then remove it completely using the following:

```bash
mount -o rw,union,update /
mv /Applications/Setup.app /Applications/Setup.bak
rm -rf /Applications/Setup.app
```

Then clear the cache and kill the **Springboard** process, used to display the home screen in order to reset it.

```bash
uicache -all
killall backboardd
```

The only drawback to this method is that it might break the intended device.

[source](https://www.wootechy.com/activation-bypass/how-to-bypass-activation-lock-with-jailbreak/)
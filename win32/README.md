# win32

## About

Aims to loosley replicate a win32 (from Windows 3.x to Windows XP, DirectX 1.0-9.0c), capable of playing a range of classic Windows 32bit titles.

Underlying system uses:
* box86: dynarec based i386 to armhf/ARM32 translator/emulator with excellent performance
  * https://github.com/ptitSeb/box86
* WINE: "WINE Is Not an Emulator" - translation system from win32 to POSIX/Linux and DirectX to OpenGL/Vulkan
  * https://www.winehq.org

TBA:
* Front end (Maybe Lutris, maybe WINE's explorer.exe)
* WINE prefixes management (maybe custom, maybe Bottles)
* Pretty splash screens, themes, wallpapers, etc

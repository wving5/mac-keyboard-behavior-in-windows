# MacOS Keyboard Behavior in Windows

![logo.png](assets/logo.png)

<br><br>
This [AutoHotKey script](mac.ahk) seeks to deliver all the **superior** MacOS keyboard behavior you love in Windows!

## Prerequisites
1. A keyboard designed for Windows; **this solution is not intented to work with a Mac keyboard layout**
<blockquote>
  <details>
    <summary><i>[image] a windows keyboard</i></summary>
    <img src="https://github.com/wving5/mac-keyboard-behavior-in-windows/assets/12070838/271bb72d-d778-49ea-aaa6-ee4afabb8272" />
  </details>
</blockquote>

2. [AutoHotKey](https://www.autohotkey.com/) installed on your PC

> #### **NOTE**
> This project only provides scripts for AHK 2.0+, similar AHK 1.1 script could be found [here](https://github.com/stevenilsen123/mac-keyboard-behavior-in-windows/blob/main/mac1.1.ahk) or [here](https://gist.github.com/ascendbruce/677c3169259c975259045f905cd889d6#file-mac-ahk)

3. Modify <kbd>LWin</kbd>-><kbd>LAlt</kbd> and <kbd>LAlt</kbd>-><kbd>RCtrl</kbd> keys using [Microsoft PowerToys](https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD?hl=en-us&gl=us)

<blockquote>
  <details>
    <summary><i>[image] remap keys with PowerToys </i></summary>
    <img src="https://github.com/wving5/mac-keyboard-behavior-in-windows/assets/12070838/384b548c-f61a-4b8c-ad4d-5a141239eae1" />
  </details>
</blockquote>

<blockquote>
  <h4><b>NOTE</b></h4>
  <p>If your machine is restricted by an admin and you are unable to install PowerToys from the Microsoft Store link above, you can try installing the lastest per-user scope version of PowerToys from https://github.com/microsoft/PowerToys/releases</p>
  <details>
    <summary><i>[image] a windows keyboard</i></summary>
    <img src="assets/PowerToys_User_Download.png" />
  </details>
</blockquote>

---

## Usage
1. [Prerequisites](#prerequisites) first!
2. AutoHotkey setup
   - Create a new `mac.ahk` file in the location of your choice. For example `%userprofile%\Desktop\mac.ahk`.
   - Paste the contents of [mac.ahk](mac.ahk) into the file you just created and save.
   - Run the file by double-clicking it in Windows Explorer. _Optionally_, learn how to use the Windows Startup folder or Task Scheduler to automate.
3. PowerToys Keyboard Manager setup
   > Due to the limitation of current AHK, some shortcuts like `CTRL+SHIFT+TAB` using modifier keys as "[prefix Keys](https://www.autohotkey.com/docs/v2/Hotkeys.htm#combo)" is hard to mimic. AHK's `&` `#HotIf` `ShiftAltTab` wont fit in these cases, i found PowerToys does better job.
   - Sadly, PowerToys doesn't provide an intuitive config export/import feature. But AFAIK the applied settings json could be located at `%LOCALAPPDATA%\Microsoft\PowerToys\Keyboard Manager\default.json` which was referred by `settings.json` in the same folder.
   - So just replace the `default.json` with [default.json](https://github.com/wving5/mac-keyboard-behavior-in-windows/blob/main/PowerToys/Keyboard%20Manager/default.json) would be good, or you can do it manually with UI interface.
   

---
## Available MacOS shortcuts
This tool seeks to implement ~~all~~ common MacOS keyboard shortcuts refered [here](https://support.apple.com/en-us/HT201236). Items checked in the list below are available via shortcuts remapping to maintain a native MacOS experience, while unchecked items mean at least we have some Windows alternatives. And items with line stroke through mean they are absolutely necessary but there is no solution AFAIK. 

> ### **IMPORTANT NOTE**
> Keyboard shortcuts listed below are described as is, while on Windows the working keymap should be:
> - `Command` = `Alt` key
> - `Option` = `Windows` key
> - `Control` = `Ctrl` key

### Cut, copy, paste, and other common shortcuts
- [x] Command-X: Cut the selected item and copy it to the Clipboard.
- [x] Command-C: Copy the selected item to the Clipboard.
- [x] Command-V: Paste the contents of the Clipboard into the current document or app.
- [x] Command-[Shift]-Z: Undo the previous command. You can then press Shift-Command-Z to Redo, reversing the undo command. In some apps, you can undo and redo multiple commands.
- [x] Command-A: Select All items.
- [x] Command-F: Find items in a document or open a Find window.
- [x] Command-O: Open the selected item, or open a dialog to select a file to open.
- [x] Command-P: Print the current document.
- [x] Command-S: Save the current document.
- [x] Command-T: Open a new tab.
- [x] Command-W: Close the front window.
- [ ] Option-Command-Esc: Force quit an app. Windows Alternative: `Ctrl+Shift+Esc` launch Task Manager
- [ ] Command–Space bar: Spotlight. _Windows Alternative_: PowerToys Run. See [Prerequisites](#prerequisites) section.
- [ ] Control–Command–Space bar: Show the Character Viewer, from which you can choose emoji and other symbols. _Windows Alternative_: `Win+period (.) or semicolon (;)`
- [ ] Control-Command-F: Use the app in full screen, if supported by the app. _Windows Alternative_: `F11`
- [ ] Space bar: Use Quick Look to preview the selected item. _Windows Alternative_: [QuickLook](https://apps.microsoft.com/store/detail/quicklook/9NV4BS3L1H4S) [PowerToys PreviewPane](https://learn.microsoft.com/en-us/windows/powertoys/file-explorer#preview-pane-previewers)
- [x] Command-[Shift]-Tab: Switch to the next most recently used app among your open apps. 
- [ ] ~~Command–Grave accent (`): Switch between the windows of the app you're using.~~
- [ ] Shift-Command-5: Screenshot. _Windows Alternative_: [`Win+Shift+S`](https://support.microsoft.com/en-us/windows/open-snipping-tool-and-take-a-screenshot-a35ac9ff-4a58-24c9-3253-f12bac9f9d44) [Snipaste](https://www.microsoft.com/store/apps/9P1WXPKB68KX) [Monosnap](https://monosnap.com/) for screenshots.
- [x] Shift-Command-N: Create a new folder in the Finder.
- [ ] ~~Command-Comma (,): Open preferences for the front app.~~
- [x] Command-Q: Quit current app.
- [ ] Control-Space: Switch input language and keyboard layout. _Windows Alternative_: `Win+Space`

### [International Characters](https://support.microsoft.com/en-us/topic/keyboard-shortcuts-for-international-characters-108fa0c1-fb8e-4aae-9db1-d60407d13c35)

### Sleep, log out, and shut down shortcuts
- [ ] Control-Command-Q: Immediately lock your screen. _Windows Alternative_: `Win + L`

### Finder and system shortcuts
- [ ] Command-F: Start a Spotlight search in the Finder window.  _Windows Alternative_: `Ctrl + F`
- [ ] Command-I: Show the Get Info window for a selected file. _Windows Alternative_: `Alt + Enter`
- [ ] Shift-Command-C: Open the Computer window.  _Windows Alternative_: `Win + E`
- [ ] Shift-Command-G: Open a Go to Folder window.  _Windows Alternative_: `Ctrl + L` in File Explorer
- [x] Shift-Command-N: Create a new folder.
- [ ] ~~Command-K: Open the Connect to Server window.~~
- [x] Command-N: Open a new Finder window.
- [ ] Option-Command-V: Move the files in the Clipboard from their original location to the current location.  _Windows Alternative_: `Ctrl + X` then `Ctrl + v`
- [ ] Command-1/2/3/4: View the items in the Finder window as icons/list/columns/gallery.  _Windows Alternative_: `Ctrl + Shift + 1/2/3/4/5/6...`
- [ ] Command–Left Bracket ([): Go to the previous folder.  _Windows Alternative_: `Backspace` or `Alt + Left arrow`
- [ ] Command–Right Bracket (]): Go to the next folder.  _Windows Alternative_: `Alt + Right arrow`
- [ ] Command–Up Arrow: Open the folder that contains the current folder.  _Windows Alternative_: `Alt + Up arrow`
- [ ] Command-Delete: Move the selected item to the Trash.  _Windows Alternative_: `Ctrl + D (or Delete)`
- [ ] Command–Mission Control: Show the desktop. _Windows Alternative_: `Win + D` 
- [ ] Control–UP Arrow: Enter Mission Control.  _Windows Alternative_: `Win + Tab`

### Document shortcuts
The behavior of these shortcuts may vary with the app you're using.

- [x] Command-B: Boldface the selected text, or turn boldfacing on or off. 
- [x] Command-I: Italicize the selected text, or turn italics on or off.
- [x] Command-K: Add a web link.
- [x] Command-U: Underline the selected text, or turn underlining on or off.
- [x] Option-Delete: Delete the word to the left of the insertion point.
- [ ] Control-K: Delete the text between the insertion point and the end of the line or paragraph. _Windows Alternative_: `CMD + Right arrow` then `Backspace`
- [x] Command–Up Arrow: Move the insertion point to the beginning of the document.
- [x] Command–Down Arrow: Move the insertion point to the end of the document.
- [x] Command–Left Arrow: Move the insertion point to the beginning of the current line.
- [x] Command–Right Arrow: Move the insertion point to the end of the current line.
- [x] Option–Left Arrow: Move the insertion point to the beginning of the previous word.
- [x] Option–Right Arrow: Move the insertion point to the end of the next word.
- [x] Shift–Command–Up Arrow: Select the text between the insertion point and the beginning of the document.
- [x] Shift–Command–Down Arrow: Select the text between the insertion point and the end of the document.
- [x] Shift–Command–Left Arrow: Select the text between the insertion point and the beginning of the current line.
- [x] Shift–Command–Right Arrow: Select the text between the insertion point and the end of the current line.
- [x] Shift–Up Arrow: Extend text selection to the nearest character at the same horizontal location on the line above.
- [x] Shift–Down Arrow: Extend text selection to the nearest character at the same horizontal location on the line below.
- [x] Shift–Left Arrow: Extend text selection one character to the left.
- [x] Shift–Right Arrow: Extend text selection one character to the right.
- [x] Option–Shift–Left Arrow: Extend text selection to the beginning of the current word, then to the beginning of the following word if pressed again.
- [x] Option–Shift–Right Arrow: Extend text selection to the end of the current word, then to the end of the following word if pressed again.
- [ ] Control-A: Move to the beginning of the line or paragraph. _Windows Alternative_: `CMD + Left arrow` or `Home`
- [ ] Control-E: Move to the end of a line or paragraph. _Windows Alternative_: `CMD + Right arrow` or `End`
- [ ] ~~Option-Command-C: Copy Style: Copy the formatting settings of the selected item to the Clipboard.~~
- [ ] ~~Option-Command-V: Paste Style: Apply the copied style to the selected item.~~
- [ ] ~~Option-Shift-Command-V: Paste and Match Style: Apply the style of the surrounding content to the item pasted within that content.~~
- [ ] ~~Shift-Command-S: Display the Save As dialog, or duplicate the current document.~~
- [ ] Shift–Command–Minus sign (-): Decrease the size of the selected item. _Windows Alternative_: depends on text editor
- [ ] Shift–Command–Plus sign (+): Increase the size of the selected item. Command–Equal sign (=) performs the same function. _Windows Alternative_: depends on text editor
- [ ] ~~Shift–Command–Question mark (?): Open and Search in the Help menu.~~

## Available Windows shortcuts
Since we'ev replaced the only `Windows logo key`, we also need to maintain some common Windows logo key keyboard shortcuts. Some of them may've already been metioned as _Windows alternative_ above. Here's the [ref](https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec). Items checked in the list below are available via shortcuts remapping to maintain the **origin** native Windows experience.

- [x] Win+Space: Switch input language and keyboard layout.
- [x] Win+R: Open the Run dialog box.
- [x] Win+L: Lock your PC or switch accounts.
- [x] Win+D: Display and hide the desktop.
- [x] Win+E: Open File Explorer.
- [x] Win+Tab: Open Task view
- [x] Win+Z: Open the snap layouts. Updated in Windows 11.
- [x] Win+M: Minimize all windows.
- [x] Win+Shift+S: Take a screenshot of part of your screen.
- [x] Win+S: Open search.
- [x] Win+I: Open Settings.
- [x] Win+A: Open Quick Settings. Updated in Windows 11.
- [x] Win+X: Open the Quick Link menu.
- [x] Win+V: Open the clipboard history. 
- [x] Win+Shift+C: PowerToys Color Picker default shortcut



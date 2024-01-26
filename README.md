# alpyNotification
- TR: FiveM için QBCore Notification scripti.
- EN: QBCore Notification script for FiveM.
![image](https://user-images.githubusercontent.com/123509837/220655721-8fc53ad1-b030-4b9b-9d67-86f3a42123b6.png)

## Video Showcase
- [https://youtu.be/E9cA6FUV4v0](https://youtu.be/d1QEwqNdvJ0)
## Features
- Script NewQB destekler. (The script supports NewQB.)
- 0.00 - 0.01 Resmon
- Hoş ve temiz tasarım. (Nice and clean design)
- Basit kurulum ve kullanım. (Simple setup and use)

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)

### Installation
- Download the script and put it in the `[qb]` directory.
- Follow the steps to change qb-core default notifications:

1. Go to qb-core > client > functions.lua
2. Go to line 83 / search using CTRL + F `QBCore.Functions.Notify`
3. Replace the `QBCore.Functions.Notify` function with the following:
```lua
function QBCore.Functions.Notify(text, notifytype, time)
    if type(text) == "table" then
        exports["alpyNotification"]:Notify(text.text, notifytype, time)
    else
        exports["alpyNotification"]:Notify(text, notifytype, time)
    end
end
```

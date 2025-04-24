# xk-watermark HUD - README

This is a HUD/watermark NUI resource for your QB-Core based FiveM server.

## ✅ Features

- Displays the player's **first and last name**
- Shows the player's **server ID**
- Shows the player's **job**
- Live **clock** based on the server's system time
- Live **player count** (updates every second)
- **Logo** displayed at the bottom center of the screen
- Everything is shown automatically, and can be toggled using `/togglehud`

---

## ⚙️ Installation

1. Extract the `xk-watermark` folder into your `resources/` directory
2. Add the following to your `server.cfg`:
3. Start your server ✅

---

## 🧪 Testing

You can type `/togglehud` in chat to manually hide or show the HUD.

---

## 🎨 Customization

### Change the logo
Replace `html/logo.png` with your own image (preferably a transparent PNG). Keep the filename, or update `index.html` accordingly.

### Change position/size/colors
Edit `html/style.css`.

- Logo: `#logo-container`, `#logo`
- Time & player count: `#time-text`, `#player-count`
- Name, ID, and job: `#player-info`

### Change text or language
Edit `html/index.html` → Look for lines with `innerText =`.

---

## 🧩 Technical Info

- **System time & player count** are sent from `server.lua`
- **Player data (name, job)** is sent when `QBCore:Client:OnPlayerLoaded` is triggered
- All data is handled via `SendNUIMessage()` in `client.lua`

---

## 💡 Want more?

Would you like to add:
- Date?
- Ping/FPS?
- Bank/cash display?
- Discord link?

Reach out to your developer — or contact xKaYdIoNx Developments on the offical Nordic Developments discord / https://discord.gg/dUCC8cdYRz 😉

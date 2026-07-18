# Two & Ones Club Bag — iOS build

The whole app lives in `www/index.html` (one file, no build step, no framework).
Capacitor wraps it into a native iOS app. Everything is stored on the device —
no server, no account, no backend to run or pay for.

## What you need

- A Mac with **Xcode** installed (free, App Store)
- **Node.js** (https://nodejs.org)
- An **Apple Developer account** (US$99/yr) — only needed to put it on the App Store;
  you can build to your own iPhone without it for testing

## Build steps

```bash
npm install
npx cap add ios
npm run icons      # generates all iOS icon sizes from assets/icon.png
npm run ios        # syncs and opens the project in Xcode
```

In Xcode: select your team under Signing & Capabilities, plug in an iPhone,
press Run. That's it — the app is on the phone.

## How the rubber reminders work (no server)

When a rubber is saved in the Gear tab, the app schedules a **local notification**
on the device for the rubber's 6-month anniversary via
`@capacitor/local-notifications`. Nothing is sent anywhere; the phone reminds
itself. iOS asks the user for notification permission the first time.

## Updating the app

Edit `www/index.html`, then `npx cap sync ios` and rebuild in Xcode.

## Android later

Same codebase: `npm i @capacitor/android && npx cap add android`.

## Notes

- `assets/icon.png` is a placeholder — replace with the real Two & Ones mark
  (1024×1024 PNG) before shipping, then re-run `npm run icons`.
- App Store listing needs: name, subtitle ("Score. Track your gear. Settle
  arguments."), screenshots (take them in the iOS Simulator), and a privacy
  label — easy one: "Data not collected", because nothing leaves the device.

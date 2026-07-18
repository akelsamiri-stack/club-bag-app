# Two & Ones Club Bag — build brief

**One line:** a free table tennis companion app that keeps Two and Ones on every
player's phone — scorer, gear tracker, table-side tools and rules — growing into
the home of a 3D racket builder.

## Why it exists

The app is the marketing funnel, the store is the monetization. No paywall, no
ads, no account required in v1. Every feature either gets used at the table
(top of mind) or feeds a future purchase (gear tracker → fresh rubber).

## Brand

Taken from twoandones.com's own design tokens:
ink `#0A0E15` · panel `#121A26` · bone `#F3EFE7` · slate `#90A0B2` ·
red `#FF313E` / deep `#B01C28` · blue `#1E72E0` / court `#16407A` ·
ok-green `#46D18A` · radius 16px. Red vs blue = the two paddles in the logo;
Player 1 is always red, Player 2 always blue.

## v1 (this codebase) — ship it

- **Score** — 11-point games, best of 3/5/7, automatic serve rotation
  (2 each, 1 each from deuce — the brand name in action), deuce/game/match
  point callouts, change-ends prompts incl. deciding-game swap at 5, undo,
  wake-lock, share result text, recent-matches list.
- **Gear** — log rubbers/blade/shoes/balls with purchase (glue) date; age
  badges fresh (<4 mo) / fading (4–8) / replace (8+); replace-nudge links to
  the store; 6-month **local notification** scheduled on device when a rubber
  is saved.
- **Tools** — regulation timers (60s timeout, 2:00 break, warm-up) and a
  serve-practice randomizer (spin × length × placement).
- **Rules ("Settle It")** — the 8 arguments every match has, answered by the
  actual laws, each ending in a clear verdict.
- **Storage:** all on-device (localStorage). Privacy label: "Data not
  collected."

## v2 — the comeback hooks

- Head-to-head records between saved players ("you're 7–3 against Dave")
- Match history with per-game detail; stats (deuce record, comeback wins)
- Doubles mode: serve AND receiver rotation prompts
- Club night: round-robin generator for 3–8 players
- Shareable result card (image, branded) instead of plain text
- Optional account + sync (Supabase or CloudKit) — unlocks the retailer view:
  who plays what rubber, and when it's due. Email/push campaigns from real data.

## v3 — the 3D racket builder

- three.js / model-viewer scene: pick a blade, drop rubbers on each side
  (red FH / black BH), rotate it, see the build — mirroring the shop's
  "watch us build" service.
- "Build this for me" → pre-filled cart on twoandones.com.
- Assets to commission: glTF models — start with ~5 hero blades and generic
  rubber sheets with swappable textures per product. The code is the cheap
  part; the models are the investment.

## Explicitly out of scope

Paywall/IAP (decided against — Apple takes 15–30% and it fights the funnel),
ads, mandatory sign-up, chat/social feeds.

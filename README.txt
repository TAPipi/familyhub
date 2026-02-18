════════════════════════════════════════
  FAMILY HUB  — Setup Guide
════════════════════════════════════════

FEATURES
--------
• Calendar with day view (double-click a slot to add events)
• Google Calendar sync (see below)
• Menu planner — per-day breakfast/lunch/dinner
• Notes — Google Keep style cards
• Shopping — multiple lists + Master aggregate view
• Timer with audio alert
• Multiple profiles (partner, children)
• Customisable weather location
• Dark mode (Google Keep style)
• PWA — installs on Android, iPhone & Windows

────────────────────────────────────────
WINDOWS DESKTOP
────────────────────────────────────────
1. Extract this folder to a permanent location (e.g. C:\FamilyHub\)
2. Double-click "Launch FamilyHub.bat"
   - Opens in fullscreen kiosk mode (Edge preferred, Chrome fallback)
   - If Windows shows a security warning, click "More info" → "Run anyway"
3. Optional: Right-click the .bat → Send to → Desktop (shortcut)
4. Optional: To auto-start, press Win+R, type "shell:startup",
   paste a shortcut to the .bat file there

────────────────────────────────────────
ANDROID (Chrome)
────────────────────────────────────────
Host the files online (free options):

Option A — Netlify Drop (easiest, no account needed)
  1. Go to app.netlify.com/drop in Chrome
  2. Drag the entire FamilyHub folder onto the page
  3. You get a URL instantly (e.g. random-name.netlify.app)
  4. Open that URL on your Android phone in Chrome
  5. Tap the "Add to Home Screen" banner ✓

Option B — GitHub Pages (free, permanent)
  1. github.com → New repo called "familyhub" → Upload all files
  2. Settings → Pages → Source: main branch → Save
  3. Your URL: https://yourusername.github.io/familyhub/

────────────────────────────────────────
iPHONE / iPAD (Safari)
────────────────────────────────────────
1. Host files online (same as Android above)
2. Open the URL in Safari on your iPhone
3. Tap the Share button (square with arrow)
4. Tap "Add to Home Screen" → Add
5. Opens fullscreen like a native app ✓

────────────────────────────────────────
GOOGLE CALENDAR SYNC
────────────────────────────────────────
Requires a free Google Cloud account:
1. Go to console.cloud.google.com
2. Create a new project
3. Enable "Google Calendar API" in the API Library
4. Go to APIs & Services → Credentials
5. Create "OAuth 2.0 Client ID" (Web application)
6. Add your app URL to "Authorised JavaScript origins"
   - For local use: http://localhost or file://
   - For hosted: your Netlify/GitHub URL
7. Copy the Client ID
8. In Family Hub → ⚙️ Settings → Google Calendar → paste Client ID → Connect

Your events are read-only from Google and display in blue-green.
Your own local events are still fully editable.

────────────────────────────────────────
SHARING WITH FAMILY
────────────────────────────────────────
All data is stored locally in each person's browser.
To share the same data across devices, host online (Netlify/GitHub)
and all family members open the same URL.

Note: localStorage is per-device, per-browser. For true shared data
across multiple devices, a backend database would be needed.
Each device will have its own copy of events, notes, etc.

────────────────────────────────────────
DATA
────────────────────────────────────────
All data is saved in your browser's localStorage.
Clearing browser data will erase it.
Backup tip: use browser's built-in export or keep the same browser.

════════════════════════════════════════

# AetherStream — Next-Gen Cinema & TV Series Application

> Built with modern React 19, Vite, Node.js/Express, HLS Adaptive Streaming, and the reverse-engineered **Transsion API Gateway HMAC-SHA256** security architecture.

---

## 🌟 Overview & Design Philosophy

**AetherStream** is a completely newly developed, full-stack streaming application engineered from the ground up using insights, network protocols, and data models discovered during forensic reverse-engineering of `moviebox-premium_v4.0.03.0930.03-an1.ca.apk` (`com.community.oneroom`).

### Core Highlights
* **Zero UI Cloning**: Completely original, modern cinematic interface with clean glassmorphic typography, smooth transitions, and dark slate color palette (`#07090e`).
* **Multi-Category Catalog**: Features full-length 4K Cinema, Multi-Season Episodic TV Series, and fast-paced ShortTV Micro-Dramas.
* **AetherPlayer Custom Cinema Player**: Built with `hls.js` adaptive bitrate streaming, resolution switching (4K UHD / 1080p / 720p / 480p), multi-language subtitle tracks (WebVTT), playback speed controls, and auto-hiding overlays.
* **Persistent Library**: Complete synchronization with backend `/api/library` for real-time Continue Watching resume progress, Watchlist management, and history logging.
* **Reverse-Engineered HMAC Gateway Signer**: Implements the Transsion API Gateway signing algorithm (`gateway_secret_online: 76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O`) with an interactive real-time inspector drawer.

---

## 🏗️ Architecture & Component Hierarchy

```
aether-stream/
├── server/
│   ├── index.js             # Express API server (catalog, library, gateway signer)
│   ├── gatewaySigner.js     # Transsion HMAC-SHA256 Canonical string & signature generator
│   ├── catalogData.js       # Curated 4K Cinema, Multi-season Series & ShortTV datasets
│   ├── data/
│   │   └── library.json     # Persistent user watchlist, progress & watch history
│   └── subtitles/           # Sample WebVTT multi-lingual subtitle tracks
│
├── src/
│   ├── components/
│   │   ├── Navbar.jsx          # Dynamic navigation, instant search dropdown, watchlist pill
│   │   ├── HeroBanner.jsx      # Cinematic rotating featured spotlight with CTAs
│   │   ├── ContentRow.jsx      # Smooth horizontal carousels (Cinema, Series, Micro-Dramas)
│   │   ├── ContentModal.jsx    # Full detail modal with Season/Episode selector tabs
│   │   ├── PlayerModal.jsx     # Custom AetherPlayer (HLS.js, audio, resolution, subtitles)
│   │   ├── ExploreView.jsx     # Filterable catalog by Type, Genre, Year, and Sort
│   │   ├── LibraryView.jsx     # Watchlist grid, Continue Watching resume cards, History log
│   │   └── GatewayDebugger.jsx # Interactive forensic Transsion API signing inspector
│   ├── services/
│   │   └── api.js              # Client REST API connector
│   ├── App.jsx                 # Root coordinator, tab router, toast notifications
│   └── index.css               # Cinematic dark design system & tokens
├── vite.config.js              # Vite server & reverse proxy (/api -> :5000)
└── package.json
```

---

## 🚀 Running the Application

Both servers run concurrently:

### 1. Start the Backend API & Gateway Server (Port 5000)
```bash
cd "e:\MovieBox Analysis\aether-stream"
node server/index.js
```
*Output: `[AetherStream Gateway Server] Listening on http://localhost:5000`*

### 2. Start the Frontend Application (Port 3000)
```bash
cd "e:\MovieBox Analysis\aether-stream"
npm run dev
```
*Open your browser and navigate to: **http://localhost:3000**.*

---

## 🔐 Reverse-Engineered Gateway Signing Implementation

From the reverse-engineered Android decompilation of `com/transsion/gateway/GatewayInterceptor.smali`, client requests require an authentic Transsion HMAC-SHA256 signature to prevent tampering.

The canonical string format is reconstructed as:
```
canonical_string = Accept + "\n" +
                   Content-Type + "\n" +
                   Content-MD5 + "\n" +
                   Path + "\n" +
                   QueryString
```

The signature header output format:
```
x-tr-signature-method: HmacSHA256
x-tr-signature: <timestamp>|2|<hex_hmac_sha256_digest>
```
You can inspect and test this live in the application by clicking the **HMAC Gateway** badge in the top navigation bar.

import express from 'express';
import cors from 'cors';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { CATALOG, GENRES } from './catalogData.js';
import { generateGatewayHeaders } from './gatewaySigner.js';
import { fetchLiveCatalog } from './liveCatalog.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

// Serve static subtitles
app.use('/subtitles', express.static(path.join(__dirname, 'subtitles')));

// Local file storage for persistent library
const DATA_DIR = path.join(__dirname, 'data');
const LIBRARY_FILE = path.join(DATA_DIR, 'library.json');

if (!fs.existsSync(DATA_DIR)) {
  fs.mkdirSync(DATA_DIR, { recursive: true });
}

function loadLibrary() {
  if (fs.existsSync(LIBRARY_FILE)) {
    try {
      return JSON.parse(fs.readFileSync(LIBRARY_FILE, 'utf-8'));
    } catch (e) {
      console.error('Error loading library JSON:', e);
    }
  }
  return {
    watchlist: ["mov-001", "ser-101"],
    continueWatching: [
      {
        contentId: "mov-001",
        title: "Tears of Steel: The Cybernetic Nexus",
        poster: "https://images.unsplash.com/photo-1578632767115-351597cf2477?w=600&auto=format&fit=crop&q=80",
        backdrop: "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=1600&auto=format&fit=crop&q=85",
        progressSeconds: 1420,
        totalSeconds: 6720,
        percent: 21,
        lastWatched: new Date().toISOString()
      }
    ],
    history: []
  };
}

function saveLibrary(data) {
  try {
    fs.writeFileSync(LIBRARY_FILE, JSON.stringify(data, null, 2), 'utf-8');
  } catch (e) {
    console.error('Error saving library JSON:', e);
  }
}

let userLibrary = loadLibrary();

// Helper to get unified combined catalog (Live TMDB + Curated)
async function getFullCatalog() {
  try {
    const liveItems = await fetchLiveCatalog();
    // Put live items upfront, then curated items
    return [...liveItems, ...CATALOG];
  } catch (e) {
    return CATALOG;
  }
}

// ===================== CATALOG API =====================

/**
 * GET /api/catalog
 * Query params: type, genre, search, sort, source ('live' | 'all')
 */
app.get('/api/catalog', async (req, res) => {
  const { type, genre, search, sort, source } = req.query;
  const fullList = await getFullCatalog();
  let items = [...fullList];

  if (source === 'live') {
    items = items.filter(i => i.id.startsWith('tmdb-'));
  }

  if (type && type !== 'all') {
    items = items.filter(i => i.type === type);
  }

  if (genre && genre !== 'All') {
    items = items.filter(i => i.genres && i.genres.some(g => g.toLowerCase() === genre.toLowerCase()));
  }

  if (search) {
    const q = search.toLowerCase().trim();
    items = items.filter(i => 
      (i.title && i.title.toLowerCase().includes(q)) ||
      (i.synopsis && i.synopsis.toLowerCase().includes(q)) ||
      (i.genres && i.genres.some(g => g.toLowerCase().includes(q))) ||
      (i.cast && i.cast.some(c => c.name && c.name.toLowerCase().includes(q)))
    );
  }

  if (sort === 'rating') {
    items.sort((a, b) => (b.rating || 0) - (a.rating || 0));
  } else if (sort === 'year') {
    items.sort((a, b) => (b.releaseYear || 0) - (a.releaseYear || 0));
  } else if (sort === 'title') {
    items.sort((a, b) => (a.title || '').localeCompare(b.title || ''));
  }

  // Collect dynamic genres
  const allGenresSet = new Set(GENRES);
  items.forEach(it => {
    if (it.genres) it.genres.forEach(g => allGenresSet.add(g));
  });

  res.json({
    total: items.length,
    genres: Array.from(allGenresSet),
    items
  });
});

/**
 * GET /api/catalog/:id
 */
app.get('/api/catalog/:id', async (req, res) => {
  const fullList = await getFullCatalog();
  const item = fullList.find(i => i.id === req.params.id);
  if (!item) {
    return res.status(404).json({ error: 'Content not found' });
  }

  // Find related items in the same genre
  const related = fullList.filter(i => 
    i.id !== item.id && i.genres && item.genres && i.genres.some(g => item.genres.includes(g))
  ).slice(0, 6);

  res.json({
    ...item,
    related
  });
});

// ===================== GATEWAY SIGNER PROXY =====================

/**
 * POST /api/gateway/sign
 * Computes Transsion HMAC-SHA256 signature for any target path
 */
app.post('/api/gateway/sign', (req, res) => {
  const { path: apiPath, query, body } = req.body;
  if (!apiPath) {
    return res.status(400).json({ error: 'Missing path argument' });
  }

  const signedHeaders = generateGatewayHeaders(apiPath, query || '', typeof body === 'object' ? JSON.stringify(body) : (body || ''));
  res.json({
    path: apiPath,
    signedHeaders,
    algorithm: 'HmacSHA256',
    secretIdentifier: 'gateway_secret_online'
  });
});

// ===================== USER LIBRARY API =====================

/**
 * GET /api/library/all
 */
app.get('/api/library/all', async (req, res) => {
  const fullList = await getFullCatalog();
  const watchlistItems = fullList.filter(c => userLibrary.watchlist.includes(c.id));
  res.json({
    watchlistIds: userLibrary.watchlist,
    watchlist: watchlistItems,
    continueWatching: userLibrary.continueWatching,
    history: userLibrary.history
  });
});

/**
 * POST /api/library/watchlist
 * Body: { contentId, action: 'add' | 'remove' | 'toggle' }
 */
app.post('/api/library/watchlist', (req, res) => {
  const { contentId, action } = req.body;
  if (!contentId) {
    return res.status(400).json({ error: 'Missing contentId' });
  }

  const idx = userLibrary.watchlist.indexOf(contentId);
  if (action === 'add' || (action === 'toggle' && idx === -1)) {
    if (idx === -1) userLibrary.watchlist.push(contentId);
  } else if (action === 'remove' || (action === 'toggle' && idx !== -1)) {
    if (idx !== -1) userLibrary.watchlist.splice(idx, 1);
  }

  saveLibrary(userLibrary);
  res.json({
    success: true,
    inWatchlist: userLibrary.watchlist.includes(contentId),
    watchlistIds: userLibrary.watchlist
  });
});

/**
 * POST /api/library/progress
 * Body: { contentId, progressSeconds, totalSeconds, episodeInfo }
 */
app.post('/api/library/progress', async (req, res) => {
  const { contentId, progressSeconds, totalSeconds, episodeInfo } = req.body;
  if (!contentId || progressSeconds === undefined) {
    return res.status(400).json({ error: 'Invalid payload' });
  }

  const fullList = await getFullCatalog();
  const item = fullList.find(c => c.id === contentId);
  const total = totalSeconds || (item ? item.durationSeconds : 3600);
  const percent = Math.min(100, Math.round((progressSeconds / total) * 100));

  // Update continue watching
  const existingIndex = userLibrary.continueWatching.findIndex(c => c.contentId === contentId);
  const entry = {
    contentId,
    title: item ? item.title : 'Unknown Title',
    poster: item ? item.poster : '',
    backdrop: item ? item.backdrop : '',
    episodeInfo: episodeInfo || null,
    progressSeconds: Math.round(progressSeconds),
    totalSeconds: Math.round(total),
    percent,
    lastWatched: new Date().toISOString()
  };

  if (existingIndex !== -1) {
    userLibrary.continueWatching[existingIndex] = entry;
  } else {
    userLibrary.continueWatching.unshift(entry);
  }

  // Record history
  if (!userLibrary.history.some(h => h.contentId === contentId)) {
    userLibrary.history.unshift({
      contentId,
      title: item ? item.title : '',
      poster: item ? item.poster : '',
      timestamp: new Date().toISOString()
    });
  }

  saveLibrary(userLibrary);
  res.json({ success: true, entry });
});

/**
 * DELETE /api/library/history
 */
app.delete('/api/library/history', (req, res) => {
  userLibrary.history = [];
  userLibrary.continueWatching = [];
  saveLibrary(userLibrary);
  res.json({ success: true });
});

app.listen(PORT, () => {
  console.log(`[AetherStream Gateway Server] Listening on http://localhost:${PORT}`);
});

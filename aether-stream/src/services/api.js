/**
 * AetherStream Client API Service
 * Interacts with backend API endpoints and local caching
 */

const BASE_URL = '/api';

export const api = {
  // Fetch full or filtered catalog
  async getCatalog({ type = 'all', genre = 'All', search = '', sort = 'rating' } = {}) {
    const params = new URLSearchParams();
    if (type && type !== 'all') params.append('type', type);
    if (genre && genre !== 'All') params.append('genre', genre);
    if (search) params.append('search', search);
    if (sort) params.append('sort', sort);

    const res = await fetch(`${BASE_URL}/catalog?${params.toString()}`);
    if (!res.ok) throw new Error('Failed to fetch catalog');
    return res.json();
  },

  // Fetch individual content details with related content
  async getContentDetails(id) {
    const res = await fetch(`${BASE_URL}/catalog/${id}`);
    if (!res.ok) throw new Error('Content not found');
    return res.json();
  },

  // User Library API
  async getLibrary() {
    const res = await fetch(`${BASE_URL}/library/all`);
    if (!res.ok) throw new Error('Failed to fetch user library');
    return res.json();
  },

  async toggleWatchlist(contentId, action = 'toggle') {
    const res = await fetch(`${BASE_URL}/library/watchlist`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ contentId, action })
    });
    if (!res.ok) throw new Error('Failed to update watchlist');
    return res.json();
  },

  async updateProgress(contentId, progressSeconds, totalSeconds, episodeInfo = null) {
    const res = await fetch(`${BASE_URL}/library/progress`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ contentId, progressSeconds, totalSeconds, episodeInfo })
    });
    if (!res.ok) throw new Error('Failed to save playback progress');
    return res.json();
  },

  async clearHistory() {
    const res = await fetch(`${BASE_URL}/library/history`, {
      method: 'DELETE'
    });
    if (!res.ok) throw new Error('Failed to clear playback history');
    return res.json();
  },

  // Transsion Gateway Diagnostic Signer
  async signGatewayRequest(path, query = '', body = '') {
    const res = await fetch(`${BASE_URL}/gateway/sign`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ path, query, body })
    });
    if (!res.ok) throw new Error('Gateway signature failed');
    return res.json();
  }
};


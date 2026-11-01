import React, { useState, useEffect } from 'react';
import Navbar from './components/Navbar';
import HeroBanner from './components/HeroBanner';
import ContentRow from './components/ContentRow';
import ContentModal from './components/ContentModal';
import PlayerModal from './components/PlayerModal';
import ExploreView from './components/ExploreView';
import LibraryView from './components/LibraryView';
import GatewayDebugger from './components/GatewayDebugger';
import { api } from './services/api';
import { CheckCircle2, Film, Shield, Sparkles } from 'lucide-react';

export default function App() {
  const [activeTab, setActiveTab] = useState('home'); // 'home' | 'explore' | 'series' | 'movies' | 'library'
  const [catalog, setCatalog] = useState([]);
  const [watchlistIds, setWatchlistIds] = useState([]);
  const [continueWatching, setContinueWatching] = useState([]);
  const [loading, setLoading] = useState(true);

  // Modals & Overlays state
  const [selectedContentId, setSelectedContentId] = useState(null);
  const [activePlayer, setActivePlayer] = useState(null); // { content, episode }
  const [showGatewayDebugger, setShowGatewayDebugger] = useState(false);
  const [toasts, setToasts] = useState([]);

  // Toast notifier helper
  const addToast = (message) => {
    const id = Date.now();
    setToasts((prev) => [...prev, { id, message }]);
    setTimeout(() => {
      setToasts((prev) => prev.filter((t) => t.id !== id));
    }, 3000);
  };

  // Initial Data Load
  const loadInitialData = async () => {
    try {
      const [catData, libData] = await Promise.all([
        api.getCatalog(),
        api.getLibrary()
      ]);
      setCatalog(catData.items || []);
      setWatchlistIds(libData.watchlistIds || []);
      setContinueWatching(libData.continueWatching || []);
    } catch (err) {
      console.error('Error initializing data:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadInitialData();
  }, []);

  // Watchlist Toggle Handler
  const handleToggleWatchlist = async (contentId) => {
    try {
      const res = await api.toggleWatchlist(contentId, 'toggle');
      setWatchlistIds(res.watchlistIds);
      addToast(res.inWatchlist ? 'Added to your Watchlist' : 'Removed from Watchlist');
    } catch (err) {
      console.error('Watchlist error:', err);
    }
  };

  // Progress Update from Player
  const handleUpdateProgress = async (contentId, progressSec, totalSec, episodeInfo) => {
    try {
      const res = await api.updateProgress(contentId, progressSec, totalSec, episodeInfo);
      if (res.entry) {
        setContinueWatching((prev) => {
          const filtered = prev.filter((c) => c.contentId !== contentId);
          return [res.entry, ...filtered];
        });
      }
    } catch (err) {
      console.error('Progress sync error:', err);
    }
  };

  // Launch Player
  const handlePlayContent = (contentOrContinueItem, episode = null) => {
    // If it's a continue item, look up the full catalog item
    const content = catalog.find(
      (c) => c.id === (contentOrContinueItem.id || contentOrContinueItem.contentId)
    ) || contentOrContinueItem;

    setActivePlayer({ content, episode });
  };

  // Advance to next episode for series
  const handleNextEpisode = () => {
    if (!activePlayer || !activePlayer.episode || !activePlayer.content.seasons) return;
    const { content, episode } = activePlayer;
    const season = content.seasons.find((s) => s.seasonNumber === (episode.seasonNumber || 1));
    if (!season) return;

    const currentIndex = season.episodes.findIndex((e) => e.episodeNumber === episode.episodeNumber);
    if (currentIndex !== -1 && currentIndex < season.episodes.length - 1) {
      const nextEp = season.episodes[currentIndex + 1];
      setActivePlayer({ content, episode: nextEp });
      addToast(`Playing Season ${nextEp.seasonNumber || 1}: Episode ${nextEp.episodeNumber}`);
    } else {
      addToast('You reached the final episode of this season.');
    }
  };

  // Filter Catalog for Home Rows with Live Content Prioritization
  const featuredItems = catalog.filter((c) => c.featured).slice(0, 5);
  const liveTrendingMovies = catalog.filter((c) => c.type === 'movie' && c.id.startsWith('tmdb-')).slice(0, 15);
  const liveSeries = catalog.filter((c) => c.type === 'series' && c.id.startsWith('tmdb-')).slice(0, 15);
  const topRatedMovies = catalog.filter((c) => c.type === 'movie' && (c.rating >= 7.5 || c.featured)).slice(0, 15);
  const actionThrillers = catalog.filter((c) => c.genres && (c.genres.includes('Action') || c.genres.includes('Thriller'))).slice(0, 15);
  const sciFiFilms = catalog.filter((c) => c.genres && (c.genres.includes('Sci-Fi') || c.genres.includes('Animation'))).slice(0, 15);
  const microDramas = catalog.filter((c) => c.genres && (c.genres.includes('Micro-Drama') || c.genres.includes('Short-Form')));

  return (
    <div className="aether-app-root">
      {/* Global Navigation Bar */}
      <Navbar
        activeTab={activeTab}
        setActiveTab={setActiveTab}
        watchlistCount={watchlistIds.length}
        onOpenContent={(id) => setSelectedContentId(id)}
        onOpenGatewayDebugger={() => setShowGatewayDebugger(true)}
      />

      {/* Main Content Area */}
      <main className="main-viewport">
        {activeTab === 'home' && (
          <div className="home-view-wrapper animate-fade-in">
            {/* Featured Hero Banner */}
            <HeroBanner
              featuredItems={featuredItems.length > 0 ? featuredItems : catalog.slice(0, 3)}
              onPlay={(item) => handlePlayContent(item)}
              onOpenDetails={(id) => setSelectedContentId(id)}
              watchlistIds={watchlistIds}
              onToggleWatchlist={handleToggleWatchlist}
            />

            {/* Row 1: Continue Watching (Only shown if active sessions exist) */}
            {continueWatching.length > 0 && (
              <ContentRow
                title="Continue Watching"
                subtitle="Resume where you left off across all devices"
                items={continueWatching}
                onPlay={(item) => handlePlayContent(item)}
                onOpenDetails={(id) => setSelectedContentId(id)}
                watchlistIds={watchlistIds}
                onToggleWatchlist={handleToggleWatchlist}
                isContinueWatching={true}
              />
            )}

            {/* Row 2: Live Global Trending Movies */}
            <ContentRow
              title="🔥 Live Trending Movies (This Week)"
              subtitle="Real-time box office sensations & global releases streaming in HD"
              items={liveTrendingMovies.length > 0 ? liveTrendingMovies : catalog.filter(c => c.type === 'movie')}
              onPlay={(item) => handlePlayContent(item)}
              onOpenDetails={(id) => setSelectedContentId(id)}
              watchlistIds={watchlistIds}
              onToggleWatchlist={handleToggleWatchlist}
            />

            {/* Row 3: Live TV & Streaming Series */}
            <ContentRow
              title="📺 Trending TV Series & Episodic Dramas"
              subtitle="Binge multi-episode seasons with verified instant playback"
              items={liveSeries.length > 0 ? liveSeries : catalog.filter(c => c.type === 'series')}
              onPlay={(item) => handlePlayContent(item)}
              onOpenDetails={(id) => setSelectedContentId(id)}
              watchlistIds={watchlistIds}
              onToggleWatchlist={handleToggleWatchlist}
            />

            {/* Row 4: Top Rated Cinema */}
            <ContentRow
              title="⭐ Top Rated Cinema Masterpieces"
              subtitle="Critically acclaimed films with Dolby Atmos and 4K masters"
              items={topRatedMovies}
              onPlay={(item) => handlePlayContent(item)}
              onOpenDetails={(id) => setSelectedContentId(id)}
              watchlistIds={watchlistIds}
              onToggleWatchlist={handleToggleWatchlist}
            />

            {/* Row 5: Action & Thriller */}
            <ContentRow
              title="⚡ High-Octane Action & Thrills"
              subtitle="Adrenaline-pumping stunts, high-stakes espionage, and blockbusters"
              items={actionThrillers}
              onPlay={(item) => handlePlayContent(item)}
              onOpenDetails={(id) => setSelectedContentId(id)}
              watchlistIds={watchlistIds}
              onToggleWatchlist={handleToggleWatchlist}
            />

            {/* Row 6: Sci-Fi & Cyberpunk */}
            <ContentRow
              title="🚀 Sci-Fi & Animated Epics"
              subtitle="Futuristic dystopias, space expeditions, and groundbreaking animation"
              items={sciFiFilms}
              onPlay={(item) => handlePlayContent(item)}
              onOpenDetails={(id) => setSelectedContentId(id)}
              watchlistIds={watchlistIds}
              onToggleWatchlist={handleToggleWatchlist}
            />

            {/* Row 7: ShortTV Micro-Dramas */}
            {microDramas.length > 0 && (
              <ContentRow
                title="🎬 ShortTV Micro-Dramas"
                subtitle="Fast-paced, episodic micro-drama narratives (MovieBox reverse-engineered feature)"
                items={microDramas}
                onPlay={(item) => handlePlayContent(item)}
                onOpenDetails={(id) => setSelectedContentId(id)}
                watchlistIds={watchlistIds}
                onToggleWatchlist={handleToggleWatchlist}
              />
            )}
          </div>
        )}

        {/* Explore View */}
        {activeTab === 'explore' && (
          <ExploreView
            onPlay={(item) => handlePlayContent(item)}
            onOpenDetails={(id) => setSelectedContentId(id)}
            watchlistIds={watchlistIds}
            onToggleWatchlist={handleToggleWatchlist}
            initialType="all"
          />
        )}

        {/* Filtered TV Series View */}
        {activeTab === 'series' && (
          <ExploreView
            onPlay={(item) => handlePlayContent(item)}
            onOpenDetails={(id) => setSelectedContentId(id)}
            watchlistIds={watchlistIds}
            onToggleWatchlist={handleToggleWatchlist}
            initialType="series"
          />
        )}

        {/* Filtered Movies View */}
        {activeTab === 'movies' && (
          <ExploreView
            onPlay={(item) => handlePlayContent(item)}
            onOpenDetails={(id) => setSelectedContentId(id)}
            watchlistIds={watchlistIds}
            onToggleWatchlist={handleToggleWatchlist}
            initialType="movie"
          />
        )}

        {/* My Library View */}
        {activeTab === 'library' && (
          <LibraryView
            onPlay={(item) => handlePlayContent(item)}
            onOpenDetails={(id) => setSelectedContentId(id)}
            watchlistIds={watchlistIds}
            onToggleWatchlist={handleToggleWatchlist}
            onExplore={() => setActiveTab('explore')}
          />
        )}
      </main>

      {/* Content Details Modal */}
      {selectedContentId && (
        <ContentModal
          contentId={selectedContentId}
          onClose={() => setSelectedContentId(null)}
          onPlay={(content, episode) => handlePlayContent(content, episode)}
          watchlistIds={watchlistIds}
          onToggleWatchlist={handleToggleWatchlist}
        />
      )}

      {/* Fullscreen Aether Cinema Video Player */}
      {activePlayer && (
        <PlayerModal
          content={activePlayer.content}
          episode={activePlayer.episode}
          onClose={() => setActivePlayer(null)}
          onNextEpisode={handleNextEpisode}
          onUpdateProgress={handleUpdateProgress}
        />
      )}

      {/* Forensic Gateway Debugger Drawer */}
      {showGatewayDebugger && (
        <GatewayDebugger onClose={() => setShowGatewayDebugger(false)} />
      )}

      {/* Toast Notifications */}
      <div className="toast-container">
        {toasts.map((toast) => (
          <div key={toast.id} className="toast-item">
            <CheckCircle2 size={18} className="text-emerald" />
            <span>{toast.message}</span>
          </div>
        ))}
      </div>

      {/* Footer */}
      <footer className="aether-footer">
        <div className="footer-inner">
          <div className="footer-brand">
            <div className="logo-text">
              <span>AETHER</span>STREAM
            </div>
            <p className="footer-desc">
              Next-generation streaming architecture built with modern Web Standards, HLS adaptive bitrate streaming, and reverse-engineered cryptographic gateway security.
            </p>
          </div>
          <div className="footer-meta-pill">
            <Shield size={14} className="text-emerald" />
            <span>Transsion Gateway Signature Engine v2.0 Active</span>
          </div>
        </div>
      </footer>

      <style>{`
        .aether-app-root {
          min-height: 100vh;
          display: flex;
          flex-direction: column;
          background: #07090e;
        }
        .main-viewport {
          flex: 1;
        }
        .aether-footer {
          margin-top: 60px;
          border-top: 1px solid rgba(255, 255, 255, 0.08);
          background: rgba(13, 17, 26, 0.6);
          padding: 40px 48px;
        }
        .footer-inner {
          max-width: 1540px;
          margin: 0 auto;
          display: flex;
          align-items: center;
          justify-content: space-between;
          flex-wrap: wrap;
          gap: 20px;
        }
        .footer-brand .logo-text {
          font-family: 'Outfit', sans-serif;
          font-size: 1.2rem;
          font-weight: 800;
          color: #fff;
        }
        .footer-brand .logo-text span {
          background: linear-gradient(135deg, #06b6d4, #3b82f6);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
        }
        .footer-desc {
          font-size: 0.82rem;
          color: #64748b;
          max-width: 520px;
          margin-top: 6px;
          line-height: 1.5;
        }
        .footer-meta-pill {
          display: inline-flex;
          align-items: center;
          gap: 8px;
          padding: 8px 16px;
          background: rgba(255, 255, 255, 0.04);
          border: 1px solid rgba(255, 255, 255, 0.08);
          border-radius: 999px;
          font-size: 0.8rem;
          color: #94a3b8;
        }
        @media (max-width: 768px) {
          .aether-footer {
            padding: 30px 20px;
          }
          .footer-inner {
            flex-direction: column;
            align-items: flex-start;
          }
        }
      `}</style>
    </div>
  );
}

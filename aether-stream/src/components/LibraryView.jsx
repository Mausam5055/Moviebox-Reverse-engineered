import React, { useState, useEffect } from 'react';
import { Bookmark, Clock, Trash2, Play, Star, Plus, Check, ArrowRight } from 'lucide-react';

export default function LibraryView({ 
  onPlay, 
  onOpenDetails, 
  watchlistIds = [], 
  onToggleWatchlist,
  onExplore 
}) {
  const [libraryData, setLibraryData] = useState({
    watchlist: [],
    continueWatching: [],
    history: []
  });
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('continue'); // 'continue' | 'watchlist' | 'history'

  const fetchLibrary = () => {
    setLoading(true);
    fetch('/api/library/all')
      .then(res => res.json())
      .then(data => {
        setLibraryData(data);
        setLoading(false);
      })
      .catch(err => {
        console.error('Error fetching library:', err);
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchLibrary();
  }, [watchlistIds]);

  const handleClearHistory = async () => {
    if (window.confirm('Are you sure you want to clear your playback history and continue watching queue?')) {
      await fetch('/api/library/history', { method: 'DELETE' });
      fetchLibrary();
    }
  };

  return (
    <div className="library-view-container animate-fade-in">
      <div className="library-header">
        <div>
          <h1 className="library-title">My Personal Library</h1>
          <p className="library-subtitle">Track your watch progress, curated favorites, and viewing history.</p>
        </div>

        {libraryData.history.length > 0 && (
          <button className="btn-clear-history" onClick={handleClearHistory}>
            <Trash2 size={16} />
            <span>Clear History</span>
          </button>
        )}
      </div>

      {/* Tabs */}
      <div className="library-tabs-bar">
        <button
          className={`lib-tab-btn ${activeTab === 'continue' ? 'active' : ''}`}
          onClick={() => setActiveTab('continue')}
        >
          <Clock size={16} />
          <span>Continue Watching ({libraryData.continueWatching.length})</span>
        </button>

        <button
          className={`lib-tab-btn ${activeTab === 'watchlist' ? 'active' : ''}`}
          onClick={() => setActiveTab('watchlist')}
        >
          <Bookmark size={16} />
          <span>Watchlist ({libraryData.watchlist.length})</span>
        </button>

        <button
          className={`lib-tab-btn ${activeTab === 'history' ? 'active' : ''}`}
          onClick={() => setActiveTab('history')}
        >
          <span>History Log ({libraryData.history.length})</span>
        </button>
      </div>

      {loading ? (
        <div className="library-loading">
          <div className="loading-spinner animate-spin" />
          <p>Syncing library...</p>
        </div>
      ) : (
        <div className="library-tab-content">
          {/* Tab 1: Continue Watching */}
          {activeTab === 'continue' && (
            <div>
              {libraryData.continueWatching.length === 0 ? (
                <div className="empty-state glass-panel">
                  <Clock size={40} className="empty-icon text-muted" />
                  <h3>No Active Playback Sessions</h3>
                  <p>Start streaming any movie or series and your progress will automatically appear here.</p>
                  <button className="btn-primary" onClick={onExplore}>
                    <span>Discover Something New</span>
                    <ArrowRight size={16} />
                  </button>
                </div>
              ) : (
                <div className="continue-grid">
                  {libraryData.continueWatching.map((item) => (
                    <div 
                      key={item.contentId} 
                      className="continue-card-large glass-panel"
                      onClick={() => onPlay(item)}
                    >
                      <div className="continue-thumb-wrap">
                        <img src={item.backdrop || item.poster} alt={item.title} className="continue-thumb-img" />
                        <div className="continue-hover-play">
                          <div className="play-pill">
                            <Play size={18} fill="white" />
                            <span>Resume</span>
                          </div>
                        </div>
                        <div className="progress-bar-bg">
                          <div className="progress-bar-fill" style={{ width: `${item.percent || 0}%` }} />
                        </div>
                      </div>

                      <div className="continue-details">
                        <h3 className="continue-title-lg">{item.title}</h3>
                        {item.episodeInfo ? (
                          <div className="continue-ep-info">
                            Season {item.episodeInfo.season} • Episode {item.episodeInfo.episode}: {item.episodeInfo.title}
                          </div>
                        ) : (
                          <div className="continue-ep-info">Feature Film</div>
                        )}
                        <div className="continue-stats">
                          <span>{item.percent}% watched</span>
                          <span>{Math.round((item.totalSeconds - item.progressSeconds) / 60)}m left</span>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}

          {/* Tab 2: Watchlist */}
          {activeTab === 'watchlist' && (
            <div>
              {libraryData.watchlist.length === 0 ? (
                <div className="empty-state glass-panel">
                  <Bookmark size={40} className="empty-icon text-muted" />
                  <h3>Your Watchlist is Empty</h3>
                  <p>Explore our catalog and click the "+" icon to bookmark movies and series for later.</p>
                  <button className="btn-primary" onClick={onExplore}>
                    <span>Browse Catalog</span>
                    <ArrowRight size={16} />
                  </button>
                </div>
              ) : (
                <div className="watchlist-grid">
                  {libraryData.watchlist.map((item) => (
                    <div 
                      key={item.id} 
                      className="media-card"
                      onClick={() => onOpenDetails(item.id)}
                    >
                      <div className="media-poster-box">
                        <img src={item.poster} alt={item.title} className="media-poster" />
                        <div className="card-top-badges">
                          <span className="badge-quality">{item.quality}</span>
                        </div>
                        <div className="card-hover-overlay">
                          <button 
                            className="quick-play-btn"
                            onClick={(e) => {
                              e.stopPropagation();
                              onPlay(item);
                            }}
                          >
                            <Play size={20} fill="white" />
                          </button>
                          <button 
                            className="quick-watchlist-btn active"
                            onClick={(e) => {
                              e.stopPropagation();
                              onToggleWatchlist(item.id);
                            }}
                            title="Remove from Watchlist"
                          >
                            <Check size={16} />
                          </button>
                        </div>
                      </div>
                      <div className="media-info">
                        <h3 className="media-title">{item.title}</h3>
                        <div className="media-meta">
                          <div className="badge-rating">
                            <Star size={13} fill="#fbbf24" stroke="none" />
                            <span>{item.rating}</span>
                          </div>
                          <span>{item.releaseYear}</span>
                          <span className="badge-genre-tag">{item.genres[0]}</span>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}

          {/* Tab 3: History */}
          {activeTab === 'history' && (
            <div className="history-list-view">
              {libraryData.history.length === 0 ? (
                <div className="empty-state glass-panel">
                  <Clock size={40} className="empty-icon text-muted" />
                  <h3>No Viewing History</h3>
                  <p>Your streaming sessions will be recorded here.</p>
                </div>
              ) : (
                <div className="history-items">
                  {libraryData.history.map((h, i) => (
                    <div key={i} className="history-row glass-panel" onClick={() => onOpenDetails(h.contentId)}>
                      <img src={h.poster} alt={h.title} className="history-poster" />
                      <div className="history-info">
                        <div className="history-title">{h.title}</div>
                        <div className="history-time">Streamed on {new Date(h.timestamp).toLocaleDateString()} at {new Date(h.timestamp).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}</div>
                      </div>
                      <button 
                        className="btn-secondary"
                        onClick={(e) => {
                          e.stopPropagation();
                          onOpenDetails(h.contentId);
                        }}
                      >
                        Details
                      </button>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}
        </div>
      )}

      <style>{`
        .library-view-container {
          padding: 110px 48px 60px;
          max-width: 1540px;
          margin: 0 auto;
        }
        .library-header {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin-bottom: 24px;
        }
        .library-title {
          font-family: 'Outfit', sans-serif;
          font-size: 2.4rem;
          font-weight: 800;
          color: #fff;
        }
        .library-subtitle {
          font-size: 0.95rem;
          color: #94a3b8;
          margin-top: 4px;
        }
        .btn-clear-history {
          display: flex;
          align-items: center;
          gap: 8px;
          padding: 8px 16px;
          border-radius: 8px;
          background: rgba(244, 63, 94, 0.12);
          border: 1px solid rgba(244, 63, 94, 0.3);
          color: #f43f5e;
          font-size: 0.85rem;
          font-weight: 600;
          transition: all 0.2s ease;
        }
        .btn-clear-history:hover {
          background: rgba(244, 63, 94, 0.2);
        }
        .library-tabs-bar {
          display: flex;
          gap: 12px;
          border-bottom: 1px solid rgba(255, 255, 255, 0.08);
          padding-bottom: 14px;
          margin-bottom: 28px;
        }
        .lib-tab-btn {
          display: flex;
          align-items: center;
          gap: 8px;
          padding: 10px 18px;
          border-radius: 8px;
          color: #94a3b8;
          font-size: 0.9rem;
          font-weight: 600;
          transition: all 0.2s ease;
        }
        .lib-tab-btn:hover {
          color: #fff;
          background: rgba(255, 255, 255, 0.06);
        }
        .lib-tab-btn.active {
          color: #fff;
          background: rgba(59, 130, 246, 0.15);
          border: 1px solid rgba(59, 130, 246, 0.3);
        }
        .empty-state {
          padding: 70px 24px;
          border-radius: 16px;
          text-align: center;
          display: flex;
          flex-direction: column;
          align-items: center;
          gap: 14px;
          max-width: 540px;
          margin: 40px auto;
        }
        .empty-state h3 {
          font-size: 1.35rem;
          color: #fff;
        }
        .empty-state p {
          color: #94a3b8;
          font-size: 0.92rem;
          margin-bottom: 8px;
        }
        .continue-grid {
          display: grid;
          grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
          gap: 20px;
        }
        .continue-card-large {
          border-radius: 14px;
          overflow: hidden;
          cursor: pointer;
          transition: transform 0.2s ease, border-color 0.2s ease;
        }
        .continue-card-large:hover {
          transform: translateY(-4px);
          border-color: rgba(59, 130, 246, 0.4);
        }
        .continue-thumb-wrap {
          position: relative;
          width: 100%;
          aspect-ratio: 16 / 9;
          background: #000;
        }
        .continue-thumb-img {
          width: 100%;
          height: 100%;
          object-fit: cover;
        }
        .continue-hover-play {
          position: absolute;
          inset: 0;
          background: rgba(0, 0, 0, 0.45);
          display: flex;
          align-items: center;
          justify-content: center;
          opacity: 0;
          transition: opacity 0.2s ease;
        }
        .continue-card-large:hover .continue-hover-play {
          opacity: 1;
        }
        .play-pill {
          display: inline-flex;
          align-items: center;
          gap: 8px;
          background: var(--gradient-brand);
          color: #fff;
          font-size: 0.88rem;
          font-weight: 600;
          padding: 8px 18px;
          border-radius: 999px;
        }
        .continue-details {
          padding: 16px;
        }
        .continue-title-lg {
          font-size: 1.05rem;
          font-weight: 700;
          color: #fff;
          margin-bottom: 4px;
        }
        .continue-ep-info {
          font-size: 0.82rem;
          color: #38bdf8;
          margin-bottom: 10px;
        }
        .continue-stats {
          display: flex;
          justify-content: space-between;
          font-size: 0.78rem;
          color: #64748b;
          font-weight: 500;
        }
        .watchlist-grid {
          display: grid;
          grid-template-columns: repeat(auto-fill, minmax(190px, 1fr));
          gap: 24px;
        }
        .history-items {
          display: flex;
          flex-direction: column;
          gap: 12px;
          max-width: 800px;
        }
        .history-row {
          display: flex;
          align-items: center;
          gap: 16px;
          padding: 12px 18px;
          border-radius: 12px;
          cursor: pointer;
        }
        .history-poster {
          width: 50px;
          height: 70px;
          object-fit: cover;
          border-radius: 6px;
        }
        .history-info {
          flex: 1;
        }
        .history-title {
          font-size: 1rem;
          font-weight: 600;
          color: #fff;
        }
        .history-time {
          font-size: 0.8rem;
          color: #64748b;
          margin-top: 4px;
        }
        .library-loading {
          padding: 100px;
          display: flex;
          flex-direction: column;
          align-items: center;
          gap: 16px;
          color: #94a3b8;
        }
      `}</style>
    </div>
  );
}


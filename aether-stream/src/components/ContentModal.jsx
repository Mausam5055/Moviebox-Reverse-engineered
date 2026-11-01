import React, { useState, useEffect } from 'react';
import { 
  X, 
  Play, 
  Plus, 
  Check, 
  Star, 
  Calendar, 
  Clock, 
  Film, 
  Layers, 
  Users, 
  Info,
  Tv
} from 'lucide-react';

export default function ContentModal({ 
  contentId, 
  onClose, 
  onPlay, 
  watchlistIds = [], 
  onToggleWatchlist 
}) {
  const [content, setContent] = useState(null);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('overview'); // 'overview' | 'episodes' | 'related'
  const [selectedSeason, setSelectedSeason] = useState(1);

  useEffect(() => {
    if (!contentId) return;
    setLoading(true);
    fetch(`/api/catalog/${contentId}`)
      .then(res => res.json())
      .then(data => {
        setContent(data);
        if (data.type === 'series' && data.seasons && data.seasons.length > 0) {
          setActiveTab('episodes');
          setSelectedSeason(data.seasons[0].seasonNumber);
        } else {
          setActiveTab('overview');
        }
        setLoading(false);
      })
      .catch(err => {
        console.error('Failed to load content details:', err);
        setLoading(false);
      });
  }, [contentId]);

  // Handle ESC key to close
  useEffect(() => {
    const handleKeyDown = (e) => {
      if (e.key === 'Escape') onClose();
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [onClose]);

  if (!contentId) return null;

  const isInWatchlist = content && watchlistIds.includes(content.id);

  return (
    <div className="modal-backdrop-overlay" onClick={onClose}>
      <div className="content-modal-box glass-panel" onClick={(e) => e.stopPropagation()}>
        <button className="modal-close-btn" onClick={onClose} title="Close">
          <X size={20} />
        </button>

        {loading || !content ? (
          <div className="modal-loading-skeleton">
            <div className="loading-spinner animate-spin" />
            <p>Loading metadata...</p>
          </div>
        ) : (
          <>
            {/* Modal Hero Banner */}
            <div 
              className="modal-banner" 
              style={{ backgroundImage: `url(${content.backdrop || content.poster})` }}
            >
              <div className="modal-banner-gradient" />
              <div className="modal-banner-content">
                <div className="modal-tags">
                  <span className="badge-quality">{content.quality}</span>
                  <span className="badge-genre">{content.type.toUpperCase()}</span>
                  <div className="badge-rating">
                    <Star size={14} fill="#fbbf24" stroke="none" />
                    <span>{content.rating}</span>
                  </div>
                  <span className="modal-year">{content.releaseYear}</span>
                  <span className="modal-duration">{content.duration}</span>
                </div>

                <h1 className="modal-title">{content.title}</h1>

                <div className="modal-actions">
                  <button 
                    className="btn-primary modal-play-btn"
                    onClick={() => {
                      if (content.type === 'series' && content.seasons?.[0]?.episodes?.[0]) {
                        onPlay(content, content.seasons[0].episodes[0]);
                      } else {
                        onPlay(content);
                      }
                      onClose();
                    }}
                  >
                    <Play size={18} fill="white" />
                    <span>{content.type === 'series' ? 'Play S1:E1' : 'Play Now'}</span>
                  </button>

                  <button 
                    className={`btn-secondary ${isInWatchlist ? 'active' : ''}`}
                    onClick={() => onToggleWatchlist(content.id)}
                  >
                    {isInWatchlist ? <Check size={18} /> : <Plus size={18} />}
                    <span>{isInWatchlist ? 'In Watchlist' : 'Add to Watchlist'}</span>
                  </button>
                </div>
              </div>
            </div>

            {/* Modal Body & Navigation Tabs */}
            <div className="modal-body">
              <div className="modal-tabs-header">
                {content.type === 'series' && content.seasons && (
                  <button 
                    className={`modal-tab-btn ${activeTab === 'episodes' ? 'active' : ''}`}
                    onClick={() => setActiveTab('episodes')}
                  >
                    <Tv size={16} />
                    <span>Episodes ({content.totalEpisodes || content.seasons.reduce((acc, s) => acc + s.episodes.length, 0)})</span>
                  </button>
                )}

                <button 
                  className={`modal-tab-btn ${activeTab === 'overview' ? 'active' : ''}`}
                  onClick={() => setActiveTab('overview')}
                >
                  <Info size={16} />
                  <span>Overview & Details</span>
                </button>

                {content.related && content.related.length > 0 && (
                  <button 
                    className={`modal-tab-btn ${activeTab === 'related' ? 'active' : ''}`}
                    onClick={() => setActiveTab('related')}
                  >
                    <Layers size={16} />
                    <span>More Like This</span>
                  </button>
                )}
              </div>

              {/* Tab 1: Episodes (for Series) */}
              {activeTab === 'episodes' && content.seasons && (
                <div className="episodes-tab-content animate-fade-in">
                  {/* Season Selector */}
                  <div className="season-selector-row">
                    {content.seasons.map((season) => (
                      <button
                        key={season.seasonNumber}
                        className={`season-pill ${selectedSeason === season.seasonNumber ? 'active' : ''}`}
                        onClick={() => setSelectedSeason(season.seasonNumber)}
                      >
                        Season {season.seasonNumber} ({season.episodes.length} Episodes)
                      </button>
                    ))}
                  </div>

                  {/* Episode List */}
                  <div className="episodes-list">
                    {content.seasons
                      .find(s => s.seasonNumber === selectedSeason)
                      ?.episodes.map((ep) => (
                        <div 
                          key={ep.episodeNumber} 
                          className="episode-item glass-panel"
                          onClick={() => {
                            onPlay(content, ep);
                            onClose();
                          }}
                        >
                          <div className="ep-num-col">
                            <span className="ep-num">{ep.episodeNumber}</span>
                          </div>
                          <div className="ep-thumb-col">
                            <img src={ep.thumbnail || content.backdrop} alt={ep.title} className="ep-thumb" />
                            <div className="ep-play-circle">
                              <Play size={16} fill="white" />
                            </div>
                          </div>
                          <div className="ep-details-col">
                            <div className="ep-title-row">
                              <h4 className="ep-title">{ep.title}</h4>
                              <span className="ep-duration">{ep.duration}</span>
                            </div>
                            <p className="ep-synopsis">{ep.synopsis}</p>
                          </div>
                        </div>
                      ))}
                  </div>
                </div>
              )}

              {/* Tab 2: Overview & Cast */}
              {activeTab === 'overview' && (
                <div className="overview-tab-content animate-fade-in">
                  <div className="overview-grid">
                    <div className="overview-main">
                      <h3 className="section-heading">Storyline</h3>
                      <p className="overview-synopsis-full">{content.synopsis}</p>

                      <div className="meta-info-grid">
                        <div className="meta-info-item">
                          <span className="meta-label">Genres</span>
                          <span className="meta-val">{content.genres.join(', ')}</span>
                        </div>
                        <div className="meta-info-item">
                          <span className="meta-label">Director</span>
                          <span className="meta-val">{content.director || 'Studio Production'}</span>
                        </div>
                        <div className="meta-info-item">
                          <span className="meta-label">Audio & Subtitles</span>
                          <span className="meta-val">English, Spanish, French (Dolby 5.1)</span>
                        </div>
                        <div className="meta-info-item">
                          <span className="meta-label">Maturity Rating</span>
                          <span className="meta-val">TV-MA / PG-13 (VFX Violence, Action)</span>
                        </div>
                      </div>
                    </div>

                    {/* Cast List */}
                    {content.cast && content.cast.length > 0 && (
                      <div className="overview-cast">
                        <h3 className="section-heading">Featured Cast</h3>
                        <div className="cast-grid">
                          {content.cast.map((actor, idx) => (
                            <div key={idx} className="cast-card">
                              <img src={actor.avatar} alt={actor.name} className="cast-avatar" />
                              <div className="cast-info">
                                <div className="cast-name">{actor.name}</div>
                                <div className="cast-role">{actor.role}</div>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              )}

              {/* Tab 3: Related Content */}
              {activeTab === 'related' && content.related && (
                <div className="related-tab-content animate-fade-in">
                  <div className="related-grid">
                    {content.related.map((rel) => (
                      <div 
                        key={rel.id} 
                        className="related-card"
                        onClick={() => {
                          setContent(null);
                          setLoading(true);
                          fetch(`/api/catalog/${rel.id}`)
                            .then(r => r.json())
                            .then(d => {
                              setContent(d);
                              setLoading(false);
                            });
                        }}
                      >
                        <img src={rel.poster} alt={rel.title} className="related-poster" />
                        <div className="related-title">{rel.title}</div>
                        <div className="related-meta">
                          <span>{rel.releaseYear}</span>
                          <span className="badge-rating"><Star size={11} fill="#fbbf24" stroke="none" /> {rel.rating}</span>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </div>
          </>
        )}
      </div>

      <style>{`
        .modal-backdrop-overlay {
          position: fixed;
          inset: 0;
          background: rgba(0, 0, 0, 0.85);
          backdrop-filter: blur(12px);
          -webkit-backdrop-filter: blur(12px);
          z-index: 2000;
          display: flex;
          align-items: center;
          justify-content: center;
          padding: 24px;
          animation: fadeIn 0.25s ease;
        }
        .content-modal-box {
          position: relative;
          width: 100%;
          max-width: 960px;
          max-height: 92vh;
          overflow-y: auto;
          background: #0d111a;
          border-radius: 20px;
          border: 1px solid rgba(255, 255, 255, 0.12);
          box-shadow: 0 24px 60px rgba(0, 0, 0, 0.9);
        }
        .modal-close-btn {
          position: absolute;
          top: 16px;
          right: 16px;
          width: 38px;
          height: 38px;
          border-radius: 50%;
          background: rgba(0, 0, 0, 0.6);
          border: 1px solid rgba(255, 255, 255, 0.15);
          color: #fff;
          display: flex;
          align-items: center;
          justify-content: center;
          z-index: 10;
          transition: all 0.2s ease;
        }
        .modal-close-btn:hover {
          background: rgba(255, 255, 255, 0.2);
          transform: scale(1.1);
        }
        .modal-loading-skeleton {
          padding: 100px;
          display: flex;
          flex-direction: column;
          align-items: center;
          gap: 16px;
          color: #94a3b8;
        }
        .loading-spinner {
          width: 36px;
          height: 36px;
          border: 3px solid rgba(59, 130, 246, 0.2);
          border-top-color: #3b82f6;
          border-radius: 50%;
        }
        .modal-banner {
          position: relative;
          height: 380px;
          background-size: cover;
          background-position: center 25%;
          display: flex;
          align-items: flex-end;
          padding: 32px;
        }
        .modal-banner-gradient {
          position: absolute;
          inset: 0;
          background: linear-gradient(180deg, rgba(13, 17, 26, 0.2) 0%, rgba(13, 17, 26, 0.7) 60%, #0d111a 100%);
        }
        .modal-banner-content {
          position: relative;
          z-index: 2;
          max-width: 650px;
        }
        .modal-tags {
          display: flex;
          align-items: center;
          gap: 10px;
          margin-bottom: 10px;
          font-size: 0.85rem;
          color: #94a3b8;
        }
        .modal-title {
          font-family: 'Outfit', sans-serif;
          font-size: 2.5rem;
          font-weight: 800;
          line-height: 1.15;
          margin-bottom: 18px;
          text-shadow: 0 4px 16px rgba(0, 0, 0, 0.7);
        }
        .modal-actions {
          display: flex;
          gap: 12px;
        }
        .modal-play-btn {
          padding: 12px 26px;
          font-size: 1rem;
        }
        .modal-body {
          padding: 24px 32px 36px;
        }
        .modal-tabs-header {
          display: flex;
          gap: 12px;
          border-bottom: 1px solid rgba(255, 255, 255, 0.08);
          padding-bottom: 14px;
          margin-bottom: 24px;
        }
        .modal-tab-btn {
          display: flex;
          align-items: center;
          gap: 8px;
          padding: 8px 16px;
          border-radius: 8px;
          color: #94a3b8;
          font-size: 0.9rem;
          font-weight: 600;
          transition: all 0.2s ease;
        }
        .modal-tab-btn:hover {
          color: #fff;
          background: rgba(255, 255, 255, 0.05);
        }
        .modal-tab-btn.active {
          color: #fff;
          background: rgba(59, 130, 246, 0.15);
          border: 1px solid rgba(59, 130, 246, 0.3);
        }

        /* Episodes */
        .season-selector-row {
          display: flex;
          gap: 10px;
          margin-bottom: 20px;
        }
        .season-pill {
          padding: 6px 14px;
          border-radius: 999px;
          background: rgba(255, 255, 255, 0.06);
          border: 1px solid rgba(255, 255, 255, 0.1);
          color: #94a3b8;
          font-size: 0.82rem;
          font-weight: 600;
          transition: all 0.2s ease;
        }
        .season-pill.active {
          background: #3b82f6;
          border-color: #3b82f6;
          color: #fff;
        }
        .episodes-list {
          display: flex;
          flex-direction: column;
          gap: 12px;
        }
        .episode-item {
          display: flex;
          align-items: center;
          gap: 16px;
          padding: 12px;
          border-radius: 12px;
          cursor: pointer;
          transition: all 0.2s ease;
        }
        .episode-item:hover {
          background: rgba(255, 255, 255, 0.06);
          border-color: rgba(59, 130, 246, 0.4);
        }
        .ep-num-col {
          width: 32px;
          text-align: center;
          font-size: 1.2rem;
          font-weight: 700;
          color: #64748b;
        }
        .ep-thumb-col {
          position: relative;
          width: 140px;
          aspect-ratio: 16 / 9;
          border-radius: 8px;
          overflow: hidden;
          background: #000;
          flex-shrink: 0;
        }
        .ep-thumb {
          width: 100%;
          height: 100%;
          object-fit: cover;
        }
        .ep-play-circle {
          position: absolute;
          inset: 0;
          background: rgba(0, 0, 0, 0.4);
          display: flex;
          align-items: center;
          justify-content: center;
          opacity: 0;
          transition: opacity 0.2s ease;
        }
        .episode-item:hover .ep-play-circle {
          opacity: 1;
        }
        .ep-details-col {
          flex: 1;
        }
        .ep-title-row {
          display: flex;
          justify-content: space-between;
          align-items: center;
          margin-bottom: 6px;
        }
        .ep-title {
          font-size: 0.98rem;
          font-weight: 600;
          color: #fff;
        }
        .ep-duration {
          font-size: 0.8rem;
          color: #94a3b8;
        }
        .ep-synopsis {
          font-size: 0.84rem;
          color: #94a3b8;
          line-height: 1.4;
          display: -webkit-box;
          -webkit-line-clamp: 2;
          -webkit-box-orient: vertical;
          overflow: hidden;
        }

        /* Overview Tab */
        .section-heading {
          font-size: 1.1rem;
          font-weight: 700;
          margin-bottom: 10px;
          color: #f1f5f9;
        }
        .overview-synopsis-full {
          font-size: 0.95rem;
          line-height: 1.6;
          color: #cbd5e1;
          margin-bottom: 24px;
        }
        .meta-info-grid {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
          gap: 16px;
          padding: 16px;
          background: rgba(255, 255, 255, 0.03);
          border-radius: 12px;
          margin-bottom: 28px;
        }
        .meta-label {
          display: block;
          font-size: 0.75rem;
          color: #64748b;
          text-transform: uppercase;
          font-weight: 600;
          margin-bottom: 4px;
        }
        .meta-val {
          font-size: 0.88rem;
          color: #e2e8f0;
          font-weight: 500;
        }
        .cast-grid {
          display: grid;
          grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
          gap: 14px;
        }
        .cast-card {
          display: flex;
          align-items: center;
          gap: 12px;
          padding: 8px;
          border-radius: 10px;
          background: rgba(255, 255, 255, 0.02);
        }
        .cast-avatar {
          width: 44px;
          height: 44px;
          border-radius: 50%;
          object-fit: cover;
        }
        .cast-name {
          font-size: 0.88rem;
          font-weight: 600;
          color: #fff;
        }
        .cast-role {
          font-size: 0.76rem;
          color: #94a3b8;
        }

        /* Related Tab */
        .related-grid {
          display: grid;
          grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
          gap: 16px;
        }
        .related-card {
          cursor: pointer;
          transition: transform 0.2s ease;
        }
        .related-card:hover {
          transform: translateY(-4px);
        }
        .related-poster {
          width: 100%;
          aspect-ratio: 2 / 3;
          border-radius: 10px;
          object-fit: cover;
          margin-bottom: 8px;
        }
        .related-title {
          font-size: 0.88rem;
          font-weight: 600;
          color: #fff;
        }
        .related-meta {
          display: flex;
          justify-content: space-between;
          font-size: 0.75rem;
          color: #64748b;
          margin-top: 2px;
        }

        @media (max-width: 768px) {
          .modal-banner {
            height: 280px;
            padding: 20px;
          }
          .modal-title {
            font-size: 1.8rem;
          }
          .modal-body {
            padding: 16px;
          }
          .ep-thumb-col {
            width: 100px;
          }
        }
      `}</style>
    </div>
  );
}


import React, { useRef } from 'react';
import { ChevronLeft, ChevronRight, Play, Star, Plus, Check } from 'lucide-react';

export default function ContentRow({ 
  title, 
  subtitle, 
  items = [], 
  onPlay, 
  onOpenDetails, 
  watchlistIds = [], 
  onToggleWatchlist,
  isContinueWatching = false 
}) {
  const rowRef = useRef(null);

  const scroll = (direction) => {
    if (rowRef.current) {
      const { scrollLeft, clientWidth } = rowRef.current;
      const scrollAmount = clientWidth * 0.75;
      rowRef.current.scrollTo({
        left: direction === 'left' ? scrollLeft - scrollAmount : scrollLeft + scrollAmount,
        behavior: 'smooth'
      });
    }
  };

  if (!items || items.length === 0) return null;

  return (
    <section className="content-row-section">
      <div className="row-header">
        <div className="row-title-box">
          <h2 className="row-title">{title}</h2>
          {subtitle && <p className="row-subtitle">{subtitle}</p>}
        </div>
        <div className="row-arrows">
          <button 
            className="arrow-btn" 
            onClick={() => scroll('left')}
            aria-label="Scroll Left"
          >
            <ChevronLeft size={20} />
          </button>
          <button 
            className="arrow-btn" 
            onClick={() => scroll('right')}
            aria-label="Scroll Right"
          >
            <ChevronRight size={20} />
          </button>
        </div>
      </div>

      <div className="row-scroll-container" ref={rowRef}>
        {items.map((item) => {
          const isInWatchlist = watchlistIds.includes(item.id || item.contentId);
          
          if (isContinueWatching) {
            // Horizontal card for Continue Watching with progress bar
            return (
              <div 
                key={item.contentId} 
                className="continue-card glass-panel"
                onClick={() => onPlay(item)}
              >
                <div className="continue-thumb-box">
                  <img src={item.backdrop || item.poster} alt={item.title} className="continue-thumb" />
                  <div className="continue-play-hover">
                    <div className="play-circle">
                      <Play size={18} fill="white" />
                    </div>
                  </div>
                  <div className="progress-bar-bg">
                    <div 
                      className="progress-bar-fill" 
                      style={{ width: `${item.percent || 20}%` }}
                    />
                  </div>
                </div>
                <div className="continue-info">
                  <h4 className="continue-title">{item.title}</h4>
                  <div className="continue-meta">
                    {item.episodeInfo ? (
                      <span className="episode-tag">
                        S{item.episodeInfo.season} E{item.episodeInfo.episode}: {item.episodeInfo.title}
                      </span>
                    ) : (
                      <span>{Math.round((item.totalSeconds - item.progressSeconds) / 60)}m remaining</span>
                    )}
                    <span className="percent-text">{item.percent}%</span>
                  </div>
                </div>
              </div>
            );
          }

          // Standard Cinematic Poster Card
          return (
            <div 
              key={item.id} 
              className="media-card"
              onClick={() => onOpenDetails(item.id)}
            >
              <div className="media-poster-box">
                <img src={item.poster} alt={item.title} className="media-poster" loading="lazy" />
                <div className="card-top-badges">
                  <span className="badge-quality">{item.quality}</span>
                  {item.featured && <span className="featured-tag">HOT</span>}
                </div>

                {/* Hover Quick Action Layer */}
                <div className="card-hover-overlay">
                  <button 
                    className="quick-play-btn"
                    onClick={(e) => {
                      e.stopPropagation();
                      onPlay(item);
                    }}
                    title="Play Now"
                  >
                    <Play size={20} fill="white" />
                  </button>

                  <button 
                    className={`quick-watchlist-btn ${isInWatchlist ? 'active' : ''}`}
                    onClick={(e) => {
                      e.stopPropagation();
                      onToggleWatchlist(item.id);
                    }}
                    title={isInWatchlist ? "Remove from Watchlist" : "Add to Watchlist"}
                  >
                    {isInWatchlist ? <Check size={16} /> : <Plus size={16} />}
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
                  <span className="media-year">{item.releaseYear}</span>
                  <span className="media-type">{item.type === 'series' ? 'TV' : 'MOVIE'}</span>
                </div>
              </div>
            </div>
          );
        })}
      </div>

      <style>{`
        .content-row-section {
          padding: 24px 48px;
          margin-bottom: 20px;
        }
        .row-header {
          display: flex;
          align-items: flex-end;
          justify-content: space-between;
          margin-bottom: 16px;
        }
        .row-title {
          font-family: 'Outfit', sans-serif;
          font-size: 1.45rem;
          font-weight: 700;
          color: #f8fafc;
        }
        .row-subtitle {
          font-size: 0.85rem;
          color: #64748b;
          margin-top: 2px;
        }
        .row-arrows {
          display: flex;
          gap: 8px;
        }
        .arrow-btn {
          width: 32px;
          height: 32px;
          border-radius: 8px;
          background: rgba(255, 255, 255, 0.06);
          border: 1px solid rgba(255, 255, 255, 0.1);
          color: #94a3b8;
          display: flex;
          align-items: center;
          justify-content: center;
          transition: all 0.2s ease;
        }
        .arrow-btn:hover {
          background: rgba(255, 255, 255, 0.15);
          color: #fff;
        }
        .row-scroll-container {
          display: flex;
          gap: 18px;
          overflow-x: auto;
          scroll-behavior: smooth;
          padding: 8px 4px 16px;
          margin: 0 -4px;
        }
        .row-scroll-container::-webkit-scrollbar {
          height: 4px;
        }
        .row-scroll-container::-webkit-scrollbar-thumb {
          background: rgba(255, 255, 255, 0.1);
          border-radius: 4px;
        }

        /* Standard Poster Card */
        .media-card {
          flex: 0 0 190px;
          cursor: pointer;
          transition: transform 0.25s cubic-bezier(0.16, 1, 0.3, 1);
        }
        .media-card:hover {
          transform: translateY(-6px);
        }
        .media-poster-box {
          position: relative;
          width: 100%;
          aspect-ratio: 2 / 3;
          border-radius: 12px;
          overflow: hidden;
          background: #151b28;
          box-shadow: 0 4px 16px rgba(0, 0, 0, 0.5);
        }
        .media-poster {
          width: 100%;
          height: 100%;
          object-fit: cover;
          transition: transform 0.4s ease;
        }
        .media-card:hover .media-poster {
          transform: scale(1.05);
        }
        .card-top-badges {
          position: absolute;
          top: 8px;
          left: 8px;
          display: flex;
          gap: 6px;
          z-index: 2;
        }
        .featured-tag {
          font-size: 0.65rem;
          font-weight: 800;
          padding: 2px 6px;
          border-radius: 4px;
          background: #ef4444;
          color: #fff;
          letter-spacing: 0.05em;
        }
        .card-hover-overlay {
          position: absolute;
          inset: 0;
          background: linear-gradient(180deg, transparent 40%, rgba(7, 9, 14, 0.95) 100%);
          display: flex;
          align-items: center;
          justify-content: center;
          gap: 12px;
          opacity: 0;
          transition: opacity 0.25s ease;
          z-index: 3;
        }
        .media-card:hover .card-hover-overlay {
          opacity: 1;
        }
        .quick-play-btn {
          width: 44px;
          height: 44px;
          border-radius: 50%;
          background: var(--gradient-brand);
          color: #fff;
          display: flex;
          align-items: center;
          justify-content: center;
          box-shadow: 0 4px 15px rgba(59, 130, 246, 0.5);
          transition: transform 0.2s ease;
        }
        .quick-play-btn:hover {
          transform: scale(1.12);
        }
        .quick-watchlist-btn {
          width: 36px;
          height: 36px;
          border-radius: 50%;
          background: rgba(255, 255, 255, 0.15);
          backdrop-filter: blur(8px);
          border: 1px solid rgba(255, 255, 255, 0.2);
          color: #fff;
          display: flex;
          align-items: center;
          justify-content: center;
          transition: all 0.2s ease;
        }
        .quick-watchlist-btn:hover {
          background: rgba(255, 255, 255, 0.3);
          transform: scale(1.1);
        }
        .quick-watchlist-btn.active {
          background: rgba(16, 185, 129, 0.3);
          border-color: #10b981;
          color: #10b981;
        }
        .media-info {
          margin-top: 10px;
        }
        .media-title {
          font-size: 0.92rem;
          font-weight: 600;
          color: #f1f5f9;
          white-space: nowrap;
          overflow: hidden;
          text-overflow: ellipsis;
        }
        .media-meta {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin-top: 4px;
          font-size: 0.78rem;
          color: #64748b;
        }
        .media-year {
          font-weight: 500;
        }
        .media-type {
          font-size: 0.68rem;
          background: rgba(255, 255, 255, 0.08);
          padding: 1px 5px;
          border-radius: 4px;
        }

        /* Continue Watching Card */
        .continue-card {
          flex: 0 0 280px;
          border-radius: 12px;
          overflow: hidden;
          cursor: pointer;
          transition: transform 0.2s ease, border-color 0.2s ease;
        }
        .continue-card:hover {
          transform: translateY(-4px);
          border-color: rgba(59, 130, 246, 0.4);
        }
        .continue-thumb-box {
          position: relative;
          width: 100%;
          aspect-ratio: 16 / 9;
          background: #000;
        }
        .continue-thumb {
          width: 100%;
          height: 100%;
          object-fit: cover;
        }
        .continue-play-hover {
          position: absolute;
          inset: 0;
          background: rgba(0, 0, 0, 0.4);
          display: flex;
          align-items: center;
          justify-content: center;
          opacity: 0;
          transition: opacity 0.2s ease;
        }
        .continue-card:hover .continue-play-hover {
          opacity: 1;
        }
        .play-circle {
          width: 40px;
          height: 40px;
          border-radius: 50%;
          background: rgba(59, 130, 246, 0.85);
          display: flex;
          align-items: center;
          justify-content: center;
          box-shadow: 0 0 15px rgba(59, 130, 246, 0.6);
        }
        .progress-bar-bg {
          position: absolute;
          bottom: 0;
          left: 0;
          right: 0;
          height: 4px;
          background: rgba(255, 255, 255, 0.2);
        }
        .progress-bar-fill {
          height: 100%;
          background: #3b82f6;
          box-shadow: 0 0 8px #3b82f6;
        }
        .continue-info {
          padding: 12px;
        }
        .continue-title {
          font-size: 0.92rem;
          font-weight: 600;
          color: #fff;
          white-space: nowrap;
          overflow: hidden;
          text-overflow: ellipsis;
        }
        .continue-meta {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin-top: 4px;
          font-size: 0.75rem;
          color: #94a3b8;
        }
        .episode-tag {
          color: #38bdf8;
          font-weight: 500;
        }
        .percent-text {
          font-weight: 600;
          color: #64748b;
        }

        @media (max-width: 768px) {
          .content-row-section {
            padding: 16px 20px;
          }
          .media-card {
            flex: 0 0 145px;
          }
          .continue-card {
            flex: 0 0 230px;
          }
        }
      `}</style>
    </section>
  );
}


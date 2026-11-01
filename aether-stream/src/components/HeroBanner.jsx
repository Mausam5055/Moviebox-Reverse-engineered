import React, { useState, useEffect } from 'react';
import { Play, Plus, Check, Info, Star, Sparkles, Volume2, VolumeX } from 'lucide-react';

export default function HeroBanner({ 
  featuredItems = [], 
  onPlay, 
  onOpenDetails, 
  watchlistIds = [], 
  onToggleWatchlist 
}) {
  const [currentIndex, setCurrentIndex] = useState(0);

  // Auto-rotate featured banners every 8 seconds if not interacted
  useEffect(() => {
    if (featuredItems.length <= 1) return;
    const interval = setInterval(() => {
      setCurrentIndex((prev) => (prev + 1) % featuredItems.length);
    }, 8000);
    return () => clearInterval(interval);
  }, [featuredItems.length]);

  if (!featuredItems || featuredItems.length === 0) {
    return null;
  }

  const current = featuredItems[currentIndex] || featuredItems[0];
  const isInWatchlist = watchlistIds.includes(current.id);

  return (
    <div className="hero-banner-container">
      {/* Background Image with Cinematic Gradients */}
      <div 
        className="hero-backdrop"
        style={{ backgroundImage: `url(${current.backdrop})` }}
      >
        <div className="hero-overlay-horizontal" />
        <div className="hero-overlay-vertical" />
        <div className="hero-noise-texture" />
      </div>

      {/* Hero Content */}
      <div className="hero-content">
        <div className="hero-meta-row">
          <div className="featured-pill">
            <Sparkles size={13} className="text-cyan" />
            <span>FEATURED SPOTLIGHT</span>
          </div>
          <span className="badge-quality">{current.quality}</span>
          <span className="badge-audio">DOLBY ATMOS</span>
          <div className="badge-rating">
            <Star size={14} fill="#fbbf24" stroke="none" />
            <span>{current.rating}</span>
          </div>
          <span className="hero-year">{current.releaseYear}</span>
          <span className="hero-duration">{current.duration}</span>
        </div>

        <h1 className="hero-title">{current.title}</h1>

        <p className="hero-synopsis">{current.synopsis}</p>

        {/* Genres */}
        <div className="hero-genres">
          {current.genres.map((g) => (
            <span key={g} className="badge-genre">{g}</span>
          ))}
        </div>

        {/* Primary Action CTAs */}
        <div className="hero-actions">
          <button 
            className="btn-primary hero-btn-play"
            onClick={() => onPlay(current)}
          >
            <Play size={18} fill="white" />
            <span>Watch Now</span>
          </button>

          <button 
            className={`btn-secondary ${isInWatchlist ? 'in-watchlist' : ''}`}
            onClick={() => onToggleWatchlist(current.id)}
          >
            {isInWatchlist ? <Check size={18} /> : <Plus size={18} />}
            <span>{isInWatchlist ? 'In Watchlist' : 'Watchlist'}</span>
          </button>

          <button 
            className="btn-icon hero-info-btn"
            title="More Information"
            onClick={() => onOpenDetails(current.id)}
          >
            <Info size={18} />
          </button>
        </div>
      </div>

      {/* Slide Indicators */}
      {featuredItems.length > 1 && (
        <div className="hero-indicators">
          {featuredItems.map((item, idx) => (
            <button
              key={item.id}
              className={`indicator-dot ${idx === currentIndex ? 'active' : ''}`}
              onClick={() => setCurrentIndex(idx)}
              aria-label={`Slide ${idx + 1}`}
            />
          ))}
        </div>
      )}

      <style>{`
        .hero-banner-container {
          position: relative;
          min-height: 82vh;
          display: flex;
          align-items: center;
          padding: 120px 48px 60px;
          overflow: hidden;
        }
        .hero-backdrop {
          position: absolute;
          inset: 0;
          background-size: cover;
          background-position: center 25%;
          filter: brightness(0.85);
          transition: background-image 0.8s ease-in-out;
          z-index: 1;
        }
        .hero-overlay-horizontal {
          position: absolute;
          inset: 0;
          background: linear-gradient(90deg, #07090e 0%, rgba(7, 9, 14, 0.85) 35%, rgba(7, 9, 14, 0.2) 75%, transparent 100%);
        }
        .hero-overlay-vertical {
          position: absolute;
          inset: 0;
          background: linear-gradient(180deg, rgba(7, 9, 14, 0.2) 0%, rgba(7, 9, 14, 0.5) 60%, #07090e 100%);
        }
        .hero-content {
          position: relative;
          z-index: 2;
          max-width: 680px;
          display: flex;
          flex-direction: column;
          gap: 18px;
          animation: fadeIn 0.6s ease;
        }
        .hero-meta-row {
          display: flex;
          align-items: center;
          gap: 12px;
          flex-wrap: wrap;
        }
        .featured-pill {
          display: inline-flex;
          align-items: center;
          gap: 6px;
          font-size: 0.72rem;
          font-weight: 700;
          letter-spacing: 0.08em;
          color: #06b6d4;
          background: rgba(6, 182, 212, 0.12);
          border: 1px solid rgba(6, 182, 212, 0.3);
          padding: 3px 10px;
          border-radius: 999px;
        }
        .badge-audio {
          font-size: 0.7rem;
          font-weight: 700;
          padding: 2px 6px;
          border-radius: 4px;
          background: rgba(255, 255, 255, 0.1);
          color: #e2e8f0;
          letter-spacing: 0.04em;
        }
        .hero-year, .hero-duration {
          font-size: 0.85rem;
          color: #94a3b8;
          font-weight: 500;
        }
        .hero-title {
          font-family: 'Outfit', sans-serif;
          font-size: 3.2rem;
          font-weight: 800;
          line-height: 1.1;
          color: #ffffff;
          text-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
        }
        .hero-synopsis {
          font-size: 1.05rem;
          line-height: 1.6;
          color: #cbd5e1;
          display: -webkit-box;
          -webkit-line-clamp: 3;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-shadow: 0 2px 10px rgba(0, 0, 0, 0.7);
        }
        .hero-genres {
          display: flex;
          gap: 8px;
          flex-wrap: wrap;
        }
        .hero-actions {
          display: flex;
          align-items: center;
          gap: 14px;
          margin-top: 10px;
        }
        .hero-btn-play {
          padding: 12px 28px;
          font-size: 1.05rem;
        }
        .btn-secondary.in-watchlist {
          background: rgba(16, 185, 129, 0.15);
          border-color: rgba(16, 185, 129, 0.4);
          color: #10b981;
        }
        .hero-indicators {
          position: absolute;
          bottom: 24px;
          right: 48px;
          z-index: 3;
          display: flex;
          gap: 8px;
        }
        .indicator-dot {
          width: 32px;
          height: 4px;
          border-radius: 2px;
          background: rgba(255, 255, 255, 0.25);
          transition: all 0.3s ease;
        }
        .indicator-dot.active {
          background: #3b82f6;
          width: 48px;
          box-shadow: 0 0 10px rgba(59, 130, 246, 0.6);
        }
        @media (max-width: 768px) {
          .hero-banner-container {
            padding: 100px 20px 40px;
            min-height: 70vh;
          }
          .hero-title {
            font-size: 2.2rem;
          }
          .hero-synopsis {
            font-size: 0.92rem;
            -webkit-line-clamp: 2;
          }
          .hero-indicators {
            right: 20px;
            bottom: 16px;
          }
        }
      `}</style>
    </div>
  );
}


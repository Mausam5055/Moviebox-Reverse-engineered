import React, { useState, useEffect } from 'react';
import { Filter, Star, Play, Plus, Check, Search, ArrowUpDown } from 'lucide-react';

export default function ExploreView({ 
  onPlay, 
  onOpenDetails, 
  watchlistIds = [], 
  onToggleWatchlist,
  initialType = 'all'
}) {
  const [items, setItems] = useState([]);
  const [genres, setGenres] = useState([]);
  const [loading, setLoading] = useState(true);

  const [selectedType, setSelectedType] = useState(initialType);
  const [selectedGenre, setSelectedGenre] = useState('All');
  const [selectedSort, setSelectedSort] = useState('rating');
  const [searchFilter, setSearchFilter] = useState('');

  // Update type if initialType changes from parent navbar
  useEffect(() => {
    setSelectedType(initialType);
  }, [initialType]);

  useEffect(() => {
    setLoading(true);
    const params = new URLSearchParams();
    if (selectedType !== 'all') params.append('type', selectedType);
    if (selectedGenre !== 'All') params.append('genre', selectedGenre);
    if (selectedSort) params.append('sort', selectedSort);
    if (searchFilter) params.append('search', searchFilter);

    fetch(`/api/catalog?${params.toString()}`)
      .then(res => res.json())
      .then(data => {
        setItems(data.items || []);
        if (data.genres) setGenres(['All', ...data.genres]);
        setLoading(false);
      })
      .catch(err => {
        console.error('Explore load error:', err);
        setLoading(false);
      });
  }, [selectedType, selectedGenre, selectedSort, searchFilter]);

  return (
    <div className="explore-view-container animate-fade-in">
      <div className="explore-header">
        <h1 className="explore-main-title">
          {selectedType === 'movie' ? 'Cinematic Movies' : selectedType === 'series' ? 'TV Series & Dramas' : 'Explore Universe'}
        </h1>
        <p className="explore-subtitle">
          Browse our high-fidelity library of award-winning films, episodic epics, and micro-dramas.
        </p>
      </div>

      {/* Filter Toolbar */}
      <div className="filter-toolbar glass-panel">
        {/* Type Switcher */}
        <div className="type-toggle-group">
          {[
            { id: 'all', label: 'All Catalog' },
            { id: 'movie', label: 'Movies' },
            { id: 'series', label: 'Series' }
          ].map((t) => (
            <button
              key={t.id}
              className={`type-btn ${selectedType === t.id ? 'active' : ''}`}
              onClick={() => setSelectedType(t.id)}
            >
              {t.label}
            </button>
          ))}
        </div>

        {/* Search within Explore */}
        <div className="explore-search-box">
          <Search size={15} className="text-muted" />
          <input
            type="text"
            placeholder="Filter by keyword..."
            value={searchFilter}
            onChange={(e) => setSearchFilter(e.target.value)}
          />
        </div>

        {/* Sort Dropdown */}
        <div className="sort-box">
          <ArrowUpDown size={15} className="text-muted" />
          <select 
            value={selectedSort} 
            onChange={(e) => setSelectedSort(e.target.value)}
            className="sort-select"
          >
            <option value="rating">Top Rated</option>
            <option value="year">Newest Releases</option>
            <option value="title">Alphabetical (A-Z)</option>
          </select>
        </div>
      </div>

      {/* Genre Pills */}
      <div className="genres-pills-row">
        {genres.map((g) => (
          <button
            key={g}
            className={`genre-pill ${selectedGenre === g ? 'active' : ''}`}
            onClick={() => setSelectedGenre(g)}
          >
            {g}
          </button>
        ))}
      </div>

      {/* Items Results Grid */}
      {loading ? (
        <div className="explore-loading">
          <div className="loading-spinner animate-spin" />
          <p>Curating catalog...</p>
        </div>
      ) : items.length === 0 ? (
        <div className="explore-empty glass-panel">
          <h3>No matching titles found</h3>
          <p>Try resetting filters or adjusting your search term.</p>
          <button 
            className="btn-primary" 
            onClick={() => { setSelectedType('all'); setSelectedGenre('All'); setSearchFilter(''); }}
          >
            Reset Filters
          </button>
        </div>
      ) : (
        <div className="explore-grid">
          {items.map((item) => {
            const isInWatchlist = watchlistIds.includes(item.id);
            return (
              <div 
                key={item.id} 
                className="explore-card"
                onClick={() => onOpenDetails(item.id)}
              >
                <div className="explore-poster-box">
                  <img src={item.poster} alt={item.title} className="explore-poster" loading="lazy" />
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

                <div className="explore-card-info">
                  <h3 className="explore-card-title">{item.title}</h3>
                  <div className="explore-card-meta">
                    <div className="badge-rating">
                      <Star size={13} fill="#fbbf24" stroke="none" />
                      <span>{item.rating}</span>
                    </div>
                    <span>{item.releaseYear}</span>
                    <span className="badge-genre-tag">{item.genres[0]}</span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}

      <style>{`
        .explore-view-container {
          padding: 110px 48px 60px;
          max-width: 1540px;
          margin: 0 auto;
        }
        .explore-header {
          margin-bottom: 28px;
        }
        .explore-main-title {
          font-family: 'Outfit', sans-serif;
          font-size: 2.4rem;
          font-weight: 800;
          color: #fff;
        }
        .explore-subtitle {
          font-size: 0.95rem;
          color: #94a3b8;
          margin-top: 6px;
        }
        .filter-toolbar {
          display: flex;
          align-items: center;
          justify-content: space-between;
          gap: 16px;
          padding: 12px 18px;
          border-radius: 14px;
          margin-bottom: 16px;
          flex-wrap: wrap;
        }
        .type-toggle-group {
          display: flex;
          background: rgba(255, 255, 255, 0.06);
          padding: 4px;
          border-radius: 10px;
          gap: 4px;
        }
        .type-btn {
          padding: 7px 16px;
          border-radius: 7px;
          font-size: 0.85rem;
          font-weight: 600;
          color: #94a3b8;
          transition: all 0.2s ease;
        }
        .type-btn:hover {
          color: #fff;
        }
        .type-btn.active {
          background: #3b82f6;
          color: #fff;
          box-shadow: 0 2px 8px rgba(59, 130, 246, 0.4);
        }
        .explore-search-box {
          display: flex;
          align-items: center;
          gap: 8px;
          background: rgba(255, 255, 255, 0.05);
          border: 1px solid rgba(255, 255, 255, 0.1);
          padding: 8px 14px;
          border-radius: 8px;
          flex: 1;
          max-width: 320px;
        }
        .explore-search-box input {
          background: transparent;
          border: none;
          color: #fff;
          font-size: 0.85rem;
          width: 100%;
        }
        .sort-box {
          display: flex;
          align-items: center;
          gap: 8px;
          background: rgba(255, 255, 255, 0.05);
          border: 1px solid rgba(255, 255, 255, 0.1);
          padding: 8px 14px;
          border-radius: 8px;
        }
        .sort-select {
          background: transparent;
          border: none;
          color: #f1f5f9;
          font-size: 0.85rem;
          cursor: pointer;
        }
        .sort-select option {
          background: #111622;
          color: #fff;
        }
        .genres-pills-row {
          display: flex;
          gap: 10px;
          overflow-x: auto;
          padding-bottom: 8px;
          margin-bottom: 28px;
        }
        .genre-pill {
          padding: 6px 14px;
          border-radius: 999px;
          background: rgba(255, 255, 255, 0.04);
          border: 1px solid rgba(255, 255, 255, 0.08);
          color: #94a3b8;
          font-size: 0.82rem;
          font-weight: 500;
          white-space: nowrap;
          transition: all 0.2s ease;
        }
        .genre-pill:hover {
          color: #fff;
          background: rgba(255, 255, 255, 0.1);
        }
        .genre-pill.active {
          background: rgba(59, 130, 246, 0.2);
          border-color: #3b82f6;
          color: #60a5fa;
          font-weight: 600;
        }
        .explore-grid {
          display: grid;
          grid-template-columns: repeat(auto-fill, minmax(190px, 1fr));
          gap: 24px;
        }
        .explore-card {
          cursor: pointer;
          transition: transform 0.25s cubic-bezier(0.16, 1, 0.3, 1);
        }
        .explore-card:hover {
          transform: translateY(-6px);
        }
        .explore-poster-box {
          position: relative;
          width: 100%;
          aspect-ratio: 2 / 3;
          border-radius: 12px;
          overflow: hidden;
          background: #151b28;
          box-shadow: 0 4px 16px rgba(0, 0, 0, 0.5);
        }
        .explore-poster {
          width: 100%;
          height: 100%;
          object-fit: cover;
          transition: transform 0.4s ease;
        }
        .explore-card:hover .explore-poster {
          transform: scale(1.05);
        }
        .explore-card-info {
          margin-top: 10px;
        }
        .explore-card-title {
          font-size: 0.95rem;
          font-weight: 600;
          color: #f1f5f9;
          white-space: nowrap;
          overflow: hidden;
          text-overflow: ellipsis;
        }
        .explore-card-meta {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin-top: 4px;
          font-size: 0.78rem;
          color: #64748b;
        }
        .badge-genre-tag {
          background: rgba(255, 255, 255, 0.08);
          padding: 1px 6px;
          border-radius: 4px;
          font-size: 0.7rem;
        }
        .explore-loading {
          padding: 100px;
          display: flex;
          flex-direction: column;
          align-items: center;
          gap: 16px;
          color: #94a3b8;
        }
        .explore-empty {
          padding: 60px;
          text-align: center;
          border-radius: 16px;
          display: flex;
          flex-direction: column;
          align-items: center;
          gap: 12px;
        }
        .explore-empty h3 {
          font-size: 1.3rem;
          color: #fff;
        }
        .explore-empty p {
          color: #94a3b8;
          margin-bottom: 8px;
        }

        @media (max-width: 768px) {
          .explore-view-container {
            padding: 90px 20px 40px;
          }
          .explore-grid {
            grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
            gap: 14px;
          }
        }
      `}</style>
    </div>
  );
}


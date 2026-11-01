import React, { useState, useEffect, useRef } from 'react';
import { 
  Play, 
  Search, 
  Bookmark, 
  Film, 
  Tv, 
  Compass, 
  ShieldCheck, 
  X, 
  Star,
  Clock,
  Menu
} from 'lucide-react';

export default function Navbar({ 
  activeTab, 
  setActiveTab, 
  watchlistCount, 
  onOpenContent, 
  onOpenGatewayDebugger 
}) {
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [isSearching, setIsSearching] = useState(false);
  const [showDropdown, setShowDropdown] = useState(false);
  const [isScrolled, setIsScrolled] = useState(false);
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const searchRef = useRef(null);

  // Scroll detection for glassy navbar effect
  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 20) {
        setIsScrolled(true);
      } else {
        setIsScrolled(false);
      }
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  // Close search dropdown when clicking outside
  useEffect(() => {
    const handleClickOutside = (e) => {
      if (searchRef.current && !searchRef.current.contains(e.target)) {
        setShowDropdown(false);
      }
    };
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  // Debounced live search
  useEffect(() => {
    if (!searchQuery.trim()) {
      setSearchResults([]);
      setShowDropdown(false);
      return;
    }

    const timer = setTimeout(async () => {
      setIsSearching(true);
      try {
        const res = await fetch(`/api/catalog?search=${encodeURIComponent(searchQuery.trim())}`);
        const data = await res.json();
        setSearchResults(data.items.slice(0, 5));
        setShowDropdown(true);
      } catch (err) {
        console.error('Search error:', err);
      } finally {
        setIsSearching(false);
      }
    }, 200);

    return () => clearTimeout(timer);
  }, [searchQuery]);

  const navItems = [
    { id: 'home', label: 'Home', icon: Film },
    { id: 'explore', label: 'Explore', icon: Compass },
    { id: 'series', label: 'TV Series', icon: Tv },
    { id: 'movies', label: 'Movies', icon: Film },
    { id: 'library', label: 'My Library', icon: Bookmark, badge: watchlistCount },
  ];

  return (
    <header className={`navbar-header ${isScrolled ? 'scrolled' : ''}`}>
      <div className="nav-container">
        {/* Brand Logo */}
        <div 
          className="brand-logo" 
          onClick={() => { setActiveTab('home'); window.scrollTo({ top: 0, behavior: 'smooth' }); }}
        >
          <div className="logo-icon">
            <Play className="play-triangle" fill="white" size={16} />
          </div>
          <div className="logo-text">
            <span>AETHER</span>STREAM
          </div>
        </div>

        {/* Desktop Navigation Links */}
        <nav className="desktop-nav">
          {navItems.map((item) => {
            const Icon = item.icon;
            const isActive = activeTab === item.id;
            return (
              <button
                key={item.id}
                className={`nav-link ${isActive ? 'active' : ''}`}
                onClick={() => {
                  setActiveTab(item.id);
                  window.scrollTo({ top: 0, behavior: 'smooth' });
                }}
              >
                <Icon size={16} />
                <span>{item.label}</span>
                {item.badge > 0 && (
                  <span className="nav-badge">{item.badge}</span>
                )}
              </button>
            );
          })}
        </nav>

        {/* Search Bar with Instant Dropdown */}
        <div className="search-wrapper" ref={searchRef}>
          <div className="search-input-box">
            <Search size={16} className="search-icon" />
            <input
              type="text"
              placeholder="Search movies, series, cast..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              onFocus={() => {
                if (searchResults.length > 0) setShowDropdown(true);
              }}
            />
            {searchQuery && (
              <button 
                className="clear-search-btn" 
                onClick={() => { setSearchQuery(''); setShowDropdown(false); }}
              >
                <X size={14} />
              </button>
            )}
          </div>

          {/* Instant Dropdown Preview */}
          {showDropdown && (
            <div className="search-dropdown glass-panel">
              {isSearching ? (
                <div className="search-loading">Searching universe...</div>
              ) : searchResults.length > 0 ? (
                <div className="search-results-list">
                  <div className="dropdown-label">TOP MATCHES</div>
                  {searchResults.map((item) => (
                    <div
                      key={item.id}
                      className="search-item"
                      onClick={() => {
                        onOpenContent(item.id);
                        setShowDropdown(false);
                        setSearchQuery('');
                      }}
                    >
                      <img src={item.poster} alt={item.title} className="search-poster" />
                      <div className="search-item-info">
                        <div className="search-item-title">{item.title}</div>
                        <div className="search-item-meta">
                          <span className="badge-quality">{item.quality}</span>
                          <span>{item.releaseYear}</span>
                          <span className="rating"><Star size={12} fill="#fbbf24" stroke="none" /> {item.rating}</span>
                          <span className="type-pill">{item.type.toUpperCase()}</span>
                        </div>
                      </div>
                    </div>
                  ))}
                  <div 
                    className="view-all-results"
                    onClick={() => {
                      setActiveTab('explore');
                      setShowDropdown(false);
                    }}
                  >
                    View all results in Explore →
                  </div>
                </div>
              ) : (
                <div className="search-no-results">
                  No titles found matching "{searchQuery}"
                </div>
              )}
            </div>
          )}
        </div>

        {/* Right Action Tools */}
        <div className="nav-actions">
          {/* Gateway Inspector Button */}
          <button 
            className="btn-gateway-debugger"
            title="Inspect Reverse-Engineered Transsion API Gateway Signature"
            onClick={onOpenGatewayDebugger}
          >
            <ShieldCheck size={16} className="text-emerald" />
            <span className="gateway-label">HMAC Gateway</span>
          </button>

          {/* Mobile Menu Toggle */}
          <button 
            className="mobile-menu-btn"
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
          >
            <Menu size={22} />
          </button>
        </div>
      </div>

      {/* Mobile Drawer Menu */}
      {mobileMenuOpen && (
        <div className="mobile-drawer glass-panel">
          {navItems.map((item) => (
            <button
              key={item.id}
              className={`mobile-nav-link ${activeTab === item.id ? 'active' : ''}`}
              onClick={() => {
                setActiveTab(item.id);
                setMobileMenuOpen(false);
              }}
            >
              <span>{item.label}</span>
              {item.badge > 0 && <span className="nav-badge">{item.badge}</span>}
            </button>
          ))}
        </div>
      )}

      <style>{`
        .navbar-header {
          position: fixed;
          top: 0;
          left: 0;
          right: 0;
          z-index: 1000;
          transition: all 0.3s ease;
          padding: 16px 32px;
          background: linear-gradient(180deg, rgba(7, 9, 14, 0.9) 0%, rgba(7, 9, 14, 0.4) 70%, transparent 100%);
        }
        .navbar-header.scrolled {
          background: rgba(7, 9, 14, 0.92);
          backdrop-filter: blur(20px);
          -webkit-backdrop-filter: blur(20px);
          border-bottom: 1px solid rgba(255, 255, 255, 0.08);
          padding: 12px 32px;
          box-shadow: 0 4px 30px rgba(0, 0, 0, 0.5);
        }
        .nav-container {
          max-width: 1540px;
          margin: 0 auto;
          display: flex;
          align-items: center;
          justify-content: space-between;
          gap: 24px;
        }
        .brand-logo {
          display: flex;
          align-items: center;
          gap: 10px;
          cursor: pointer;
          user-select: none;
        }
        .logo-icon {
          width: 36px;
          height: 36px;
          border-radius: 10px;
          background: linear-gradient(135deg, #06b6d4, #3b82f6, #6366f1);
          display: flex;
          align-items: center;
          justify-content: center;
          box-shadow: 0 0 15px rgba(59, 130, 246, 0.5);
        }
        .logo-text {
          font-family: 'Outfit', sans-serif;
          font-size: 1.35rem;
          font-weight: 800;
          letter-spacing: 0.05em;
          color: #ffffff;
        }
        .logo-text span {
          background: linear-gradient(135deg, #06b6d4, #3b82f6);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
        }
        .desktop-nav {
          display: flex;
          align-items: center;
          gap: 8px;
        }
        .nav-link {
          display: flex;
          align-items: center;
          gap: 8px;
          padding: 8px 14px;
          border-radius: 8px;
          color: #94a3b8;
          font-size: 0.9rem;
          font-weight: 500;
          transition: all 0.2s ease;
        }
        .nav-link:hover {
          color: #ffffff;
          background: rgba(255, 255, 255, 0.06);
        }
        .nav-link.active {
          color: #ffffff;
          background: rgba(59, 130, 246, 0.15);
          border: 1px solid rgba(59, 130, 246, 0.3);
        }
        .nav-badge {
          background: #3b82f6;
          color: #fff;
          font-size: 0.7rem;
          font-weight: 700;
          padding: 1px 6px;
          border-radius: 999px;
        }
        .search-wrapper {
          position: relative;
          flex: 1;
          max-width: 380px;
        }
        .search-input-box {
          display: flex;
          align-items: center;
          background: rgba(255, 255, 255, 0.06);
          border: 1px solid rgba(255, 255, 255, 0.1);
          border-radius: 999px;
          padding: 8px 16px;
          gap: 10px;
          transition: all 0.2s ease;
        }
        .search-input-box:focus-within {
          background: rgba(255, 255, 255, 0.1);
          border-color: rgba(59, 130, 246, 0.6);
          box-shadow: 0 0 12px rgba(59, 130, 246, 0.25);
        }
        .search-icon {
          color: #64748b;
        }
        .search-input-box input {
          background: transparent;
          border: none;
          color: #fff;
          font-size: 0.88rem;
          width: 100%;
        }
        .search-input-box input::placeholder {
          color: #64748b;
        }
        .clear-search-btn {
          color: #94a3b8;
          padding: 2px;
        }
        .clear-search-btn:hover {
          color: #fff;
        }
        .search-dropdown {
          position: absolute;
          top: calc(100% + 8px);
          left: 0;
          right: 0;
          border-radius: 14px;
          padding: 12px;
          box-shadow: 0 16px 40px rgba(0, 0, 0, 0.8);
          max-height: 420px;
          overflow-y: auto;
          z-index: 1001;
        }
        .dropdown-label {
          font-size: 0.68rem;
          font-weight: 700;
          color: #64748b;
          letter-spacing: 0.08em;
          margin-bottom: 8px;
          padding-left: 6px;
        }
        .search-item {
          display: flex;
          align-items: center;
          gap: 12px;
          padding: 8px;
          border-radius: 8px;
          cursor: pointer;
          transition: background 0.15s ease;
        }
        .search-item:hover {
          background: rgba(255, 255, 255, 0.08);
        }
        .search-poster {
          width: 44px;
          height: 60px;
          object-fit: cover;
          border-radius: 6px;
        }
        .search-item-info {
          flex: 1;
        }
        .search-item-title {
          font-size: 0.9rem;
          font-weight: 600;
          color: #fff;
          margin-bottom: 4px;
        }
        .search-item-meta {
          display: flex;
          align-items: center;
          gap: 8px;
          font-size: 0.75rem;
          color: #94a3b8;
        }
        .search-item-meta .rating {
          display: inline-flex;
          align-items: center;
          gap: 3px;
          color: #fbbf24;
          font-weight: 600;
        }
        .type-pill {
          background: rgba(255, 255, 255, 0.1);
          padding: 1px 6px;
          border-radius: 4px;
          font-size: 0.65rem;
          letter-spacing: 0.05em;
        }
        .view-all-results {
          margin-top: 8px;
          padding-top: 8px;
          border-top: 1px solid rgba(255, 255, 255, 0.08);
          text-align: center;
          font-size: 0.8rem;
          color: #3b82f6;
          font-weight: 600;
          cursor: pointer;
        }
        .search-loading, .search-no-results {
          padding: 16px;
          text-align: center;
          color: #94a3b8;
          font-size: 0.85rem;
        }
        .nav-actions {
          display: flex;
          align-items: center;
          gap: 12px;
        }
        .btn-gateway-debugger {
          display: flex;
          align-items: center;
          gap: 8px;
          padding: 8px 14px;
          border-radius: 999px;
          background: rgba(16, 185, 129, 0.1);
          border: 1px solid rgba(16, 185, 129, 0.3);
          color: #10b981;
          font-size: 0.82rem;
          font-weight: 600;
          transition: all 0.2s ease;
        }
        .btn-gateway-debugger:hover {
          background: rgba(16, 185, 129, 0.2);
          transform: translateY(-1px);
        }
        .mobile-menu-btn {
          display: none;
          color: #fff;
        }
        .mobile-drawer {
          display: none;
        }
        @media (max-width: 900px) {
          .desktop-nav {
            display: none;
          }
          .mobile-menu-btn {
            display: block;
          }
          .search-wrapper {
            max-width: 220px;
          }
          .gateway-label {
            display: none;
          }
          .mobile-drawer {
            display: flex;
            flex-direction: column;
            gap: 8px;
            margin-top: 16px;
            padding: 16px;
            border-radius: 12px;
          }
          .mobile-nav-link {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 14px;
            color: #94a3b8;
            font-size: 0.95rem;
            border-radius: 8px;
          }
          .mobile-nav-link.active {
            color: #fff;
            background: rgba(59, 130, 246, 0.15);
          }
        }
      `}</style>
    </header>
  );
}


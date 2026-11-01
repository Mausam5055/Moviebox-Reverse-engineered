import React, { useState, useEffect, useRef } from 'react';
import Hls from 'hls.js';
import { 
  Play, 
  Pause, 
  RotateCcw, 
  RotateCw, 
  Volume2, 
  VolumeX, 
  Maximize, 
  Minimize, 
  Settings, 
  Subtitles, 
  ArrowLeft, 
  SkipForward, 
  Check,
  AlertTriangle,
  RefreshCw,
  Tv,
  Film
} from 'lucide-react';

const FALLBACK_STREAMS = [
  { quality: "1080p", label: "1080p Master HLS", url: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8" },
  { quality: "720p", label: "720p Mux Adaptive", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" },
  { quality: "480p", label: "480p Direct MP4", url: "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-720p.mp4" }
];

export default function PlayerModal({ 
  content, 
  episode, 
  onClose, 
  onNextEpisode, 
  onUpdateProgress 
}) {
  const videoRef = useRef(null);
  const containerRef = useRef(null);
  const hlsRef = useRef(null);
  const controlsTimeoutRef = useRef(null);

  const activeMedia = episode || content;
  const youtubeKey = activeMedia?.youtubeKey || content?.youtubeKey;

  // Mode: 'youtube' for official unique title video, 'cdn' for HLS/MP4 direct
  const [playerMode, setPlayerMode] = useState(youtubeKey ? 'youtube' : 'cdn');

  const [isPlaying, setIsPlaying] = useState(false);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const [buffered, setBuffered] = useState(0);
  const [volume, setVolume] = useState(1);
  const [isMuted, setIsMuted] = useState(false);
  const [isFullscreen, setIsFullscreen] = useState(false);
  const [showControls, setShowControls] = useState(true);
  const [streamError, setStreamError] = useState(null);
  const [isAutoplayBlocked, setIsAutoplayBlocked] = useState(false);

  // Settings menus
  const [showQualityMenu, setShowQualityMenu] = useState(false);
  const [showSubtitleMenu, setShowSubtitleMenu] = useState(false);
  const [showSpeedMenu, setShowSpeedMenu] = useState(false);

  const [selectedQuality, setSelectedQuality] = useState('1080p');
  const [selectedSubtitle, setSelectedSubtitle] = useState('off');
  const [playbackSpeed, setPlaybackSpeed] = useState(1);

  // Normalize video sources
  let videoSources = [];
  if (activeMedia) {
    if (Array.isArray(activeMedia.sources) && activeMedia.sources.length > 0) {
      videoSources = activeMedia.sources;
    } else if (activeMedia.streams && typeof activeMedia.streams === 'object') {
      videoSources = Object.entries(activeMedia.streams).map(([quality, url]) => ({
        quality,
        url,
        label: `${quality} Stream`
      }));
    } else if (content && Array.isArray(content.sources) && content.sources.length > 0) {
      videoSources = content.sources;
    } else if (content && content.streams && typeof content.streams === 'object') {
      videoSources = Object.entries(content.streams).map(([quality, url]) => ({
        quality,
        url,
        label: `${quality} Stream`
      }));
    }
  }

  if (videoSources.length === 0) {
    videoSources = FALLBACK_STREAMS;
  }

  const subtitleTracks = activeMedia?.subtitles || content?.subtitles || [];
  const currentSourceObj = videoSources.find(s => s.quality === selectedQuality) || videoSources[0];

  // Initialize and load CDN video stream (when in CDN mode)
  useEffect(() => {
    if (playerMode !== 'cdn') return;
    const video = videoRef.current;
    if (!video || !currentSourceObj?.url) return;

    setStreamError(null);
    setIsAutoplayBlocked(false);
    const streamUrl = currentSourceObj.url;
    const isHlsStream = streamUrl.includes('.m3u8');

    if (hlsRef.current) {
      hlsRef.current.destroy();
      hlsRef.current = null;
    }

    if (isHlsStream && Hls.isSupported()) {
      const hls = new Hls({
        enableWorker: true,
        lowLatencyMode: true
      });
      hls.loadSource(streamUrl);
      hls.attachMedia(video);

      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        video.play()
          .then(() => setIsPlaying(true))
          .catch((err) => {
            console.log('Autoplay blocked:', err);
            setIsAutoplayBlocked(true);
          });
      });

      hls.on(Hls.Events.ERROR, (event, data) => {
        if (data.fatal) {
          switch (data.type) {
            case Hls.ErrorTypes.NETWORK_ERROR:
              hls.startLoad();
              break;
            case Hls.ErrorTypes.MEDIA_ERROR:
              hls.recoverMediaError();
              break;
            default:
              hls.destroy();
              setStreamError('Failed to decode stream. Try switching quality.');
              break;
          }
        }
      });

      hlsRef.current = hls;
    } else {
      video.src = streamUrl;
      video.load();
      video.play()
        .then(() => setIsPlaying(true))
        .catch((err) => {
          console.log('Autoplay blocked:', err);
          setIsAutoplayBlocked(true);
        });
    }

    return () => {
      if (hlsRef.current) {
        hlsRef.current.destroy();
        hlsRef.current = null;
      }
    };
  }, [playerMode, currentSourceObj?.url]);

  // Periodic progress sync to backend every 4 seconds
  useEffect(() => {
    const interval = setInterval(() => {
      if (videoRef.current && content && playerMode === 'cdn') {
        const cur = videoRef.current.currentTime;
        const dur = videoRef.current.duration || 3600;
        if (cur > 0 && dur > 0) {
          onUpdateProgress(
            content.id, 
            cur, 
            dur, 
            episode ? { season: episode.seasonNumber || 1, episode: episode.episodeNumber, title: episode.title } : null
          );
        }
      }
    }, 4000);
    return () => clearInterval(interval);
  }, [content, episode, playerMode, onUpdateProgress]);

  // Controls auto-hide timer
  const handleMouseMove = () => {
    setShowControls(true);
    if (controlsTimeoutRef.current) clearTimeout(controlsTimeoutRef.current);
    controlsTimeoutRef.current = setTimeout(() => {
      if (isPlaying) {
        setShowControls(false);
        setShowQualityMenu(false);
        setShowSubtitleMenu(false);
        setShowSpeedMenu(false);
      }
    }, 3500);
  };

  // Keyboard Shortcuts (Space, F, M, J, L, Esc)
  useEffect(() => {
    const handleKeyDown = (e) => {
      if (e.target.tagName === 'INPUT') return;
      if (e.key === ' ' || e.key === 'k') {
        e.preventDefault();
        if (playerMode === 'cdn') togglePlay();
      } else if (e.key === 'f') {
        e.preventDefault();
        toggleFullscreen();
      } else if (e.key === 'm') {
        e.preventDefault();
        if (playerMode === 'cdn') toggleMute();
      } else if (e.key === 'ArrowRight' || e.key === 'l') {
        e.preventDefault();
        if (playerMode === 'cdn') skipTime(10);
      } else if (e.key === 'ArrowLeft' || e.key === 'j') {
        e.preventDefault();
        if (playerMode === 'cdn') skipTime(-10);
      } else if (e.key === 'Escape') {
        if (document.fullscreenElement) {
          document.exitFullscreen();
        } else {
          onClose();
        }
      }
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isPlaying, playerMode, onClose]);

  const togglePlay = () => {
    const video = videoRef.current;
    if (!video) return;
    setIsAutoplayBlocked(false);
    if (video.paused) {
      video.play().then(() => setIsPlaying(true)).catch(e => console.error(e));
    } else {
      video.pause();
      setIsPlaying(false);
    }
  };

  const skipTime = (seconds) => {
    if (videoRef.current) {
      videoRef.current.currentTime = Math.max(0, Math.min(duration, videoRef.current.currentTime + seconds));
    }
  };

  const handleSeek = (e) => {
    const rect = e.currentTarget.getBoundingClientRect();
    const pos = (e.clientX - rect.left) / rect.width;
    const target = pos * duration;
    if (videoRef.current) {
      videoRef.current.currentTime = target;
      setCurrentTime(target);
    }
  };

  const toggleMute = () => {
    if (videoRef.current) {
      const newMuted = !isMuted;
      videoRef.current.muted = newMuted;
      setIsMuted(newMuted);
    }
  };

  const handleVolumeChange = (e) => {
    const val = parseFloat(e.target.value);
    setVolume(val);
    if (videoRef.current) {
      videoRef.current.volume = val;
      videoRef.current.muted = val === 0;
      setIsMuted(val === 0);
    }
  };

  const toggleFullscreen = () => {
    if (!containerRef.current) return;
    if (!document.fullscreenElement) {
      containerRef.current.requestFullscreen().catch(err => console.error(err));
      setIsFullscreen(true);
    } else {
      document.exitFullscreen();
      setIsFullscreen(false);
    }
  };

  const changeQuality = (q) => {
    if (selectedQuality === q) return;
    const savedTime = videoRef.current ? videoRef.current.currentTime : 0;
    setSelectedQuality(q);
    setShowQualityMenu(false);
    setTimeout(() => {
      if (videoRef.current) {
        videoRef.current.currentTime = savedTime;
        videoRef.current.play().then(() => setIsPlaying(true)).catch(e => console.log(e));
      }
    }, 200);
  };

  const changeSubtitle = (langCode) => {
    setSelectedSubtitle(langCode);
    setShowSubtitleMenu(false);
    if (videoRef.current && videoRef.current.textTracks) {
      for (let i = 0; i < videoRef.current.textTracks.length; i++) {
        const track = videoRef.current.textTracks[i];
        if (langCode === 'off') {
          track.mode = 'disabled';
        } else if (track.language === langCode) {
          track.mode = 'showing';
        } else {
          track.mode = 'disabled';
        }
      }
    }
  };

  const changeSpeed = (speed) => {
    setPlaybackSpeed(speed);
    setShowSpeedMenu(false);
    if (videoRef.current) {
      videoRef.current.playbackRate = speed;
    }
  };

  const formatTime = (secs) => {
    if (isNaN(secs) || secs < 0) return '00:00';
    const h = Math.floor(secs / 3600);
    const m = Math.floor((secs % 3600) / 60);
    const s = Math.floor(secs % 60);
    if (h > 0) {
      return `${h}:${m < 10 ? '0' : ''}${m}:${s < 10 ? '0' : ''}${s}`;
    }
    return `${m < 10 ? '0' : ''}${m}:${s < 10 ? '0' : ''}${s}`;
  };

  return (
    <div 
      className="aether-player-wrapper" 
      ref={containerRef}
      onMouseMove={handleMouseMove}
      onClick={handleMouseMove}
    >
      {/* Mode 1: Authentic, Unique Video Stream for this specific title (YouTube 4K Embed) */}
      {playerMode === 'youtube' && youtubeKey ? (
        <div className="unique-video-container">
          <iframe
            src={`https://www.youtube-nocookie.com/embed/${youtubeKey}?autoplay=1&rel=0&modestbranding=1&playsinline=1`}
            title={content.title}
            className="unique-video-frame"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowFullScreen
          />
        </div>
      ) : (
        /* Mode 2: Direct CDN HTML5 / HLS Stream */
        <video
          ref={videoRef}
          className="aether-video"
          playsInline
          crossOrigin="anonymous"
          onTimeUpdate={() => {
            if (videoRef.current) {
              setCurrentTime(videoRef.current.currentTime);
              if (videoRef.current.buffered.length > 0) {
                setBuffered(videoRef.current.buffered.end(videoRef.current.buffered.length - 1));
              }
            }
          }}
          onDurationChange={() => {
            if (videoRef.current) setDuration(videoRef.current.duration);
          }}
          onPlay={() => {
            setIsPlaying(true);
            setIsAutoplayBlocked(false);
          }}
          onPause={() => setIsPlaying(false)}
          onError={() => {
            setStreamError('Direct stream interrupted. Switched to fallback.');
          }}
          onClick={togglePlay}
        >
          {subtitleTracks.map((sub) => (
            <track
              key={sub.lang}
              kind="subtitles"
              label={sub.label}
              srcLang={sub.lang}
              src={sub.src}
              default={sub.lang === selectedSubtitle}
            />
          ))}
        </video>
      )}

      {/* Center Play Button if paused or autoplay blocked (CDN Mode) */}
      {playerMode === 'cdn' && (!isPlaying || isAutoplayBlocked) && (
        <div className="center-play-badge" onClick={togglePlay}>
          <Play size={44} fill="white" />
          {isAutoplayBlocked && <span className="click-to-play-hint">Click to Stream</span>}
        </div>
      )}

      {/* Stream Error Alert */}
      {streamError && playerMode === 'cdn' && (
        <div className="stream-error-toast glass-panel">
          <AlertTriangle size={18} className="text-amber" />
          <span>{streamError}</span>
          <button className="btn-secondary retry-btn" onClick={() => changeQuality(videoSources[0].quality)}>
            <RefreshCw size={14} />
            <span>Retry</span>
          </button>
        </div>
      )}

      {/* Player Overlays: Top Header & Stream Source Toggle */}
      <div className={`player-controls-overlay ${showControls ? 'visible' : 'hidden'}`}>
        {/* Top Header */}
        <div className="player-top-bar">
          <button className="player-back-btn" onClick={onClose} title="Exit Cinema View">
            <ArrowLeft size={22} />
          </button>
          
          <div className="player-title-box">
            <div className="player-main-title">{content.title}</div>
            {episode && (
              <div className="player-sub-title">
                Season {episode.seasonNumber || 1} • Episode {episode.episodeNumber}: {episode.title}
              </div>
            )}
          </div>

          {/* Mode Switcher: Authentic Official Video vs Direct CDN Stream */}
          <div className="player-mode-switch">
            {youtubeKey && (
              <button 
                className={`mode-btn ${playerMode === 'youtube' ? 'active' : ''}`}
                onClick={() => setPlayerMode('youtube')}
              >
                <Film size={14} />
                <span>Official Live Stream</span>
              </button>
            )}
            <button 
              className={`mode-btn ${playerMode === 'cdn' ? 'active' : ''}`}
              onClick={() => setPlayerMode('cdn')}
            >
              <Tv size={14} />
              <span>Direct CDN Stream</span>
            </button>
          </div>
        </div>

        {/* Bottom Controls Bar (Visible in CDN mode) */}
        {playerMode === 'cdn' && (
          <div className="player-bottom-bar" onClick={(e) => e.stopPropagation()}>
            {/* Progress Timeline Scrubber */}
            <div className="scrubber-container" onClick={handleSeek}>
              <div className="scrubber-track">
                <div 
                  className="scrubber-buffered" 
                  style={{ width: `${(buffered / (duration || 1)) * 100}%` }}
                />
                <div 
                  className="scrubber-played" 
                  style={{ width: `${(currentTime / (duration || 1)) * 100}%` }}
                >
                  <div className="scrubber-handle" />
                </div>
              </div>
            </div>

            <div className="controls-row">
              {/* Left Controls: Play, Skip, Volume, Time */}
              <div className="controls-left">
                <button className="ctrl-btn" onClick={togglePlay} title={isPlaying ? "Pause (Space)" : "Play (Space)"}>
                  {isPlaying ? <Pause size={22} fill="white" /> : <Play size={22} fill="white" />}
                </button>

                <button className="ctrl-btn" onClick={() => skipTime(-10)} title="Rewind 10s (J)">
                  <RotateCcw size={20} />
                </button>

                <button className="ctrl-btn" onClick={() => skipTime(10)} title="Forward 10s (L)">
                  <RotateCw size={20} />
                </button>

                {onNextEpisode && (
                  <button className="ctrl-btn" onClick={onNextEpisode} title="Next Episode">
                    <SkipForward size={20} />
                  </button>
                )}

                <div className="volume-wrapper">
                  <button className="ctrl-btn" onClick={toggleMute} title="Mute (M)">
                    {isMuted || volume === 0 ? <VolumeX size={20} /> : <Volume2 size={20} />}
                  </button>
                  <input 
                    type="range" 
                    min="0" 
                    max="1" 
                    step="0.05" 
                    value={isMuted ? 0 : volume} 
                    onChange={handleVolumeChange} 
                    className="volume-slider" 
                  />
                </div>

                <div className="time-display">
                  <span>{formatTime(currentTime)}</span>
                  <span className="time-sep">/</span>
                  <span>{formatTime(duration)}</span>
                </div>
              </div>

              {/* Right Controls: Subtitles, Speed, Quality, Fullscreen */}
              <div className="controls-right">
                <div className="menu-container">
                  <button 
                    className={`ctrl-btn ${selectedSubtitle !== 'off' ? 'active-glow' : ''}`}
                    onClick={() => {
                      setShowSubtitleMenu(!showSubtitleMenu);
                      setShowQualityMenu(false);
                      setShowSpeedMenu(false);
                    }}
                    title="Subtitles & Audio"
                  >
                    <Subtitles size={20} />
                  </button>

                  {showSubtitleMenu && (
                    <div className="popup-menu glass-panel">
                      <div className="popup-header">SUBTITLES</div>
                      <button 
                        className={`popup-item ${selectedSubtitle === 'off' ? 'selected' : ''}`}
                        onClick={() => changeSubtitle('off')}
                      >
                        <span>Off</span>
                        {selectedSubtitle === 'off' && <Check size={14} />}
                      </button>
                      {subtitleTracks.map((sub) => (
                        <button
                          key={sub.lang}
                          className={`popup-item ${selectedSubtitle === sub.lang ? 'selected' : ''}`}
                          onClick={() => changeSubtitle(sub.lang)}
                        >
                          <span>{sub.label}</span>
                          {selectedSubtitle === sub.lang && <Check size={14} />}
                        </button>
                      ))}
                    </div>
                  )}
                </div>

                <div className="menu-container">
                  <button 
                    className="ctrl-btn text-btn"
                    onClick={() => {
                      setShowSpeedMenu(!showSpeedMenu);
                      setShowSubtitleMenu(false);
                      setShowQualityMenu(false);
                    }}
                    title="Playback Speed"
                  >
                    {playbackSpeed}x
                  </button>

                  {showSpeedMenu && (
                    <div className="popup-menu glass-panel">
                      <div className="popup-header">PLAYBACK SPEED</div>
                      {[0.5, 0.75, 1, 1.25, 1.5, 2].map((s) => (
                        <button
                          key={s}
                          className={`popup-item ${playbackSpeed === s ? 'selected' : ''}`}
                          onClick={() => changeSpeed(s)}
                        >
                          <span>{s === 1 ? 'Normal (1x)' : `${s}x`}</span>
                          {playbackSpeed === s && <Check size={14} />}
                        </button>
                      ))}
                    </div>
                  )}
                </div>

                <div className="menu-container">
                  <button 
                    className="ctrl-btn"
                    onClick={() => {
                      setShowQualityMenu(!showQualityMenu);
                      setShowSubtitleMenu(false);
                      setShowSpeedMenu(false);
                    }}
                    title="Stream Quality"
                  >
                    <Settings size={20} />
                  </button>

                  {showQualityMenu && (
                    <div className="popup-menu glass-panel">
                      <div className="popup-header">RESOLUTION</div>
                      {videoSources.map((src) => (
                        <button
                          key={src.quality}
                          className={`popup-item ${selectedQuality === src.quality ? 'selected' : ''}`}
                          onClick={() => changeQuality(src.quality)}
                        >
                          <div className="quality-item-row">
                            <span>{src.quality}</span>
                            <span className="bitrate-label">{src.label}</span>
                          </div>
                          {selectedQuality === src.quality && <Check size={14} />}
                        </button>
                      ))}
                    </div>
                  )}
                </div>

                <button className="ctrl-btn" onClick={toggleFullscreen} title="Fullscreen (F)">
                  {isFullscreen ? <Minimize size={20} /> : <Maximize size={20} />}
                </button>
              </div>
            </div>
          </div>
        )}
      </div>

      <style>{`
        .aether-player-wrapper {
          position: fixed;
          inset: 0;
          background: #000;
          z-index: 3000;
          display: flex;
          align-items: center;
          justify-content: center;
          user-select: none;
        }
        .unique-video-container {
          width: 100%;
          height: 100%;
          background: #000;
          display: flex;
          align-items: center;
          justify-content: center;
        }
        .unique-video-frame {
          width: 100%;
          height: 100%;
          border: none;
        }
        .aether-video {
          width: 100%;
          height: 100%;
          object-fit: contain;
          background: #000;
        }
        .center-play-badge {
          position: absolute;
          width: 90px;
          height: 90px;
          border-radius: 50%;
          background: rgba(59, 130, 246, 0.85);
          backdrop-filter: blur(10px);
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          box-shadow: 0 0 35px rgba(59, 130, 246, 0.7);
          cursor: pointer;
          transition: transform 0.2s ease;
          z-index: 5;
        }
        .center-play-badge:hover {
          transform: scale(1.12);
        }
        .click-to-play-hint {
          font-size: 0.65rem;
          font-weight: 700;
          color: #fff;
          margin-top: 4px;
          text-transform: uppercase;
          letter-spacing: 0.05em;
        }
        .player-controls-overlay {
          position: absolute;
          inset: 0;
          display: flex;
          flex-direction: column;
          justify-content: space-between;
          background: linear-gradient(180deg, rgba(0, 0, 0, 0.8) 0%, transparent 20%, transparent 80%, rgba(0, 0, 0, 0.9) 100%);
          pointer-events: none;
          transition: opacity 0.3s ease;
        }
        .player-controls-overlay.visible {
          opacity: 1;
        }
        .player-controls-overlay.hidden {
          opacity: 0;
        }
        .player-controls-overlay * {
          pointer-events: auto;
        }
        .player-top-bar {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 24px 32px;
        }
        .player-back-btn {
          width: 44px;
          height: 44px;
          border-radius: 50%;
          background: rgba(255, 255, 255, 0.12);
          color: #fff;
          display: flex;
          align-items: center;
          justify-content: center;
          transition: background 0.2s ease;
        }
        .player-back-btn:hover {
          background: rgba(255, 255, 255, 0.25);
        }
        .player-title-box {
          flex: 1;
          margin-left: 20px;
        }
        .player-main-title {
          font-size: 1.25rem;
          font-weight: 700;
          color: #fff;
        }
        .player-sub-title {
          font-size: 0.85rem;
          color: #94a3b8;
          margin-top: 2px;
        }
        .player-mode-switch {
          display: flex;
          gap: 6px;
          background: rgba(0, 0, 0, 0.6);
          border: 1px solid rgba(255, 255, 255, 0.15);
          padding: 4px;
          border-radius: 999px;
        }
        .mode-btn {
          display: flex;
          align-items: center;
          gap: 6px;
          padding: 6px 14px;
          border-radius: 999px;
          color: #94a3b8;
          font-size: 0.78rem;
          font-weight: 600;
          transition: all 0.2s ease;
        }
        .mode-btn:hover {
          color: #fff;
        }
        .mode-btn.active {
          background: #3b82f6;
          color: #fff;
        }
        .player-bottom-bar {
          padding: 16px 32px 28px;
        }
        .scrubber-container {
          width: 100%;
          height: 20px;
          display: flex;
          align-items: center;
          cursor: pointer;
        }
        .scrubber-track {
          position: relative;
          width: 100%;
          height: 5px;
          background: rgba(255, 255, 255, 0.2);
          border-radius: 3px;
          transition: height 0.15s ease;
        }
        .scrubber-container:hover .scrubber-track {
          height: 8px;
        }
        .scrubber-buffered {
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          background: rgba(255, 255, 255, 0.35);
          border-radius: 3px;
        }
        .scrubber-played {
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          background: #3b82f6;
          border-radius: 3px;
        }
        .scrubber-handle {
          position: absolute;
          right: -6px;
          top: 50%;
          transform: translateY(-50%);
          width: 14px;
          height: 14px;
          border-radius: 50%;
          background: #fff;
          box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
          opacity: 0;
          transition: opacity 0.15s ease;
        }
        .scrubber-container:hover .scrubber-handle {
          opacity: 1;
        }
        .controls-row {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin-top: 10px;
        }
        .controls-left, .controls-right {
          display: flex;
          align-items: center;
          gap: 14px;
        }
        .ctrl-btn {
          width: 40px;
          height: 40px;
          border-radius: 50%;
          display: flex;
          align-items: center;
          justify-content: center;
          color: #f1f5f9;
          transition: all 0.15s ease;
        }
        .ctrl-btn:hover {
          background: rgba(255, 255, 255, 0.15);
          color: #fff;
        }
        .ctrl-btn.active-glow {
          color: #3b82f6;
        }
        .text-btn {
          font-size: 0.9rem;
          font-weight: 700;
          width: auto;
          padding: 0 10px;
          border-radius: 6px;
        }
        .volume-wrapper {
          display: flex;
          align-items: center;
          gap: 6px;
        }
        .volume-slider {
          width: 80px;
          height: 4px;
          -webkit-appearance: none;
          background: rgba(255, 255, 255, 0.3);
          border-radius: 2px;
          cursor: pointer;
        }
        .volume-slider::-webkit-slider-thumb {
          -webkit-appearance: none;
          width: 12px;
          height: 12px;
          border-radius: 50%;
          background: #fff;
        }
        .time-display {
          display: flex;
          align-items: center;
          gap: 6px;
          font-size: 0.85rem;
          color: #cbd5e1;
          font-variant-numeric: tabular-nums;
          margin-left: 6px;
        }
        .time-sep {
          color: #64748b;
        }
        .menu-container {
          position: relative;
        }
        .popup-menu {
          position: absolute;
          bottom: calc(100% + 12px);
          right: 0;
          min-width: 190px;
          background: #111622;
          border-radius: 12px;
          padding: 8px;
          border: 1px solid rgba(255, 255, 255, 0.15);
          box-shadow: 0 16px 36px rgba(0, 0, 0, 0.8);
          display: flex;
          flex-direction: column;
          gap: 4px;
          z-index: 100;
        }
        .popup-header {
          font-size: 0.68rem;
          font-weight: 700;
          color: #64748b;
          letter-spacing: 0.08em;
          padding: 6px 10px 4px;
        }
        .popup-item {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 8px 12px;
          border-radius: 6px;
          font-size: 0.85rem;
          color: #cbd5e1;
          transition: background 0.15s ease;
        }
        .popup-item:hover {
          background: rgba(255, 255, 255, 0.08);
          color: #fff;
        }
        .popup-item.selected {
          color: #3b82f6;
          font-weight: 600;
          background: rgba(59, 130, 246, 0.12);
        }
        .quality-item-row {
          display: flex;
          align-items: center;
          gap: 8px;
        }
        .bitrate-label {
          font-size: 0.72rem;
          color: #64748b;
        }
        .stream-error-toast {
          position: absolute;
          top: 90px;
          display: flex;
          align-items: center;
          gap: 12px;
          padding: 10px 18px;
          border-radius: 10px;
          background: rgba(239, 68, 68, 0.15);
          border: 1px solid rgba(239, 68, 68, 0.4);
          color: #fca5a5;
          font-size: 0.85rem;
          z-index: 10;
        }
        .retry-btn {
          padding: 4px 10px;
          font-size: 0.75rem;
        }

        @media (max-width: 768px) {
          .player-top-bar {
            padding: 16px 20px;
          }
          .player-bottom-bar {
            padding: 12px 20px 20px;
          }
          .volume-wrapper {
            display: none;
          }
        }
      `}</style>
    </div>
  );
}

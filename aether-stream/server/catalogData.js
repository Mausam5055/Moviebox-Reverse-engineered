export const CATALOG = [
  // ===================== FEATURED MOVIES =====================
  {
    id: "mov-001",
    title: "Tears of Steel: The Cybernetic Nexus",
    type: "movie",
    tagline: "The future is broken. The past cannot be rewritten.",
    synopsis: "In a dystopian cyberpunk future, a group of rebel warriors and scientists gather at the Amsterdam Oude Kerk to stage an epochal desperate attempt to reconnect a broken neural bridge with an extraterrestrial mechanical hive mind before planetary collapse.",
    releaseYear: 2025,
    duration: "1h 52m",
    durationSeconds: 6720,
    rating: 8.9,
    contentRating: "PG-13",
    featured: true,
    trending: true,
    genres: ["Sci-Fi", "Action", "Cyberpunk"],
    poster: "https://images.unsplash.com/photo-1578632767115-351597cf2477?w=600&auto=format&fit=crop&q=80",
    backdrop: "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=1600&auto=format&fit=crop&q=85",
    director: "Ian Hubert",
    cast: [
      { name: "Derek de Lint", role: "Old Thom", avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=200&auto=format&fit=crop&q=80" },
      { name: "Sergio Hasselbaink", role: "Barrie", avatar: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=200&auto=format&fit=crop&q=80" },
      { name: "Rogier Schippers", role: "Captain", avatar: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=200&auto=format&fit=crop&q=80" },
      { name: "Vanja Rukavina", role: "Frank", avatar: "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?w=200&auto=format&fit=crop&q=80" }
    ],
    sources: [
      { quality: "1080p", label: "1080p Multi-Bitrate HLS", url: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8" },
      { quality: "720p", label: "720p Adaptive HLS", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" },
      { quality: "480p", label: "480p Direct MP4", url: "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-720p.mp4" }
    ],
    streams: {
      "1080p": "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
      "720p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
      "480p": "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-720p.mp4"
    },
    subtitles: [
      { lang: "en", label: "English (CC)", src: "/subtitles/tears_en.vtt", default: true },
      { lang: "es", label: "Español", src: "/subtitles/tears_en.vtt" },
      { lang: "fr", label: "Français", src: "/subtitles/tears_en.vtt" }
    ]
  },
  {
    id: "mov-002",
    title: "Sintel: The Dragon's Shroud",
    type: "movie",
    tagline: "Some bonds cannot be severed by fire.",
    synopsis: "A solitary huntress travels through hazardous alpine peaks and desolate wastes tracking a ferocious adult dragon that abducted her companion dragon cub, only to encounter a heartbreaking revelation in the dragon's lair.",
    releaseYear: 2024,
    duration: "1h 44m",
    durationSeconds: 6240,
    rating: 8.7,
    contentRating: "PG-13",
    featured: true,
    trending: true,
    genres: ["Fantasy", "Adventure", "Animation"],
    poster: "https://images.unsplash.com/photo-1534447677768-be436bb09401?w=600&auto=format&fit=crop&q=80",
    backdrop: "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=1600&auto=format&fit=crop&q=85",
    director: "Colin Levy",
    cast: [
      { name: "Halina Reijn", role: "Sintel (Voice)", avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=200&auto=format&fit=crop&q=80" },
      { name: "Thom Hoffman", role: "Shaman", avatar: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=200&auto=format&fit=crop&q=80" }
    ],
    sources: [
      { quality: "1080p", label: "1080p Full HD", url: "https://media.w3.org/2010/05/sintel/trailer.mp4" },
      { quality: "720p", label: "720p HLS", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" }
    ],
    streams: {
      "1080p": "https://media.w3.org/2010/05/sintel/trailer.mp4",
      "720p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
    },
    subtitles: [
      { lang: "en", label: "English [Default]", src: "/subtitles/sintel_en.vtt", default: true }
    ]
  },
  {
    id: "mov-003",
    title: "Cosmos Laundromat: The Cosmic Shepherd",
    type: "movie",
    tagline: "Infinite worlds. One extraordinary journey.",
    synopsis: "On a desolate island, a despondent sheep named Franck is interrupted by a mysterious traveling salesman named Victor, who gifts him the chance to experience infinite alternate lives across surreal parallel universes.",
    releaseYear: 2025,
    duration: "1h 38m",
    durationSeconds: 5880,
    rating: 8.5,
    contentRating: "R",
    trending: true,
    genres: ["Sci-Fi", "Surreal", "Drama"],
    poster: "https://images.unsplash.com/photo-1509198397868-475647b2a1e5?w=600&auto=format&fit=crop&q=80",
    backdrop: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1600&auto=format&fit=crop&q=85",
    director: "Mathieu Auvray",
    cast: [
      { name: "Pierre Bokma", role: "Franck", avatar: "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?w=200&auto=format&fit=crop&q=80" },
      { name: "Reinout Scholten", role: "Victor", avatar: "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?w=200&auto=format&fit=crop&q=80" }
    ],
    sources: [
      { quality: "1080p", label: "1080p Cinema MP4", url: "https://vjs.zencdn.net/v/oceans.mp4" },
      { quality: "720p", label: "720p HLS", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" }
    ],
    streams: {
      "1080p": "https://vjs.zencdn.net/v/oceans.mp4",
      "720p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
    },
    subtitles: [
      { lang: "en", label: "English", src: "/subtitles/tears_en.vtt", default: true }
    ]
  },
  {
    id: "mov-004",
    title: "View From A Blue Moon",
    type: "movie",
    tagline: "The world's greatest surf odyssey.",
    synopsis: "Follow the world's most dynamic surfer John Florence and his closest friends from his home on the North Shore of Oahu to the most exotic surfing destinations on Earth.",
    releaseYear: 2024,
    duration: "1h 25m",
    durationSeconds: 5100,
    rating: 8.8,
    contentRating: "PG",
    genres: ["Documentary", "Action", "Sport"],
    poster: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600&auto=format&fit=crop&q=80",
    backdrop: "https://images.unsplash.com/photo-1448375240586-882707db888b?w=1600&auto=format&fit=crop&q=85",
    director: "Blake Vincent Kueny",
    cast: [
      { name: "John Florence", role: "Self", avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=200&auto=format&fit=crop&q=80" }
    ],
    sources: [
      { quality: "1080p", label: "1080p Full HD", url: "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-1080p.mp4" },
      { quality: "720p", label: "720p HD", url: "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-720p.mp4" }
    ],
    streams: {
      "1080p": "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-1080p.mp4",
      "720p": "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-720p.mp4"
    },
    subtitles: [
      { lang: "en", label: "English", src: "/subtitles/tears_en.vtt", default: true }
    ]
  },

  // ===================== POPULAR TV SERIES =====================
  {
    id: "ser-101",
    title: "Chronicles of the Silicon Rift",
    type: "series",
    tagline: "Every timeline has a tipping point.",
    synopsis: "When a secret quantum particle accelerator beneath Zurich triggers localized time dislocations across Europe, an elite tactical temporal team must prevent rogue timeline anomalies from collapsing civilized society.",
    releaseYear: 2025,
    duration: "2 Seasons • 8 Episodes",
    rating: 9.1,
    contentRating: "TV-MA",
    featured: true,
    trending: true,
    genres: ["Sci-Fi", "Thriller", "Action"],
    poster: "https://images.unsplash.com/photo-1534447677768-be436bb09401?w=600&auto=format&fit=crop&q=80",
    backdrop: "https://images.unsplash.com/photo-1511447333015-45b65e60f6d5?w=1600&auto=format&fit=crop&q=85",
    director: "Elena Ramos",
    cast: [
      { name: "Alexander Vance", role: "Dr. Marcus Cole", avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=200&auto=format&fit=crop&q=80" },
      { name: "Sophia Sterling", role: "Commander Sarah Lin", avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=200&auto=format&fit=crop&q=80" }
    ],
    seasons: [
      {
        seasonNumber: 1,
        title: "Season 1: Temporal Breach",
        episodes: [
          {
            episodeNumber: 1,
            title: "Anomaly Zero",
            synopsis: "The Large Hadron Collider experiences an unprecedented energy surge, splitting an eight-block sector of Geneva into three simultaneous time periods.",
            duration: "52m",
            thumbnail: "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=600&auto=format&fit=crop&q=80",
            sources: [
              { quality: "1080p", label: "1080p Master HLS", url: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8" },
              { quality: "720p", label: "720p Mux HLS", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" }
            ],
            streams: {
              "1080p": "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
              "720p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
            }
          },
          {
            episodeNumber: 2,
            title: "Echoes of the Void",
            synopsis: "Dr. Cole identifies quantum radio signals transmitted from fifty years in the future warning against shutting down the magnetic dampening coils.",
            duration: "48m",
            thumbnail: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=600&auto=format&fit=crop&q=80",
            sources: [
              { quality: "1080p", label: "1080p Mux Adaptive", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" }
            ],
            streams: {
              "1080p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
            }
          },
          {
            episodeNumber: 3,
            title: "The Butterfly Paradox",
            synopsis: "A rogue team member attempts to alter an event from 1999, creating cascading catastrophic weather anomalies across the Mediterranean basin.",
            duration: "55m",
            thumbnail: "https://images.unsplash.com/photo-1509198397868-475647b2a1e5?w=600&auto=format&fit=crop&q=80",
            sources: [
              { quality: "1080p", label: "1080p Cinema MP4", url: "https://vjs.zencdn.net/v/oceans.mp4" }
            ],
            streams: {
              "1080p": "https://vjs.zencdn.net/v/oceans.mp4"
            }
          }
        ]
      }
    ],
    sources: [
      { quality: "1080p", label: "1080p Master HLS", url: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8" }
    ],
    streams: {
      "1080p": "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8"
    },
    subtitles: [
      { lang: "en", label: "English", src: "/subtitles/tears_en.vtt", default: true }
    ]
  },

  // ===================== SHORTTV MICRO-DRAMAS =====================
  {
    id: "stv-201",
    title: "Reborn as the Billionaire Heir",
    type: "series",
    tagline: "They laughed when he fell. Now he buys the city.",
    synopsis: "Betrayed by his fiancée and cast out in the rain, Lucas awakens with a system interface in his vision and a secret Swiss bank account holding 100 billion dollars. The payback starts tonight.",
    releaseYear: 2025,
    duration: "1 Season • 3 Episodes",
    rating: 8.9,
    contentRating: "TV-14",
    trending: true,
    genres: ["Micro-Drama", "Romance", "Drama"],
    poster: "https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=600&auto=format&fit=crop&q=80",
    backdrop: "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1600&auto=format&fit=crop&q=85",
    director: "K. Chen",
    cast: [
      { name: "Lucas Hayes", role: "Lucas", avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=200&auto=format&fit=crop&q=80" },
      { name: "Seraphina Lin", role: "Audrey", avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=200&auto=format&fit=crop&q=80" }
    ],
    seasons: [
      {
        seasonNumber: 1,
        title: "Season 1",
        episodes: [
          {
            episodeNumber: 1,
            title: "Episode 1: The Banquet Humiliation",
            synopsis: "Lucas attends the aristocratic anniversary banquet only to have his engagement necklace stomped into the dirt.",
            duration: "2m 15s",
            thumbnail: "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?w=600&auto=format&fit=crop&q=80",
            sources: [
              { quality: "1080p", label: "1080p HLS", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" }
            ],
            streams: {
              "1080p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
            }
          },
          {
            episodeNumber: 2,
            title: "Episode 2: The Black Centurion Card",
            synopsis: "The bank manager sprints through the rain as a titanium black card is swiped at the luxury auction.",
            duration: "2m 30s",
            thumbnail: "https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=600&auto=format&fit=crop&q=80",
            sources: [
              { quality: "1080p", label: "1080p MP4", url: "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-1080p.mp4" }
            ],
            streams: {
              "1080p": "https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-1080p.mp4"
            }
          }
        ]
      }
    ],
    sources: [
      { quality: "1080p", label: "1080p HLS", url: "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8" }
    ],
    streams: {
      "1080p": "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
    },
    subtitles: [
      { lang: "en", label: "English", src: "/subtitles/tears_en.vtt", default: true }
    ]
  }
];

export const GENRES = [
  "Action",
  "Sci-Fi",
  "Cyberpunk",
  "Fantasy",
  "Adventure",
  "Animation",
  "Comedy",
  "Drama",
  "Crime",
  "Thriller",
  "Documentary",
  "Micro-Drama",
  "Romance"
];

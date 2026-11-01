package ou;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static volatile a f72114s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f72115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f72116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f72117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f72118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f72119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f72120f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f72121g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f72122h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f72123i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f72124j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f72125k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f72126l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f72127m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f72128n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f72129o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f72130p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f72131q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f72132r;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f72133a = 10000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f72134b = 10000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f72135c = 30000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f72136d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f72137e = 1000;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f72138f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f72139g = 600000;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f72140h = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f72141i = "tinker_custom.log";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f72142j = 52428800;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f72143k = "tinker_patch";

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f72144l = 10000;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private long f72145m = 30000;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f72146n = true;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f72147o = true;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f72148p = "wefeed-mobile-bff";

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private String f72149q = "both";

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private String f72150r = "";

        public static b z(a aVar) {
            b bVar = new b();
            bVar.f72133a = aVar.f72115a;
            bVar.f72134b = aVar.f72116b;
            bVar.f72135c = aVar.f72117c;
            bVar.f72136d = aVar.f72118d;
            bVar.f72137e = aVar.f72119e;
            bVar.f72138f = aVar.f72120f;
            bVar.f72139g = aVar.f72121g;
            bVar.f72140h = aVar.f72122h;
            bVar.f72141i = aVar.f72123i;
            bVar.f72142j = aVar.f72124j;
            bVar.f72143k = aVar.f72125k;
            bVar.f72144l = aVar.f72126l;
            bVar.f72145m = aVar.f72127m;
            bVar.f72146n = aVar.f72128n;
            bVar.f72147o = aVar.f72129o;
            bVar.f72148p = aVar.f72130p;
            bVar.f72149q = aVar.f72131q;
            bVar.f72150r = aVar.f72132r;
            return bVar;
        }

        public b A(int i11) {
            this.f72133a = Math.max(1000, i11);
            return this;
        }

        public b B(int i11) {
            this.f72134b = Math.max(1000, i11);
            return this;
        }

        public b C(boolean z10) {
            this.f72147o = z10;
            return this;
        }

        public b D(long j11) {
            this.f72140h = Math.max(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM, j11);
            return this;
        }

        public b E(String str) {
            if (str != null && !str.trim().isEmpty()) {
                this.f72141i = str.trim();
            }
            return this;
        }

        public b F(long j11) {
            this.f72142j = Math.max(0L, j11);
            return this;
        }

        public b G(long j11) {
            this.f72135c = Math.max(1000L, j11);
            return this;
        }

        public b H(String str) {
            if (str != null && !str.trim().isEmpty()) {
                this.f72149q = str.trim();
            }
            return this;
        }

        public b I(String str) {
            if (str != null && !str.trim().isEmpty()) {
                this.f72143k = str.trim();
            }
            return this;
        }

        public b J(long j11) {
            this.f72144l = Math.max(1000L, j11);
            return this;
        }

        public b K(long j11) {
            this.f72145m = Math.max(10000L, j11);
            return this;
        }

        public a s() {
            return new a(this);
        }

        public b t(String str) {
            if (str != null) {
                this.f72150r = str.trim();
            }
            return this;
        }

        public b u(int i11) {
            this.f72138f = Math.max(1, i11);
            return this;
        }

        public b v(long j11) {
            this.f72139g = Math.max(1000L, j11);
            return this;
        }

        public b w(int i11) {
            this.f72136d = Math.max(0, i11);
            return this;
        }

        public b x(long j11) {
            this.f72137e = Math.max(0L, j11);
            return this;
        }

        public b y(boolean z10) {
            this.f72146n = z10;
            return this;
        }
    }

    private a(b bVar) {
        this.f72115a = bVar.f72133a;
        this.f72116b = bVar.f72134b;
        this.f72117c = bVar.f72135c;
        this.f72118d = bVar.f72136d;
        this.f72119e = bVar.f72137e;
        this.f72120f = bVar.f72138f;
        this.f72121g = bVar.f72139g;
        this.f72122h = bVar.f72140h;
        this.f72123i = bVar.f72141i;
        this.f72124j = bVar.f72142j;
        this.f72125k = bVar.f72143k;
        this.f72126l = bVar.f72144l;
        this.f72127m = bVar.f72145m;
        this.f72128n = bVar.f72146n;
        this.f72129o = bVar.f72147o;
        this.f72130p = bVar.f72148p;
        this.f72131q = bVar.f72149q;
        this.f72132r = bVar.f72150r;
    }

    public static void H(a aVar) {
        if (aVar != null) {
            f72114s = aVar;
        }
    }

    public static a s() {
        a aVarS = f72114s;
        if (aVarS == null) {
            synchronized (a.class) {
                try {
                    aVarS = f72114s;
                    if (aVarS == null) {
                        aVarS = new b().s();
                        f72114s = aVarS;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return aVarS;
    }

    public int A() {
        return this.f72116b;
    }

    public long B() {
        return this.f72122h;
    }

    public String C() {
        return this.f72123i;
    }

    public long D() {
        return this.f72124j;
    }

    public long E() {
        return this.f72117c;
    }

    public String F() {
        return this.f72131q;
    }

    public String G() {
        return this.f72125k;
    }

    public boolean I() {
        return this.f72128n;
    }

    public boolean J() {
        return this.f72129o;
    }

    public String t() {
        return this.f72130p;
    }

    public String u() {
        return this.f72132r;
    }

    public int v() {
        return this.f72120f;
    }

    public long w() {
        return this.f72121g;
    }

    public int x() {
        return this.f72118d;
    }

    public long y() {
        return this.f72119e;
    }

    public int z() {
        return this.f72115a;
    }
}

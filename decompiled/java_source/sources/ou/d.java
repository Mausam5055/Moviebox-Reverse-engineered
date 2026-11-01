package ou;

import com.transsion.tinker.lib.custom.api.DownloadPolicy;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f72151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f72152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f72153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f72154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f72155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f72156f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f72157g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f72158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f72159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f72160j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f72161k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f72162l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final DownloadPolicy f72163m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f72164n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f72165o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f72166p;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f72167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f72168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f72169c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f72170d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f72171e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f72172f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f72173g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f72174h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f72175i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f72176j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f72177k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f72178l = 0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private DownloadPolicy f72179m = DownloadPolicy.ANY;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f72180n = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private long f72181o = 0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f72182p = true;

        public b(String str, String str2) {
            if (str == null || str.trim().isEmpty()) {
                throw new IllegalArgumentException("PatchInfo.Builder: url must not be empty");
            }
            if (str2 == null || str2.trim().isEmpty()) {
                throw new IllegalArgumentException("PatchInfo.Builder: patchId must not be empty");
            }
            this.f72167a = str;
            this.f72168b = str2;
        }

        public d q() {
            return new d(this);
        }

        public b r(DownloadPolicy downloadPolicy) {
            this.f72179m = downloadPolicy;
            return this;
        }

        public b s(long j11) {
            this.f72178l = j11;
            return this;
        }

        public b t(boolean z10) {
            this.f72177k = z10;
            return this;
        }

        public b u(String str) {
            this.f72173g = str;
            return this;
        }

        public b v(int i11) {
            this.f72180n = Math.max(0, i11);
            return this;
        }

        public b w(long j11) {
            this.f72181o = Math.max(0L, j11);
            return this;
        }

        public b x(long j11) {
            this.f72175i = j11;
            return this;
        }

        public b y(String str) {
            this.f72172f = str;
            return this;
        }
    }

    private d(b bVar) {
        this.f72151a = bVar.f72167a;
        this.f72152b = bVar.f72168b;
        this.f72153c = bVar.f72169c;
        this.f72154d = bVar.f72170d;
        this.f72155e = bVar.f72171e;
        this.f72156f = bVar.f72172f;
        this.f72157g = bVar.f72173g;
        this.f72158h = bVar.f72174h;
        this.f72159i = bVar.f72175i;
        this.f72160j = bVar.f72176j;
        this.f72161k = bVar.f72177k;
        this.f72162l = bVar.f72178l;
        this.f72163m = bVar.f72179m != null ? bVar.f72179m : DownloadPolicy.ANY;
        this.f72164n = bVar.f72180n;
        this.f72165o = bVar.f72181o;
        this.f72166p = bVar.f72182p;
    }

    public String a() {
        return this.f72153c;
    }

    public DownloadPolicy b() {
        return this.f72163m;
    }

    public String c() {
        return this.f72151a;
    }

    public long d() {
        return this.f72162l;
    }

    public String e() {
        return this.f72157g;
    }

    public String f() {
        return this.f72152b;
    }

    public int g() {
        return this.f72164n;
    }

    public long h() {
        return this.f72165o;
    }

    public long i() {
        return this.f72159i;
    }

    public String j() {
        return this.f72156f;
    }

    public int k() {
        return this.f72155e;
    }

    public int l() {
        return this.f72154d;
    }

    public boolean m() {
        return this.f72166p;
    }

    public boolean n() {
        return this.f72161k;
    }
}

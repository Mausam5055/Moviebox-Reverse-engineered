package androidx.media3.exoplayer.audio;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k f11197d = new b().d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f11198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f11199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11200c;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f11201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f11202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f11203c;

        public k d() {
            if (this.f11201a || !(this.f11202b || this.f11203c)) {
                return new k(this);
            }
            throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
        }

        public b e(boolean z10) {
            this.f11201a = z10;
            return this;
        }

        public b f(boolean z10) {
            this.f11202b = z10;
            return this;
        }

        public b g(boolean z10) {
            this.f11203c = z10;
            return this;
        }
    }

    private k(b bVar) {
        this.f11198a = bVar.f11201a;
        this.f11199b = bVar.f11202b;
        this.f11200c = bVar.f11203c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f11198a == kVar.f11198a && this.f11199b == kVar.f11199b && this.f11200c == kVar.f11200c;
    }

    public int hashCode() {
        return ((this.f11198a ? 1 : 0) << 2) + ((this.f11199b ? 1 : 0) << 1) + (this.f11200c ? 1 : 0);
    }
}

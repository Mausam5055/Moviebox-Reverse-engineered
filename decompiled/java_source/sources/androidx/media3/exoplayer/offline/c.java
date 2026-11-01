package androidx.media3.exoplayer.offline;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DownloadRequest f12413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f12415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f12416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f12417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12418f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f12419g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final l f12420h;

    public c(DownloadRequest downloadRequest, int i11, long j11, long j12, long j13, int i12, int i13) {
        this(downloadRequest, i11, j11, j12, j13, i12, i13, new l());
    }

    public c(DownloadRequest downloadRequest, int i11, long j11, long j12, long j13, int i12, int i13, l lVar) {
        androidx.media3.common.util.a.e(lVar);
        boolean z10 = false;
        androidx.media3.common.util.a.a((i13 == 0) == (i11 != 4));
        if (i12 != 0) {
            if (i11 != 2 && i11 != 0) {
                z10 = true;
            }
            androidx.media3.common.util.a.a(z10);
        }
        this.f12413a = downloadRequest;
        this.f12414b = i11;
        this.f12415c = j11;
        this.f12416d = j12;
        this.f12417e = j13;
        this.f12418f = i12;
        this.f12419g = i13;
        this.f12420h = lVar;
    }

    public long a() {
        return this.f12420h.f12424a;
    }

    public float b() {
        return this.f12420h.f12425b;
    }

    public boolean c() {
        int i11 = this.f12414b;
        return i11 == 3 || i11 == 4;
    }
}

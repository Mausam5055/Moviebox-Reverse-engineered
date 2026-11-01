package t9;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final AtomicLong f76099h = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f76100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.exoplayer2.upstream.n f76101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f76102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f76103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f76104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f76105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f76106g;

    public h(long j11, com.google.android.exoplayer2.upstream.n nVar, long j12) {
        this(j11, nVar, nVar.f27437a, Collections.emptyMap(), j12, 0L, 0L);
    }

    public h(long j11, com.google.android.exoplayer2.upstream.n nVar, Uri uri, Map map, long j12, long j13, long j14) {
        this.f76100a = j11;
        this.f76101b = nVar;
        this.f76102c = uri;
        this.f76103d = map;
        this.f76104e = j12;
        this.f76105f = j13;
        this.f76106g = j14;
    }

    public static long a() {
        return f76099h.getAndIncrement();
    }
}

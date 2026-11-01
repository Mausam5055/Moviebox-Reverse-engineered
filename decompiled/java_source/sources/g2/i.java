package g2;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final AtomicLong f63207h = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f63208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w1.h f63209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f63210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f63211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f63212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f63213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f63214g;

    public i(long j11, w1.h hVar, long j12) {
        this(j11, hVar, hVar.f77511a, Collections.emptyMap(), j12, 0L, 0L);
    }

    public i(long j11, w1.h hVar, Uri uri, Map map, long j12, long j13, long j14) {
        this.f63208a = j11;
        this.f63209b = hVar;
        this.f63210c = uri;
        this.f63211d = map;
        this.f63212e = j12;
        this.f63213f = j13;
        this.f63214g = j14;
    }

    public static long a() {
        return f63207h.getAndIncrement();
    }
}

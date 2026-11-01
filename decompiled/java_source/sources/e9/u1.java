package e9;

import android.media.metrics.LogSessionId;

/* JADX INFO: loaded from: classes4.dex */
public final class u1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final u1 f61801b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f61802a;

    private static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f61803b = new a(LogSessionId.LOG_SESSION_ID_NONE);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LogSessionId f61804a;

        public a(LogSessionId logSessionId) {
            this.f61804a = logSessionId;
        }
    }

    static {
        f61801b = com.google.android.exoplayer2.util.p0.f27626a < 31 ? new u1() : new u1(a.f61803b);
    }

    public u1() {
        this((a) null);
        com.google.android.exoplayer2.util.a.g(com.google.android.exoplayer2.util.p0.f27626a < 31);
    }

    public u1(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private u1(a aVar) {
        this.f61802a = aVar;
    }

    public LogSessionId a() {
        return ((a) com.google.android.exoplayer2.util.a.e(this.f61802a)).f61804a;
    }
}

package i3;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public interface s {

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f64923a = new C0785a();

        /* JADX INFO: renamed from: i3.s$a$a, reason: collision with other inner class name */
        class C0785a implements a {
            C0785a() {
            }

            @Override // i3.s.a
            public boolean a(androidx.media3.common.r rVar) {
                return false;
            }

            @Override // i3.s.a
            public int b(androidx.media3.common.r rVar) {
                return 1;
            }

            @Override // i3.s.a
            public s c(androidx.media3.common.r rVar) {
                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
            }
        }

        boolean a(androidx.media3.common.r rVar);

        int b(androidx.media3.common.r rVar);

        s c(androidx.media3.common.r rVar);
    }

    public static class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final b f64924c = new b(C.TIME_UNSET, false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f64925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f64926b;

        private b(long j11, boolean z10) {
            this.f64925a = j11;
            this.f64926b = z10;
        }

        public static b b() {
            return f64924c;
        }

        public static b c(long j11) {
            return new b(j11, true);
        }
    }

    void a(byte[] bArr, int i11, int i12, b bVar, androidx.media3.common.util.m mVar);

    k b(byte[] bArr, int i11, int i12);

    int c();

    void reset();
}

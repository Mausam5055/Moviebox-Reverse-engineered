package androidx.media3.exoplayer;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class m implements u2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.h f12104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f12105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f12106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f12107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f12108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f12109f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f12110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f12111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f12112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final HashMap f12113j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f12114k;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.media3.exoplayer.upstream.h f12115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f12116b = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f12117c = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f12118d = 1000;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f12119e = 2000;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f12120f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f12121g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f12122h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f12123i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f12124j;

        public m a() {
            androidx.media3.common.util.a.g(!this.f12124j);
            this.f12124j = true;
            if (this.f12115a == null) {
                this.f12115a = new androidx.media3.exoplayer.upstream.h(true, 65536);
            }
            return new m(this.f12115a, this.f12116b, this.f12117c, this.f12118d, this.f12119e, this.f12120f, this.f12121g, this.f12122h, this.f12123i);
        }

        public b b(int i11, int i12, int i13, int i14) {
            androidx.media3.common.util.a.g(!this.f12124j);
            m.k(i13, 0, "bufferForPlaybackMs", "0");
            m.k(i14, 0, "bufferForPlaybackAfterRebufferMs", "0");
            m.k(i11, i13, "minBufferMs", "bufferForPlaybackMs");
            m.k(i11, i14, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            m.k(i12, i11, "maxBufferMs", "minBufferMs");
            this.f12116b = i11;
            this.f12117c = i12;
            this.f12118d = i13;
            this.f12119e = i14;
            return this;
        }

        public b c(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12124j);
            this.f12121g = z10;
            return this;
        }

        public b d(int i11) {
            androidx.media3.common.util.a.g(!this.f12124j);
            this.f12120f = i11;
            return this;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f12125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12126b;

        private c() {
        }
    }

    public m() {
        this(new androidx.media3.exoplayer.upstream.h(true, 65536), DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, 1000, 2000, -1, false, 0, false);
    }

    protected m(androidx.media3.exoplayer.upstream.h hVar, int i11, int i12, int i13, int i14, int i15, boolean z10, int i16, boolean z11) {
        k(i13, 0, "bufferForPlaybackMs", "0");
        k(i14, 0, "bufferForPlaybackAfterRebufferMs", "0");
        k(i11, i13, "minBufferMs", "bufferForPlaybackMs");
        k(i11, i14, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        k(i12, i11, "maxBufferMs", "minBufferMs");
        k(i16, 0, "backBufferDurationMs", "0");
        this.f12104a = hVar;
        this.f12105b = androidx.media3.common.util.a1.R0(i11);
        this.f12106c = androidx.media3.common.util.a1.R0(i12);
        this.f12107d = androidx.media3.common.util.a1.R0(i13);
        this.f12108e = androidx.media3.common.util.a1.R0(i14);
        this.f12109f = i15;
        this.f12110g = z10;
        this.f12111h = androidx.media3.common.util.a1.R0(i16);
        this.f12112i = z11;
        this.f12113j = new HashMap();
        this.f12114k = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(int i11, int i12, String str, String str2) {
        androidx.media3.common.util.a.b(i11 >= i12, str + " cannot be less than " + str2);
    }

    private static int n(int i11) {
        switch (i11) {
            case -2:
                return 0;
            case -1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 0:
                return 144310272;
            case 1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
            default:
                throw new IllegalArgumentException();
        }
    }

    private void o(y1.f4 f4Var) {
        if (this.f12113j.remove(f4Var) != null) {
            q();
        }
    }

    private void p(y1.f4 f4Var) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12113j.get(f4Var));
        int i11 = this.f12109f;
        if (i11 == -1) {
            i11 = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        cVar.f12126b = i11;
        cVar.f12125a = false;
    }

    private void q() {
        if (this.f12113j.isEmpty()) {
            this.f12104a.d();
        } else {
            this.f12104a.e(m());
        }
    }

    @Override // androidx.media3.exoplayer.u2
    public boolean a(u2.a aVar) {
        long jL0 = androidx.media3.common.util.a1.l0(aVar.f12932e, aVar.f12933f);
        long jMin = aVar.f12935h ? this.f12108e : this.f12107d;
        long j11 = aVar.f12936i;
        if (j11 != C.TIME_UNSET) {
            jMin = Math.min(j11 / 2, jMin);
        }
        return jMin <= 0 || jL0 >= jMin || (!this.f12110g && this.f12104a.c() >= m());
    }

    @Override // androidx.media3.exoplayer.u2
    public void b(y1.f4 f4Var) {
        o(f4Var);
        if (this.f12113j.isEmpty()) {
            this.f12114k = -1L;
        }
    }

    @Override // androidx.media3.exoplayer.u2
    public void c(y1.f4 f4Var) {
        long id2 = Thread.currentThread().getId();
        long j11 = this.f12114k;
        androidx.media3.common.util.a.h(j11 == -1 || j11 == id2, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.f12114k = id2;
        if (!this.f12113j.containsKey(f4Var)) {
            this.f12113j.put(f4Var, new c());
        }
        p(f4Var);
    }

    @Override // androidx.media3.exoplayer.u2
    public void d(y1.f4 f4Var) {
        o(f4Var);
    }

    @Override // androidx.media3.exoplayer.u2
    public boolean e(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j11) {
        Iterator it = this.f12113j.values().iterator();
        while (it.hasNext()) {
            if (((c) it.next()).f12125a) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.u2
    public boolean f(u2.a aVar) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12113j.get(aVar.f12928a));
        boolean z10 = true;
        boolean z11 = this.f12104a.c() >= m();
        long jMin = this.f12105b;
        float f11 = aVar.f12933f;
        if (f11 > 1.0f) {
            jMin = Math.min(androidx.media3.common.util.a1.g0(jMin, f11), this.f12106c);
        }
        long jMax = Math.max(jMin, 500000L);
        long j11 = aVar.f12932e;
        if (j11 < jMax) {
            if (!this.f12110g && z11) {
                z10 = false;
            }
            cVar.f12125a = z10;
            if (!z10 && j11 < 500000) {
                androidx.media3.common.util.u.h("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f12106c || z11) {
            cVar.f12125a = false;
        }
        return cVar.f12125a;
    }

    @Override // androidx.media3.exoplayer.u2
    public void g(u2.a aVar, g2.z zVar, j2.z[] zVarArr) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12113j.get(aVar.f12928a));
        int iL = this.f12109f;
        if (iL == -1) {
            iL = l(zVarArr);
        }
        cVar.f12126b = iL;
        q();
    }

    @Override // androidx.media3.exoplayer.u2
    public androidx.media3.exoplayer.upstream.b getAllocator() {
        return this.f12104a;
    }

    @Override // androidx.media3.exoplayer.u2
    public long h(y1.f4 f4Var) {
        return this.f12111h;
    }

    @Override // androidx.media3.exoplayer.u2
    public boolean i(y1.f4 f4Var) {
        return this.f12112i;
    }

    protected int l(j2.z[] zVarArr) {
        int iN = 0;
        for (j2.z zVar : zVarArr) {
            if (zVar != null) {
                iN += n(zVar.getTrackGroup().f9973c);
            }
        }
        return Math.max(C.DEFAULT_VIDEO_BUFFER_SIZE, iN);
    }

    int m() {
        Iterator it = this.f12113j.values().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            i11 += ((c) it.next()).f12126b;
        }
        return i11;
    }
}

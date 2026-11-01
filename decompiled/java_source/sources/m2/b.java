package m2;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i3.s;
import java.io.EOFException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import l2.h0;
import l2.i;
import l2.l0;
import l2.m0;
import l2.n;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;
import l2.w;
import l2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements r {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final x f69100s = new x() { // from class: m2.a
        @Override // l2.x
        public /* synthetic */ x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ x b(int i11) {
            return w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override // l2.x
        public final r[] createExtractors() {
            return b.o();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int[] f69101t = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int[] f69102u = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final byte[] f69103v = a1.u0("#!AMR\n");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final byte[] f69104w = a1.u0("#!AMR-WB\n");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f69105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f69106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s0 f69107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f69108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f69109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f69110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f69112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f69113i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f69114j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f69115k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private t f69116l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private s0 f69117m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private s0 f69118n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private m0 f69119o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f69120p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f69121q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f69122r;

    public b() {
        this(0);
    }

    public b(int i11) {
        this.f69106b = (i11 & 2) != 0 ? i11 | 1 : i11;
        this.f69105a = new byte[1];
        this.f69113i = -1;
        n nVar = new n();
        this.f69107c = nVar;
        this.f69118n = nVar;
    }

    private void g() {
        androidx.media3.common.util.a.i(this.f69117m);
        a1.i(this.f69116l);
    }

    private static int h(int i11, long j11) {
        return (int) ((((long) i11) * 8000000) / j11);
    }

    private m0 i(long j11, boolean z10) {
        return new i(j11, this.f69112h, h(this.f69113i, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT), this.f69113i, z10);
    }

    private int j(int i11) throws ParserException {
        if (m(i11)) {
            return this.f69108d ? f69102u[i11] : f69101t[i11];
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Illegal AMR ");
        sb2.append(this.f69108d ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i11);
        throw ParserException.createForMalformedContainer(sb2.toString(), null);
    }

    private boolean k(int i11) {
        return !this.f69108d && (i11 < 12 || i11 > 14);
    }

    private boolean l(long j11, long j12) {
        return Math.abs(j12 - j11) < DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
    }

    private boolean m(int i11) {
        return i11 >= 0 && i11 <= 15 && (n(i11) || k(i11));
    }

    private boolean n(int i11) {
        return this.f69108d && (i11 < 10 || i11 > 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] o() {
        return new r[]{new b()};
    }

    private void p() {
        if (this.f69122r) {
            return;
        }
        this.f69122r = true;
        boolean z10 = this.f69108d;
        String str = MimeTypes.AUDIO_AMR_WB;
        String str2 = z10 ? MimeTypes.AUDIO_AMR_WB : "audio/amr";
        if (!z10) {
            str = MimeTypes.AUDIO_AMR_NB;
        }
        this.f69117m.c(new androidx.media3.common.r.b().U(str2).u0(str).k0(z10 ? f69102u[8] : f69101t[7]).R(1).v0(z10 ? 16000 : 8000).N());
    }

    private void q(long j11, int i11) {
        int i12;
        if (this.f69119o != null) {
            return;
        }
        int i13 = this.f69106b;
        if ((i13 & 4) != 0) {
            this.f69119o = new h0(new long[]{this.f69112h}, new long[]{0}, C.TIME_UNSET);
        } else if ((i13 & 1) == 0 || !((i12 = this.f69113i) == -1 || i12 == this.f69110f)) {
            this.f69119o = new m0.b(C.TIME_UNSET);
        } else if (this.f69114j >= 20 || i11 == -1) {
            m0 m0VarI = i(j11, (i13 & 2) != 0);
            this.f69119o = m0VarI;
            this.f69117m.f(m0VarI.getDurationUs());
        }
        m0 m0Var = this.f69119o;
        if (m0Var != null) {
            this.f69116l.f(m0Var);
        }
    }

    private static boolean r(l2.s sVar, byte[] bArr) {
        sVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        sVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int s(l2.s sVar) throws ParserException {
        sVar.resetPeekPosition();
        sVar.peekFully(this.f69105a, 0, 1);
        byte b11 = this.f69105a[0];
        if ((b11 & 131) <= 0) {
            return j((b11 >> 3) & 15);
        }
        throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b11), null);
    }

    private boolean t(l2.s sVar) {
        byte[] bArr = f69103v;
        if (r(sVar, bArr)) {
            this.f69108d = false;
            sVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f69104w;
        if (!r(sVar, bArr2)) {
            return false;
        }
        this.f69108d = true;
        sVar.skipFully(bArr2.length);
        return true;
    }

    private int u(l2.s sVar) throws ParserException {
        if (this.f69111g == 0) {
            try {
                int iS = s(sVar);
                this.f69110f = iS;
                this.f69111g = iS;
                if (this.f69113i == -1) {
                    this.f69112h = sVar.getPosition();
                    this.f69113i = this.f69110f;
                }
                if (this.f69113i == this.f69110f) {
                    this.f69114j++;
                }
                m0 m0Var = this.f69119o;
                if (m0Var instanceof h0) {
                    h0 h0Var = (h0) m0Var;
                    long j11 = this.f69115k + this.f69109e + DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
                    long position = sVar.getPosition() + ((long) this.f69110f);
                    if (!h0Var.c(j11, 100000L)) {
                        h0Var.b(j11, position);
                    }
                    if (this.f69120p && l(j11, this.f69121q)) {
                        this.f69120p = false;
                        this.f69118n = this.f69117m;
                    }
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iE = this.f69118n.e(sVar, this.f69111g, true);
        if (iE == -1) {
            return -1;
        }
        int i11 = this.f69111g - iE;
        this.f69111g = i11;
        if (i11 > 0) {
            return 0;
        }
        this.f69118n.d(this.f69115k + this.f69109e, 1, this.f69110f, 0, null);
        this.f69109e += DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
        return 0;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f69116l = tVar;
        s0 s0VarTrack = tVar.track(0, 1);
        this.f69117m = s0VarTrack;
        this.f69118n = s0VarTrack;
        tVar.endTracks();
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        g();
        if (sVar.getPosition() == 0 && !t(sVar)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        p();
        int iU = u(sVar);
        q(sVar.getLength(), iU);
        if (iU == -1) {
            m0 m0Var = this.f69119o;
            if (m0Var instanceof h0) {
                long j11 = this.f69115k + this.f69109e;
                ((h0) m0Var).d(j11);
                this.f69116l.f(this.f69119o);
                this.f69117m.f(j11);
            }
        }
        return iU;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        return t(sVar);
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f69109e = 0L;
        this.f69110f = 0;
        this.f69111g = 0;
        this.f69121q = j12;
        m0 m0Var = this.f69119o;
        if (!(m0Var instanceof h0)) {
            if (j11 == 0 || !(m0Var instanceof i)) {
                this.f69115k = 0L;
                return;
            } else {
                this.f69115k = ((i) m0Var).c(j11);
                return;
            }
        }
        long timeUs = ((h0) m0Var).getTimeUs(j11);
        this.f69115k = timeUs;
        if (l(timeUs, this.f69121q)) {
            return;
        }
        this.f69120p = true;
        this.f69118n = this.f69107c;
    }
}

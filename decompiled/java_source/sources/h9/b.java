package h9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.a0;
import g9.b0;
import g9.e;
import g9.e0;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import java.io.EOFException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements l {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f64387r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f64390u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f64391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f64392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f64393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f64394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f64397g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f64398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64400j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f64401k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private n f64402l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private e0 f64403m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b0 f64404n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f64405o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final r f64385p = new r() { // from class: h9.a
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return b.l();
        }
    };

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int[] f64386q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final byte[] f64388s = p0.n0("#!AMR\n");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final byte[] f64389t = p0.n0("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f64387r = iArr;
        f64390u = iArr[8];
    }

    public b() {
        this(0);
    }

    public b(int i11) {
        this.f64392b = (i11 & 2) != 0 ? i11 | 1 : i11;
        this.f64391a = new byte[1];
        this.f64399i = -1;
    }

    private void e() {
        com.google.android.exoplayer2.util.a.i(this.f64403m);
        p0.j(this.f64402l);
    }

    private static int f(int i11, long j11) {
        return (int) ((((long) i11) * 8000000) / j11);
    }

    private b0 g(long j11, boolean z10) {
        return new e(j11, this.f64398h, f(this.f64399i, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT), this.f64399i, z10);
    }

    private int h(int i11) throws ParserException {
        if (j(i11)) {
            return this.f64393c ? f64387r[i11] : f64386q[i11];
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Illegal AMR ");
        sb2.append(this.f64393c ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i11);
        throw ParserException.createForMalformedContainer(sb2.toString(), null);
    }

    private boolean i(int i11) {
        return !this.f64393c && (i11 < 12 || i11 > 14);
    }

    private boolean j(int i11) {
        return i11 >= 0 && i11 <= 15 && (k(i11) || i(i11));
    }

    private boolean k(int i11) {
        return this.f64393c && (i11 < 10 || i11 > 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] l() {
        return new l[]{new b()};
    }

    private void m() {
        if (this.f64405o) {
            return;
        }
        this.f64405o = true;
        boolean z10 = this.f64393c;
        this.f64403m.e(new o1.b().e0(z10 ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB).W(f64390u).H(1).f0(z10 ? 16000 : 8000).E());
    }

    private void n(long j11, int i11) {
        int i12;
        if (this.f64397g) {
            return;
        }
        int i13 = this.f64392b;
        if ((i13 & 1) == 0 || j11 == -1 || !((i12 = this.f64399i) == -1 || i12 == this.f64395e)) {
            b0.b bVar = new b0.b(C.TIME_UNSET);
            this.f64404n = bVar;
            this.f64402l.d(bVar);
            this.f64397g = true;
            return;
        }
        if (this.f64400j >= 20 || i11 == -1) {
            b0 b0VarG = g(j11, (i13 & 2) != 0);
            this.f64404n = b0VarG;
            this.f64402l.d(b0VarG);
            this.f64397g = true;
        }
    }

    private static boolean o(m mVar, byte[] bArr) {
        mVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        mVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int p(m mVar) throws ParserException {
        mVar.resetPeekPosition();
        mVar.peekFully(this.f64391a, 0, 1);
        byte b11 = this.f64391a[0];
        if ((b11 & 131) <= 0) {
            return h((b11 >> 3) & 15);
        }
        throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b11), null);
    }

    private boolean q(m mVar) {
        byte[] bArr = f64388s;
        if (o(mVar, bArr)) {
            this.f64393c = false;
            mVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f64389t;
        if (!o(mVar, bArr2)) {
            return false;
        }
        this.f64393c = true;
        mVar.skipFully(bArr2.length);
        return true;
    }

    private int r(m mVar) throws ParserException {
        if (this.f64396f == 0) {
            try {
                int iP = p(mVar);
                this.f64395e = iP;
                this.f64396f = iP;
                if (this.f64399i == -1) {
                    this.f64398h = mVar.getPosition();
                    this.f64399i = this.f64395e;
                }
                if (this.f64399i == this.f64395e) {
                    this.f64400j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iB = this.f64403m.b(mVar, this.f64396f, true);
        if (iB == -1) {
            return -1;
        }
        int i11 = this.f64396f - iB;
        this.f64396f = i11;
        if (i11 > 0) {
            return 0;
        }
        this.f64403m.d(this.f64401k + this.f64394d, 1, this.f64395e, 0, null);
        this.f64394d += DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT;
        return 0;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f64402l = nVar;
        this.f64403m = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) throws ParserException {
        e();
        if (mVar.getPosition() == 0 && !q(mVar)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        m();
        int iR = r(mVar);
        n(mVar.getLength(), iR);
        return iR;
    }

    @Override // g9.l
    public boolean d(m mVar) {
        return q(mVar);
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.f64394d = 0L;
        this.f64395e = 0;
        this.f64396f = 0;
        if (j11 != 0) {
            b0 b0Var = this.f64404n;
            if (b0Var instanceof e) {
                this.f64401k = ((e) b0Var).c(j11);
                return;
            }
        }
        this.f64401k = 0L;
    }
}

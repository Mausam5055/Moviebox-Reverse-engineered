package i3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import l2.r0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class v implements s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s0 f64934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s.a f64935b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private s f64941h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.media3.common.r f64942i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f64943j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f64936c = new d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64938e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64939f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f64940g = a1.f10355f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f64937d = new j0();

    public v(s0 s0Var, s.a aVar) {
        this.f64934a = s0Var;
        this.f64935b = aVar;
    }

    private void i(int i11) {
        int length = this.f64940g.length;
        int i12 = this.f64939f;
        if (length - i12 >= i11) {
            return;
        }
        int i13 = i12 - this.f64938e;
        int iMax = Math.max(i13 * 2, i11 + i13);
        byte[] bArr = this.f64940g;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.f64938e, bArr2, 0, i13);
        this.f64938e = 0;
        this.f64939f = i13;
        this.f64940g = bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void j(e eVar, long j11, int i11) {
        androidx.media3.common.util.a.i(this.f64942i);
        byte[] bArrA = this.f64936c.a(eVar.f64896a, eVar.f64898c);
        this.f64937d.T(bArrA);
        this.f64934a.b(this.f64937d, bArrA.length);
        long j12 = eVar.f64897b;
        if (j12 == C.TIME_UNSET) {
            androidx.media3.common.util.a.g(this.f64942i.f10166t == Long.MAX_VALUE);
        } else {
            long j13 = this.f64942i.f10166t;
            j11 = j13 == Long.MAX_VALUE ? j11 + j12 : j12 + j13;
        }
        this.f64934a.d(j11, i11 | 1, bArrA.length, 0, null);
    }

    @Override // l2.s0
    public void a(j0 j0Var, int i11, int i12) {
        if (this.f64941h == null) {
            this.f64934a.a(j0Var, i11, i12);
            return;
        }
        i(i11);
        j0Var.l(this.f64940g, this.f64939f, i11);
        this.f64939f += i11;
    }

    @Override // l2.s0
    public /* synthetic */ void b(j0 j0Var, int i11) {
        r0.c(this, j0Var, i11);
    }

    @Override // l2.s0
    public void c(androidx.media3.common.r rVar) {
        androidx.media3.common.util.a.e(rVar.f10161o);
        androidx.media3.common.util.a.a(y.k(rVar.f10161o) == 3);
        if (!rVar.equals(this.f64942i)) {
            this.f64942i = rVar;
            this.f64941h = this.f64935b.a(rVar) ? this.f64935b.c(rVar) : null;
        }
        if (this.f64941h == null) {
            this.f64934a.c(rVar);
        } else {
            this.f64934a.c(rVar.b().u0("application/x-media3-cues").S(rVar.f10161o).y0(Long.MAX_VALUE).W(this.f64935b.b(rVar)).N());
        }
    }

    @Override // l2.s0
    public void d(final long j11, final int i11, int i12, int i13, s0.a aVar) {
        if (this.f64941h == null) {
            this.f64934a.d(j11, i11, i12, i13, aVar);
            return;
        }
        androidx.media3.common.util.a.b(aVar == null, "DRM on subtitles is not supported");
        int i14 = (this.f64939f - i13) - i12;
        try {
            this.f64941h.a(this.f64940g, i14, i12, s.b.b(), new androidx.media3.common.util.m() { // from class: i3.u
                @Override // androidx.media3.common.util.m
                public final void accept(Object obj) {
                    this.f64931a.j(j11, i11, (e) obj);
                }
            });
        } catch (RuntimeException e11) {
            if (!this.f64943j) {
                throw e11;
            }
            androidx.media3.common.util.u.i("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e11);
        }
        int i15 = i14 + i12;
        this.f64938e = i15;
        if (i15 == this.f64939f) {
            this.f64938e = 0;
            this.f64939f = 0;
        }
    }

    @Override // l2.s0
    public /* synthetic */ int e(androidx.media3.common.j jVar, int i11, boolean z10) {
        return r0.b(this, jVar, i11, z10);
    }

    @Override // l2.s0
    public /* synthetic */ void f(long j11) {
        r0.a(this, j11);
    }

    @Override // l2.s0
    public int g(androidx.media3.common.j jVar, int i11, boolean z10, int i12) throws EOFException {
        if (this.f64941h == null) {
            return this.f64934a.g(jVar, i11, z10, i12);
        }
        i(i11);
        int i13 = jVar.read(this.f64940g, this.f64939f, i11);
        if (i13 != -1) {
            this.f64939f += i13;
            return i13;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public void l(boolean z10) {
        this.f64943j = z10;
    }
}

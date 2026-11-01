package s3;

import android.net.Uri;
import androidx.media3.common.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements l2.r {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final l2.x f74936m = new l2.x() { // from class: s3.g
        @Override // l2.x
        public /* synthetic */ l2.x a(i3.s.a aVar) {
            return l2.w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ l2.x b(int i11) {
            return l2.w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ l2.r[] c(Uri uri, Map map) {
            return l2.w.a(this, uri, map);
        }

        @Override // l2.x
        public final l2.r[] createExtractors() {
            return h.j();
        }

        @Override // l2.x
        public /* synthetic */ l2.x d(boolean z10) {
            return l2.w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f74938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f74941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l2.t f74942f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f74943g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f74944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f74946j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f74947k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f74948l;

    public h() {
        this(0);
    }

    public h(int i11) {
        this.f74937a = (i11 & 2) != 0 ? i11 | 1 : i11;
        this.f74938b = new i(true, MimeTypes.AUDIO_AAC);
        this.f74939c = new androidx.media3.common.util.j0(2048);
        this.f74945i = -1;
        this.f74944h = -1L;
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(10);
        this.f74940d = j0Var;
        this.f74941e = new androidx.media3.common.util.i0(j0Var.e());
    }

    private void g(l2.s sVar) throws ParserException {
        if (this.f74946j) {
            return;
        }
        this.f74945i = -1;
        sVar.resetPeekPosition();
        long j11 = 0;
        if (sVar.getPosition() == 0) {
            l(sVar);
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            try {
                if (sVar.peekFully(this.f74940d.e(), 0, 2, true)) {
                    this.f74940d.W(0);
                    if (!i.l(this.f74940d.P())) {
                        break;
                    }
                    if (sVar.peekFully(this.f74940d.e(), 0, 4, true)) {
                        this.f74941e.p(14);
                        int iH = this.f74941e.h(13);
                        if (iH <= 6) {
                            this.f74946j = true;
                            throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                        }
                        j11 += (long) iH;
                        i12++;
                        if (i12 != 1000 && sVar.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i11 = i12;
            break;
        }
        sVar.resetPeekPosition();
        if (i11 > 0) {
            this.f74945i = (int) (j11 / ((long) i11));
        } else {
            this.f74945i = -1;
        }
        this.f74946j = true;
    }

    private static int h(int i11, long j11) {
        return (int) ((((long) i11) * 8000000) / j11);
    }

    private l2.m0 i(long j11, boolean z10) {
        return new l2.i(j11, this.f74944h, h(this.f74945i, this.f74938b.j()), this.f74945i, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2.r[] j() {
        return new l2.r[]{new h()};
    }

    private void k(long j11, boolean z10) {
        if (this.f74948l) {
            return;
        }
        boolean z11 = (this.f74937a & 1) != 0 && this.f74945i > 0;
        if (z11 && this.f74938b.j() == C.TIME_UNSET && !z10) {
            return;
        }
        if (!z11 || this.f74938b.j() == C.TIME_UNSET) {
            this.f74942f.f(new l2.m0.b(C.TIME_UNSET));
        } else {
            this.f74942f.f(i(j11, (this.f74937a & 2) != 0));
        }
        this.f74948l = true;
    }

    private int l(l2.s sVar) {
        int i11 = 0;
        while (true) {
            sVar.peekFully(this.f74940d.e(), 0, 10);
            this.f74940d.W(0);
            if (this.f74940d.K() != 4801587) {
                break;
            }
            this.f74940d.X(3);
            int iG = this.f74940d.G();
            i11 += iG + 10;
            sVar.advancePeekPosition(iG);
        }
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(i11);
        if (this.f74944h == -1) {
            this.f74944h = i11;
        }
        return i11;
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        this.f74942f = tVar;
        this.f74938b.d(tVar, new l0.d(0, 1));
        tVar.endTracks();
    }

    @Override // l2.r
    public int c(l2.s sVar, l2.l0 l0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f74942f);
        long length = sVar.getLength();
        int i11 = this.f74937a;
        if ((i11 & 2) != 0 || ((i11 & 1) != 0 && length != -1)) {
            g(sVar);
        }
        int i12 = sVar.read(this.f74939c.e(), 0, 2048);
        boolean z10 = i12 == -1;
        k(length, z10);
        if (z10) {
            return -1;
        }
        this.f74939c.W(0);
        this.f74939c.V(i12);
        if (!this.f74947k) {
            this.f74938b.b(this.f74943g, 4);
            this.f74947k = true;
        }
        this.f74938b.a(this.f74939c);
        return 0;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        int iL = l(sVar);
        int i11 = iL;
        int i12 = 0;
        int i13 = 0;
        do {
            sVar.peekFully(this.f74940d.e(), 0, 2);
            this.f74940d.W(0);
            if (i.l(this.f74940d.P())) {
                i12++;
                if (i12 >= 4 && i13 > 188) {
                    return true;
                }
                sVar.peekFully(this.f74940d.e(), 0, 4);
                this.f74941e.p(14);
                int iH = this.f74941e.h(13);
                if (iH <= 6) {
                    i11++;
                    sVar.resetPeekPosition();
                    sVar.advancePeekPosition(i11);
                } else {
                    sVar.advancePeekPosition(iH - 6);
                    i13 += iH;
                }
            } else {
                i11++;
                sVar.resetPeekPosition();
                sVar.advancePeekPosition(i11);
            }
            i12 = 0;
            i13 = 0;
        } while (i11 - iL < 8192);
        return false;
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return l2.q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f74947k = false;
        this.f74938b.seek();
        this.f74943g = j12;
    }
}

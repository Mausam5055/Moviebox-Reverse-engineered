package s3;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements l2.r {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final l2.x f74886l = new l2.x() { // from class: s3.b0
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
            return c0.g();
        }

        @Override // l2.x
        public /* synthetic */ l2.x d(boolean z10) {
            return l2.w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p0 f74887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f74888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a0 f74890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f74892f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f74893g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f74894h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private z f74895i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private l2.t f74896j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f74897k;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final m f74898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final p0 f74899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.media3.common.util.i0 f74900c = new androidx.media3.common.util.i0(new byte[64]);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f74901d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f74902e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f74903f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f74904g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f74905h;

        public a(m mVar, p0 p0Var) {
            this.f74898a = mVar;
            this.f74899b = p0Var;
        }

        private void b() {
            this.f74900c.r(8);
            this.f74901d = this.f74900c.g();
            this.f74902e = this.f74900c.g();
            this.f74900c.r(6);
            this.f74904g = this.f74900c.h(8);
        }

        private void c() {
            this.f74905h = 0L;
            if (this.f74901d) {
                this.f74900c.r(4);
                long jH = ((long) this.f74900c.h(3)) << 30;
                this.f74900c.r(1);
                long jH2 = jH | ((long) (this.f74900c.h(15) << 15));
                this.f74900c.r(1);
                long jH3 = jH2 | ((long) this.f74900c.h(15));
                this.f74900c.r(1);
                if (!this.f74903f && this.f74902e) {
                    this.f74900c.r(4);
                    long jH4 = ((long) this.f74900c.h(3)) << 30;
                    this.f74900c.r(1);
                    long jH5 = jH4 | ((long) (this.f74900c.h(15) << 15));
                    this.f74900c.r(1);
                    long jH6 = jH5 | ((long) this.f74900c.h(15));
                    this.f74900c.r(1);
                    this.f74899b.b(jH6);
                    this.f74903f = true;
                }
                this.f74905h = this.f74899b.b(jH3);
            }
        }

        public void a(androidx.media3.common.util.j0 j0Var) {
            j0Var.l(this.f74900c.f10388a, 0, 3);
            this.f74900c.p(0);
            b();
            j0Var.l(this.f74900c.f10388a, 0, this.f74904g);
            this.f74900c.p(0);
            c();
            this.f74898a.b(this.f74905h, 4);
            this.f74898a.a(j0Var);
            this.f74898a.c(false);
        }

        public void d() {
            this.f74903f = false;
            this.f74898a.seek();
        }
    }

    public c0() {
        this(new p0(0L));
    }

    public c0(p0 p0Var) {
        this.f74887a = p0Var;
        this.f74889c = new androidx.media3.common.util.j0(4096);
        this.f74888b = new SparseArray();
        this.f74890d = new a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2.r[] g() {
        return new l2.r[]{new c0()};
    }

    private void h(long j11) {
        if (this.f74897k) {
            return;
        }
        this.f74897k = true;
        if (this.f74890d.c() == C.TIME_UNSET) {
            this.f74896j.f(new l2.m0.b(this.f74890d.c()));
            return;
        }
        z zVar = new z(this.f74890d.d(), this.f74890d.c(), j11);
        this.f74895i = zVar;
        this.f74896j.f(zVar.b());
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        this.f74896j = tVar;
    }

    @Override // l2.r
    public int c(l2.s sVar, l2.l0 l0Var) {
        m nVar;
        androidx.media3.common.util.a.i(this.f74896j);
        long length = sVar.getLength();
        if (length != -1 && !this.f74890d.e()) {
            return this.f74890d.g(sVar, l0Var);
        }
        h(length);
        z zVar = this.f74895i;
        if (zVar != null && zVar.d()) {
            return this.f74895i.c(sVar, l0Var);
        }
        sVar.resetPeekPosition();
        long peekPosition = length != -1 ? length - sVar.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !sVar.peekFully(this.f74889c.e(), 0, 4, true)) {
            return -1;
        }
        this.f74889c.W(0);
        int iQ = this.f74889c.q();
        if (iQ == 441) {
            return -1;
        }
        if (iQ == 442) {
            sVar.peekFully(this.f74889c.e(), 0, 10);
            this.f74889c.W(9);
            sVar.skipFully((this.f74889c.H() & 7) + 14);
            return 0;
        }
        if (iQ == 443) {
            sVar.peekFully(this.f74889c.e(), 0, 2);
            this.f74889c.W(0);
            sVar.skipFully(this.f74889c.P() + 6);
            return 0;
        }
        if (((iQ & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            sVar.skipFully(1);
            return 0;
        }
        int i11 = iQ & 255;
        a aVar = (a) this.f74888b.get(i11);
        if (!this.f74891e) {
            if (aVar == null) {
                if (i11 == 189) {
                    nVar = new c("video/mp2p");
                    this.f74892f = true;
                    this.f74894h = sVar.getPosition();
                } else if ((iQ & 224) == 192) {
                    nVar = new t("video/mp2p");
                    this.f74892f = true;
                    this.f74894h = sVar.getPosition();
                } else if ((iQ & 240) == 224) {
                    nVar = new n("video/mp2p");
                    this.f74893g = true;
                    this.f74894h = sVar.getPosition();
                } else {
                    nVar = null;
                }
                if (nVar != null) {
                    nVar.d(this.f74896j, new l0.d(i11, 256));
                    aVar = new a(nVar, this.f74887a);
                    this.f74888b.put(i11, aVar);
                }
            }
            if (sVar.getPosition() > ((this.f74892f && this.f74893g) ? this.f74894h + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.f74891e = true;
                this.f74896j.endTracks();
            }
        }
        sVar.peekFully(this.f74889c.e(), 0, 2);
        this.f74889c.W(0);
        int iP = this.f74889c.P() + 6;
        if (aVar == null) {
            sVar.skipFully(iP);
        } else {
            this.f74889c.S(iP);
            sVar.readFully(this.f74889c.e(), 0, iP);
            this.f74889c.W(6);
            aVar.a(this.f74889c);
            androidx.media3.common.util.j0 j0Var = this.f74889c;
            j0Var.V(j0Var.b());
        }
        return 0;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        byte[] bArr = new byte[14];
        sVar.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        sVar.advancePeekPosition(bArr[13] & 7);
        sVar.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
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
        boolean z10 = this.f74887a.f() == C.TIME_UNSET;
        if (!z10) {
            long jD = this.f74887a.d();
            z10 = (jD == C.TIME_UNSET || jD == 0 || jD == j12) ? false : true;
        }
        if (z10) {
            this.f74887a.i(j12);
        }
        z zVar = this.f74895i;
        if (zVar != null) {
            zVar.h(j12);
        }
        for (int i11 = 0; i11 < this.f74888b.size(); i11++) {
            ((a) this.f74888b.valueAt(i11)).d();
        }
    }
}

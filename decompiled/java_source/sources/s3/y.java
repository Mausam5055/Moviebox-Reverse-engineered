package s3;

import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class y implements l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f75267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f75268b = new androidx.media3.common.util.i0(new byte[10]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f75269c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f75270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p0 f75271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f75272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f75273g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f75274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f75275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f75276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75277k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f75278l;

    public y(m mVar) {
        this.f75267a = mVar;
    }

    private boolean d(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i11) {
        int iMin = Math.min(j0Var.a(), i11 - this.f75270d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            j0Var.X(iMin);
        } else {
            j0Var.l(bArr, this.f75270d, iMin);
        }
        int i12 = this.f75270d + iMin;
        this.f75270d = i12;
        return i12 == i11;
    }

    private boolean e() {
        this.f75268b.p(0);
        int iH = this.f75268b.h(24);
        if (iH != 1) {
            androidx.media3.common.util.u.h("PesReader", "Unexpected start code prefix: " + iH);
            this.f75276j = -1;
            return false;
        }
        this.f75268b.r(8);
        int iH2 = this.f75268b.h(16);
        this.f75268b.r(5);
        this.f75277k = this.f75268b.g();
        this.f75268b.r(2);
        this.f75272f = this.f75268b.g();
        this.f75273g = this.f75268b.g();
        this.f75268b.r(6);
        int iH3 = this.f75268b.h(8);
        this.f75275i = iH3;
        if (iH2 == 0) {
            this.f75276j = -1;
        } else {
            int i11 = (iH2 - 3) - iH3;
            this.f75276j = i11;
            if (i11 < 0) {
                androidx.media3.common.util.u.h("PesReader", "Found negative packet payload size: " + this.f75276j);
                this.f75276j = -1;
            }
        }
        return true;
    }

    private void f() {
        this.f75268b.p(0);
        this.f75278l = C.TIME_UNSET;
        if (this.f75272f) {
            this.f75268b.r(4);
            long jH = ((long) this.f75268b.h(3)) << 30;
            this.f75268b.r(1);
            long jH2 = jH | ((long) (this.f75268b.h(15) << 15));
            this.f75268b.r(1);
            long jH3 = jH2 | ((long) this.f75268b.h(15));
            this.f75268b.r(1);
            if (!this.f75274h && this.f75273g) {
                this.f75268b.r(4);
                long jH4 = ((long) this.f75268b.h(3)) << 30;
                this.f75268b.r(1);
                long jH5 = jH4 | ((long) (this.f75268b.h(15) << 15));
                this.f75268b.r(1);
                long jH6 = jH5 | ((long) this.f75268b.h(15));
                this.f75268b.r(1);
                this.f75271e.b(jH6);
                this.f75274h = true;
            }
            this.f75278l = this.f75271e.b(jH3);
        }
    }

    private void g(int i11) {
        this.f75269c = i11;
        this.f75270d = 0;
    }

    @Override // s3.l0
    public void a(androidx.media3.common.util.j0 j0Var, int i11) {
        androidx.media3.common.util.a.i(this.f75271e);
        if ((i11 & 1) != 0) {
            int i12 = this.f75269c;
            if (i12 != 0 && i12 != 1) {
                if (i12 == 2) {
                    androidx.media3.common.util.u.h("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f75276j != -1) {
                        androidx.media3.common.util.u.h("PesReader", "Unexpected start indicator: expected " + this.f75276j + " more bytes");
                    }
                    this.f75267a.c(j0Var.g() == 0);
                }
            }
            g(1);
        }
        while (j0Var.a() > 0) {
            int i13 = this.f75269c;
            if (i13 == 0) {
                j0Var.X(j0Var.a());
            } else if (i13 != 1) {
                if (i13 == 2) {
                    if (d(j0Var, this.f75268b.f10388a, Math.min(10, this.f75275i)) && d(j0Var, null, this.f75275i)) {
                        f();
                        i11 |= this.f75277k ? 4 : 0;
                        this.f75267a.b(this.f75278l, i11);
                        g(3);
                    }
                } else {
                    if (i13 != 3) {
                        throw new IllegalStateException();
                    }
                    int iA = j0Var.a();
                    int i14 = this.f75276j;
                    int i15 = i14 == -1 ? 0 : iA - i14;
                    if (i15 > 0) {
                        iA -= i15;
                        j0Var.V(j0Var.f() + iA);
                    }
                    this.f75267a.a(j0Var);
                    int i16 = this.f75276j;
                    if (i16 != -1) {
                        int i17 = i16 - iA;
                        this.f75276j = i17;
                        if (i17 == 0) {
                            this.f75267a.c(false);
                            g(1);
                        }
                    }
                }
            } else if (d(j0Var, this.f75268b.f10388a, 9)) {
                g(e() ? 2 : 0);
            }
        }
    }

    @Override // s3.l0
    public void b(p0 p0Var, l2.t tVar, l0.d dVar) {
        this.f75271e = p0Var;
        this.f75267a.d(tVar, dVar);
    }

    public boolean c(boolean z10) {
        return this.f75269c == 3 && this.f75276j == -1 && !(z10 && (this.f75267a instanceof n)) && (!z10 || e());
    }

    @Override // s3.l0
    public void seek() {
        this.f75269c = 0;
        this.f75270d = 0;
        this.f75274h = false;
        this.f75267a.seek();
    }
}

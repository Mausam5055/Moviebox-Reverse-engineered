package q9;

import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f73515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c0 f73516b = new com.google.android.exoplayer2.util.c0(new byte[10]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73517c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l0 f73519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f73520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f73521g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f73522h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f73523i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73524j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f73525k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f73526l;

    public w(m mVar) {
        this.f73515a = mVar;
    }

    private boolean c(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i11) {
        int iMin = Math.min(d0Var.a(), i11 - this.f73518d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            d0Var.Q(iMin);
        } else {
            d0Var.j(bArr, this.f73518d, iMin);
        }
        int i12 = this.f73518d + iMin;
        this.f73518d = i12;
        return i12 == i11;
    }

    private boolean d() {
        this.f73516b.p(0);
        int iH = this.f73516b.h(24);
        if (iH != 1) {
            com.google.android.exoplayer2.util.s.i("PesReader", "Unexpected start code prefix: " + iH);
            this.f73524j = -1;
            return false;
        }
        this.f73516b.r(8);
        int iH2 = this.f73516b.h(16);
        this.f73516b.r(5);
        this.f73525k = this.f73516b.g();
        this.f73516b.r(2);
        this.f73520f = this.f73516b.g();
        this.f73521g = this.f73516b.g();
        this.f73516b.r(6);
        int iH3 = this.f73516b.h(8);
        this.f73523i = iH3;
        if (iH2 == 0) {
            this.f73524j = -1;
        } else {
            int i11 = (iH2 - 3) - iH3;
            this.f73524j = i11;
            if (i11 < 0) {
                com.google.android.exoplayer2.util.s.i("PesReader", "Found negative packet payload size: " + this.f73524j);
                this.f73524j = -1;
            }
        }
        return true;
    }

    private void e() {
        this.f73516b.p(0);
        this.f73526l = C.TIME_UNSET;
        if (this.f73520f) {
            this.f73516b.r(4);
            long jH = ((long) this.f73516b.h(3)) << 30;
            this.f73516b.r(1);
            long jH2 = jH | ((long) (this.f73516b.h(15) << 15));
            this.f73516b.r(1);
            long jH3 = jH2 | ((long) this.f73516b.h(15));
            this.f73516b.r(1);
            if (!this.f73522h && this.f73521g) {
                this.f73516b.r(4);
                long jH4 = ((long) this.f73516b.h(3)) << 30;
                this.f73516b.r(1);
                long jH5 = jH4 | ((long) (this.f73516b.h(15) << 15));
                this.f73516b.r(1);
                long jH6 = jH5 | ((long) this.f73516b.h(15));
                this.f73516b.r(1);
                this.f73519e.b(jH6);
                this.f73522h = true;
            }
            this.f73526l = this.f73519e.b(jH3);
        }
    }

    private void f(int i11) {
        this.f73517c = i11;
        this.f73518d = 0;
    }

    @Override // q9.i0
    public final void a(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        com.google.android.exoplayer2.util.a.i(this.f73519e);
        if ((i11 & 1) != 0) {
            int i12 = this.f73517c;
            if (i12 != 0 && i12 != 1) {
                if (i12 == 2) {
                    com.google.android.exoplayer2.util.s.i("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f73524j != -1) {
                        com.google.android.exoplayer2.util.s.i("PesReader", "Unexpected start indicator: expected " + this.f73524j + " more bytes");
                    }
                    this.f73515a.packetFinished();
                }
            }
            f(1);
        }
        while (d0Var.a() > 0) {
            int i13 = this.f73517c;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 == 2) {
                        if (c(d0Var, this.f73516b.f27560a, Math.min(10, this.f73523i)) && c(d0Var, null, this.f73523i)) {
                            e();
                            i11 |= this.f73525k ? 4 : 0;
                            this.f73515a.b(this.f73526l, i11);
                            f(3);
                        }
                    } else {
                        if (i13 != 3) {
                            throw new IllegalStateException();
                        }
                        int iA = d0Var.a();
                        int i14 = this.f73524j;
                        int i15 = i14 != -1 ? iA - i14 : 0;
                        if (i15 > 0) {
                            iA -= i15;
                            d0Var.O(d0Var.e() + iA);
                        }
                        this.f73515a.a(d0Var);
                        int i16 = this.f73524j;
                        if (i16 != -1) {
                            int i17 = i16 - iA;
                            this.f73524j = i17;
                            if (i17 == 0) {
                                this.f73515a.packetFinished();
                                f(1);
                            }
                        }
                    }
                } else if (c(d0Var, this.f73516b.f27560a, 9)) {
                    f(d() ? 2 : 0);
                }
            } else {
                d0Var.Q(d0Var.a());
            }
        }
    }

    @Override // q9.i0
    public void b(l0 l0Var, g9.n nVar, i0.d dVar) {
        this.f73519e = l0Var;
        this.f73515a.c(nVar, dVar);
    }

    @Override // q9.i0
    public final void seek() {
        this.f73517c = 0;
        this.f73518d = 0;
        this.f73522h = false;
        this.f73515a.seek();
    }
}

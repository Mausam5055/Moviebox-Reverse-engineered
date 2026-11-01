package s3;

import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 implements l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f74910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74911b = new androidx.media3.common.util.j0(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f74915f;

    public e0(d0 d0Var) {
        this.f74910a = d0Var;
    }

    @Override // s3.l0
    public void a(androidx.media3.common.util.j0 j0Var, int i11) {
        int iF;
        boolean z10 = (i11 & 1) != 0;
        if (z10) {
            iF = j0Var.f() + j0Var.H();
        } else {
            iF = -1;
        }
        if (this.f74915f) {
            if (!z10) {
                return;
            }
            this.f74915f = false;
            j0Var.W(iF);
            this.f74913d = 0;
        }
        while (j0Var.a() > 0) {
            int i12 = this.f74913d;
            if (i12 < 3) {
                if (i12 == 0) {
                    int iH = j0Var.H();
                    j0Var.W(j0Var.f() - 1);
                    if (iH == 255) {
                        this.f74915f = true;
                        return;
                    }
                }
                int iMin = Math.min(j0Var.a(), 3 - this.f74913d);
                j0Var.l(this.f74911b.e(), this.f74913d, iMin);
                int i13 = this.f74913d + iMin;
                this.f74913d = i13;
                if (i13 == 3) {
                    this.f74911b.W(0);
                    this.f74911b.V(3);
                    this.f74911b.X(1);
                    int iH2 = this.f74911b.H();
                    int iH3 = this.f74911b.H();
                    this.f74914e = (iH2 & 128) != 0;
                    this.f74912c = (((iH2 & 15) << 8) | iH3) + 3;
                    int iB = this.f74911b.b();
                    int i14 = this.f74912c;
                    if (iB < i14) {
                        this.f74911b.c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i14, this.f74911b.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(j0Var.a(), this.f74912c - this.f74913d);
                j0Var.l(this.f74911b.e(), this.f74913d, iMin2);
                int i15 = this.f74913d + iMin2;
                this.f74913d = i15;
                int i16 = this.f74912c;
                if (i15 != i16) {
                    continue;
                } else {
                    if (!this.f74914e) {
                        this.f74911b.V(i16);
                    } else {
                        if (a1.x(this.f74911b.e(), 0, this.f74912c, -1) != 0) {
                            this.f74915f = true;
                            return;
                        }
                        this.f74911b.V(this.f74912c - 4);
                    }
                    this.f74911b.W(0);
                    this.f74910a.a(this.f74911b);
                    this.f74913d = 0;
                }
            }
        }
    }

    @Override // s3.l0
    public void b(p0 p0Var, l2.t tVar, l0.d dVar) {
        this.f74910a.b(p0Var, tVar, dVar);
        this.f74915f = true;
    }

    @Override // s3.l0
    public void seek() {
        this.f74915f = true;
    }
}

package q9;

import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public final class c0 implements i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f73211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73212b = new com.google.android.exoplayer2.util.d0(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f73215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f73216f;

    public c0(b0 b0Var) {
        this.f73211a = b0Var;
    }

    @Override // q9.i0
    public void a(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        int iE;
        boolean z10 = (i11 & 1) != 0;
        if (z10) {
            iE = d0Var.e() + d0Var.D();
        } else {
            iE = -1;
        }
        if (this.f73216f) {
            if (!z10) {
                return;
            }
            this.f73216f = false;
            d0Var.P(iE);
            this.f73214d = 0;
        }
        while (d0Var.a() > 0) {
            int i12 = this.f73214d;
            if (i12 < 3) {
                if (i12 == 0) {
                    int iD = d0Var.D();
                    d0Var.P(d0Var.e() - 1);
                    if (iD == 255) {
                        this.f73216f = true;
                        return;
                    }
                }
                int iMin = Math.min(d0Var.a(), 3 - this.f73214d);
                d0Var.j(this.f73212b.d(), this.f73214d, iMin);
                int i13 = this.f73214d + iMin;
                this.f73214d = i13;
                if (i13 == 3) {
                    this.f73212b.P(0);
                    this.f73212b.O(3);
                    this.f73212b.Q(1);
                    int iD2 = this.f73212b.D();
                    int iD3 = this.f73212b.D();
                    this.f73215e = (iD2 & 128) != 0;
                    this.f73213c = (((iD2 & 15) << 8) | iD3) + 3;
                    int iB = this.f73212b.b();
                    int i14 = this.f73213c;
                    if (iB < i14) {
                        this.f73212b.c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i14, this.f73212b.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(d0Var.a(), this.f73213c - this.f73214d);
                d0Var.j(this.f73212b.d(), this.f73214d, iMin2);
                int i15 = this.f73214d + iMin2;
                this.f73214d = i15;
                int i16 = this.f73213c;
                if (i15 != i16) {
                    continue;
                } else {
                    if (!this.f73215e) {
                        this.f73212b.O(i16);
                    } else {
                        if (p0.t(this.f73212b.d(), 0, this.f73213c, -1) != 0) {
                            this.f73216f = true;
                            return;
                        }
                        this.f73212b.O(this.f73213c - 4);
                    }
                    this.f73212b.P(0);
                    this.f73211a.a(this.f73212b);
                    this.f73214d = 0;
                }
            }
        }
    }

    @Override // q9.i0
    public void b(l0 l0Var, g9.n nVar, i0.d dVar) {
        this.f73211a.b(l0Var, nVar, dVar);
        this.f73216f = true;
    }

    @Override // q9.i0
    public void seek() {
        this.f73216f = true;
    }
}

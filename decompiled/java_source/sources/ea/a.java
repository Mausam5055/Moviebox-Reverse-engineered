package ea;

import android.graphics.Bitmap;
import ba.h;
import ba.i;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d0 f61829o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final d0 f61830p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final C0743a f61831q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Inflater f61832r;

    /* JADX INFO: renamed from: ea.a$a, reason: collision with other inner class name */
    private static final class C0743a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d0 f61833a = new d0();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f61834b = new int[256];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f61835c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f61836d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f61837e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f61838f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f61839g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f61840h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f61841i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(d0 d0Var, int i11) {
            int iG;
            if (i11 < 4) {
                return;
            }
            d0Var.Q(3);
            int i12 = i11 - 4;
            if ((d0Var.D() & 128) != 0) {
                if (i12 < 7 || (iG = d0Var.G()) < 4) {
                    return;
                }
                this.f61840h = d0Var.J();
                this.f61841i = d0Var.J();
                this.f61833a.L(iG - 4);
                i12 = i11 - 11;
            }
            int iE = this.f61833a.e();
            int iF = this.f61833a.f();
            if (iE >= iF || i12 <= 0) {
                return;
            }
            int iMin = Math.min(i12, iF - iE);
            d0Var.j(this.f61833a.d(), iE, iMin);
            this.f61833a.P(iE + iMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(d0 d0Var, int i11) {
            if (i11 < 19) {
                return;
            }
            this.f61836d = d0Var.J();
            this.f61837e = d0Var.J();
            d0Var.Q(11);
            this.f61838f = d0Var.J();
            this.f61839g = d0Var.J();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(d0 d0Var, int i11) {
            if (i11 % 5 != 2) {
                return;
            }
            d0Var.Q(2);
            Arrays.fill(this.f61834b, 0);
            int i12 = i11 / 5;
            for (int i13 = 0; i13 < i12; i13++) {
                int iD = d0Var.D();
                int iD2 = d0Var.D();
                int iD3 = d0Var.D();
                int iD4 = d0Var.D();
                double d11 = iD2;
                double d12 = iD3 - 128;
                double d13 = iD4 - 128;
                this.f61834b[iD] = (p0.q((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255) << 8) | (d0Var.D() << 24) | (p0.q((int) ((1.402d * d12) + d11), 0, 255) << 16) | p0.q((int) (d11 + (d13 * 1.772d)), 0, 255);
            }
            this.f61835c = true;
        }

        public ba.b d() {
            int iD;
            if (this.f61836d == 0 || this.f61837e == 0 || this.f61840h == 0 || this.f61841i == 0 || this.f61833a.f() == 0 || this.f61833a.e() != this.f61833a.f() || !this.f61835c) {
                return null;
            }
            this.f61833a.P(0);
            int i11 = this.f61840h * this.f61841i;
            int[] iArr = new int[i11];
            int i12 = 0;
            while (i12 < i11) {
                int iD2 = this.f61833a.D();
                if (iD2 != 0) {
                    iD = i12 + 1;
                    iArr[i12] = this.f61834b[iD2];
                } else {
                    int iD3 = this.f61833a.D();
                    if (iD3 != 0) {
                        iD = ((iD3 & 64) == 0 ? iD3 & 63 : ((iD3 & 63) << 8) | this.f61833a.D()) + i12;
                        Arrays.fill(iArr, i12, iD, (iD3 & 128) == 0 ? 0 : this.f61834b[this.f61833a.D()]);
                    }
                }
                i12 = iD;
            }
            return new ba.b.C0143b().f(Bitmap.createBitmap(iArr, this.f61840h, this.f61841i, Bitmap.Config.ARGB_8888)).k(this.f61838f / this.f61836d).l(0).h(this.f61839g / this.f61837e, 0).i(0).n(this.f61840h / this.f61836d).g(this.f61841i / this.f61837e).a();
        }

        public void h() {
            this.f61836d = 0;
            this.f61837e = 0;
            this.f61838f = 0;
            this.f61839g = 0;
            this.f61840h = 0;
            this.f61841i = 0;
            this.f61833a.L(0);
            this.f61835c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f61829o = new d0();
        this.f61830p = new d0();
        this.f61831q = new C0743a();
    }

    private void x(d0 d0Var) {
        if (d0Var.a() <= 0 || d0Var.h() != 120) {
            return;
        }
        if (this.f61832r == null) {
            this.f61832r = new Inflater();
        }
        if (p0.r0(d0Var, this.f61830p, this.f61832r)) {
            d0Var.N(this.f61830p.d(), this.f61830p.f());
        }
    }

    private static ba.b y(d0 d0Var, C0743a c0743a) {
        int iF = d0Var.f();
        int iD = d0Var.D();
        int iJ = d0Var.J();
        int iE = d0Var.e() + iJ;
        ba.b bVarD = null;
        if (iE > iF) {
            d0Var.P(iF);
            return null;
        }
        if (iD != 128) {
            switch (iD) {
                case 20:
                    c0743a.g(d0Var, iJ);
                    break;
                case 21:
                    c0743a.e(d0Var, iJ);
                    break;
                case 22:
                    c0743a.f(d0Var, iJ);
                    break;
            }
        } else {
            bVarD = c0743a.d();
            c0743a.h();
        }
        d0Var.P(iE);
        return bVarD;
    }

    @Override // ba.h
    protected i v(byte[] bArr, int i11, boolean z10) {
        this.f61829o.N(bArr, i11);
        x(this.f61829o);
        this.f61831q.h();
        ArrayList arrayList = new ArrayList();
        while (this.f61829o.a() >= 3) {
            ba.b bVarY = y(this.f61829o, this.f61831q);
            if (bVarY != null) {
                arrayList.add(bVarY);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}

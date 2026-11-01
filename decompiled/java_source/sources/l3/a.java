package l3;

import android.graphics.Bitmap;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.e;
import i3.k;
import i3.r;
import i3.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f68715a = new j0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f68716b = new j0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final C0827a f68717c = new C0827a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Inflater f68718d;

    /* JADX INFO: renamed from: l3.a$a, reason: collision with other inner class name */
    private static final class C0827a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j0 f68719a = new j0();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f68720b = new int[256];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f68721c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f68722d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f68723e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f68724f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f68725g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f68726h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f68727i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(j0 j0Var, int i11) {
            int iK;
            if (i11 < 4) {
                return;
            }
            j0Var.X(3);
            int i12 = i11 - 4;
            if ((j0Var.H() & 128) != 0) {
                if (i12 < 7 || (iK = j0Var.K()) < 4) {
                    return;
                }
                this.f68726h = j0Var.P();
                this.f68727i = j0Var.P();
                this.f68719a.S(iK - 4);
                i12 = i11 - 11;
            }
            int iF = this.f68719a.f();
            int iG = this.f68719a.g();
            if (iF >= iG || i12 <= 0) {
                return;
            }
            int iMin = Math.min(i12, iG - iF);
            j0Var.l(this.f68719a.e(), iF, iMin);
            this.f68719a.W(iF + iMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(j0 j0Var, int i11) {
            if (i11 < 19) {
                return;
            }
            this.f68722d = j0Var.P();
            this.f68723e = j0Var.P();
            j0Var.X(11);
            this.f68724f = j0Var.P();
            this.f68725g = j0Var.P();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(j0 j0Var, int i11) {
            if (i11 % 5 != 2) {
                return;
            }
            j0Var.X(2);
            Arrays.fill(this.f68720b, 0);
            int i12 = i11 / 5;
            for (int i13 = 0; i13 < i12; i13++) {
                int iH = j0Var.H();
                int iH2 = j0Var.H();
                int iH3 = j0Var.H();
                int iH4 = j0Var.H();
                double d11 = iH2;
                double d12 = iH3 - 128;
                double d13 = iH4 - 128;
                this.f68720b[iH] = (a1.p((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255) << 8) | (j0Var.H() << 24) | (a1.p((int) ((1.402d * d12) + d11), 0, 255) << 16) | a1.p((int) (d11 + (d13 * 1.772d)), 0, 255);
            }
            this.f68721c = true;
        }

        public u1.a d() {
            int iH;
            if (this.f68722d == 0 || this.f68723e == 0 || this.f68726h == 0 || this.f68727i == 0 || this.f68719a.g() == 0 || this.f68719a.f() != this.f68719a.g() || !this.f68721c) {
                return null;
            }
            this.f68719a.W(0);
            int i11 = this.f68726h * this.f68727i;
            int[] iArr = new int[i11];
            int i12 = 0;
            while (i12 < i11) {
                int iH2 = this.f68719a.H();
                if (iH2 != 0) {
                    iH = i12 + 1;
                    iArr[i12] = this.f68720b[iH2];
                } else {
                    int iH3 = this.f68719a.H();
                    if (iH3 != 0) {
                        iH = ((iH3 & 64) == 0 ? iH3 & 63 : ((iH3 & 63) << 8) | this.f68719a.H()) + i12;
                        Arrays.fill(iArr, i12, iH, (iH3 & 128) == 0 ? this.f68720b[0] : this.f68720b[this.f68719a.H()]);
                    }
                }
                i12 = iH;
            }
            return new u1.a.b().f(Bitmap.createBitmap(iArr, this.f68726h, this.f68727i, Bitmap.Config.ARGB_8888)).k(this.f68724f / this.f68722d).l(0).h(this.f68725g / this.f68723e, 0).i(0).n(this.f68726h / this.f68722d).g(this.f68727i / this.f68723e).a();
        }

        public void h() {
            this.f68722d = 0;
            this.f68723e = 0;
            this.f68724f = 0;
            this.f68725g = 0;
            this.f68726h = 0;
            this.f68727i = 0;
            this.f68719a.S(0);
            this.f68721c = false;
        }
    }

    private static u1.a d(j0 j0Var, C0827a c0827a) {
        int iG = j0Var.g();
        int iH = j0Var.H();
        int iP = j0Var.P();
        int iF = j0Var.f() + iP;
        u1.a aVarD = null;
        if (iF > iG) {
            j0Var.W(iG);
            return null;
        }
        if (iH != 128) {
            switch (iH) {
                case 20:
                    c0827a.g(j0Var, iP);
                    break;
                case 21:
                    c0827a.e(j0Var, iP);
                    break;
                case 22:
                    c0827a.f(j0Var, iP);
                    break;
            }
        } else {
            aVarD = c0827a.d();
            c0827a.h();
        }
        j0Var.W(iF);
        return aVarD;
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        this.f68715a.U(bArr, i12 + i11);
        this.f68715a.W(i11);
        if (this.f68718d == null) {
            this.f68718d = new Inflater();
        }
        if (a1.P0(this.f68715a, this.f68716b, this.f68718d)) {
            this.f68715a.U(this.f68716b.e(), this.f68716b.g());
        }
        this.f68717c.h();
        ArrayList arrayList = new ArrayList();
        while (this.f68715a.a() >= 3) {
            u1.a aVarD = d(this.f68715a, this.f68717c);
            if (aVarD != null) {
                arrayList.add(aVarD);
            }
        }
        mVar.accept(new e(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }

    @Override // i3.s
    public /* synthetic */ k b(byte[] bArr, int i11, int i12) {
        return r.a(this, bArr, i11, i12);
    }

    @Override // i3.s
    public int c() {
        return 2;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}

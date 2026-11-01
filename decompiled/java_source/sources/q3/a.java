package q3;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.e;
import i3.k;
import i3.r;
import i3.s;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f73072a = new j0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f73073b = new j0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f73074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Inflater f73075d;

    private static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f73077b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f73078c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int[] f73079d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f73080e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f73081f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Rect f73082g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f73076a = new int[4];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f73083h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f73084i = -1;

        /* JADX INFO: renamed from: q3.a$b$a, reason: collision with other inner class name */
        private static final class C0890a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f73085a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f73086b;

            private C0890a() {
            }
        }

        private static int b(int[] iArr, int i11) {
            return (i11 < 0 || i11 >= iArr.length) ? iArr[0] : iArr[i11];
        }

        private static int c(String str) {
            try {
                return Integer.parseInt(str, 16);
            } catch (RuntimeException unused) {
                return 0;
            }
        }

        private void d(int[] iArr, j0 j0Var, int i11) {
            while (j0Var.f() < i11 && j0Var.a() > 0) {
                switch (j0Var.H()) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    case 3:
                        if (!g(iArr, j0Var)) {
                            return;
                        }
                        break;
                    case 4:
                        if (!e(j0Var)) {
                            return;
                        }
                        break;
                    case 5:
                        if (!f(j0Var)) {
                            return;
                        }
                        break;
                    case 6:
                        if (!h(j0Var)) {
                            return;
                        }
                        break;
                    default:
                        return;
                }
            }
        }

        private boolean e(j0 j0Var) {
            if (j0Var.a() < 2 || !this.f73078c) {
                return false;
            }
            int iH = j0Var.H();
            int iH2 = j0Var.H();
            int[] iArr = this.f73076a;
            iArr[3] = n(iArr[3], iH >> 4);
            int[] iArr2 = this.f73076a;
            iArr2[2] = n(iArr2[2], iH & 15);
            int[] iArr3 = this.f73076a;
            iArr3[1] = n(iArr3[1], iH2 >> 4);
            int[] iArr4 = this.f73076a;
            iArr4[0] = n(iArr4[0], iH2 & 15);
            return true;
        }

        private boolean f(j0 j0Var) {
            if (j0Var.a() < 6) {
                return false;
            }
            int iH = j0Var.H();
            int iH2 = j0Var.H();
            int i11 = (iH << 4) | (iH2 >> 4);
            int iH3 = ((iH2 & 15) << 8) | j0Var.H();
            int iH4 = j0Var.H();
            int iH5 = j0Var.H();
            this.f73082g = new Rect(i11, (iH4 << 4) | (iH5 >> 4), iH3 + 1, (j0Var.H() | ((iH5 & 15) << 8)) + 1);
            return true;
        }

        private boolean g(int[] iArr, j0 j0Var) {
            if (j0Var.a() < 2) {
                return false;
            }
            int iH = j0Var.H();
            int iH2 = j0Var.H();
            this.f73076a[3] = b(iArr, iH >> 4);
            this.f73076a[2] = b(iArr, iH & 15);
            this.f73076a[1] = b(iArr, iH2 >> 4);
            this.f73076a[0] = b(iArr, iH2 & 15);
            this.f73078c = true;
            return true;
        }

        private boolean h(j0 j0Var) {
            if (j0Var.a() < 4) {
                return false;
            }
            this.f73083h = j0Var.P();
            this.f73084i = j0Var.P();
            return true;
        }

        private void j(i0 i0Var, boolean z10, Rect rect, int[] iArr) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            int i11 = !z10 ? 1 : 0;
            int i12 = i11 * iWidth;
            C0890a c0890a = new C0890a();
            while (true) {
                int i13 = 0;
                do {
                    k(i0Var, iWidth, c0890a);
                    int iMin = Math.min(c0890a.f73086b, iWidth - i13);
                    if (iMin > 0) {
                        int i14 = i12 + iMin;
                        Arrays.fill(iArr, i12, i14, this.f73076a[c0890a.f73085a]);
                        i13 += iMin;
                        i12 = i14;
                    }
                } while (i13 < iWidth);
                i11 += 2;
                if (i11 >= iHeight) {
                    return;
                }
                i12 = i11 * iWidth;
                i0Var.c();
            }
        }

        private static void k(i0 i0Var, int i11, C0890a c0890a) {
            int iH = 0;
            for (int i12 = 1; iH < i12 && i12 <= 64; i12 <<= 2) {
                if (i0Var.b() < 4) {
                    c0890a.f73085a = -1;
                    c0890a.f73086b = 0;
                    return;
                }
                iH = (iH << 4) | i0Var.h(4);
            }
            c0890a.f73085a = iH & 3;
            if (iH >= 4) {
                i11 = iH >> 2;
            }
            c0890a.f73086b = i11;
        }

        private static int n(int i11, int i12) {
            return (i11 & 16777215) | ((i12 * 17) << 24);
        }

        public u1.a a(j0 j0Var) {
            Rect rect;
            if (this.f73079d == null || !this.f73077b || !this.f73078c || (rect = this.f73082g) == null || this.f73083h == -1 || this.f73084i == -1 || rect.width() < 2 || this.f73082g.height() < 2) {
                return null;
            }
            Rect rect2 = this.f73082g;
            int[] iArr = new int[rect2.width() * rect2.height()];
            i0 i0Var = new i0();
            j0Var.W(this.f73083h);
            i0Var.m(j0Var);
            j(i0Var, true, rect2, iArr);
            j0Var.W(this.f73084i);
            i0Var.m(j0Var);
            j(i0Var, false, rect2, iArr);
            return new u1.a.b().f(Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888)).k(rect2.left / this.f73080e).l(0).h(rect2.top / this.f73081f, 0).i(0).n(rect2.width() / this.f73080e).g(rect2.height() / this.f73081f).a();
        }

        public void i(String str) {
            for (String str2 : a1.o1(str.trim(), "\\r?\\n")) {
                if (str2.startsWith("palette: ")) {
                    String[] strArrO1 = a1.o1(str2.substring(9), ",");
                    this.f73079d = new int[strArrO1.length];
                    for (int i11 = 0; i11 < strArrO1.length; i11++) {
                        this.f73079d[i11] = c(strArrO1[i11].trim());
                    }
                } else if (str2.startsWith("size: ")) {
                    String[] strArrO2 = a1.o1(str2.substring(6).trim(), "x");
                    if (strArrO2.length == 2) {
                        try {
                            this.f73080e = Integer.parseInt(strArrO2[0]);
                            this.f73081f = Integer.parseInt(strArrO2[1]);
                            this.f73077b = true;
                        } catch (RuntimeException e11) {
                            u.i("VobsubParser", "Parsing IDX failed", e11);
                        }
                    }
                }
            }
        }

        public void l(j0 j0Var) {
            int[] iArr = this.f73079d;
            if (iArr == null || !this.f73077b) {
                return;
            }
            j0Var.X(j0Var.P() - 2);
            d(iArr, j0Var, j0Var.P());
        }

        public void m() {
            this.f73078c = false;
            this.f73082g = null;
            this.f73083h = -1;
            this.f73084i = -1;
        }
    }

    public a(List list) {
        b bVar = new b();
        this.f73074c = bVar;
        bVar.i(new String((byte[]) list.get(0), StandardCharsets.UTF_8));
    }

    private u1.a d() {
        if (this.f73075d == null) {
            this.f73075d = new Inflater();
        }
        if (a1.P0(this.f73072a, this.f73073b, this.f73075d)) {
            this.f73072a.U(this.f73073b.e(), this.f73073b.g());
        }
        this.f73074c.m();
        int iA = this.f73072a.a();
        if (iA < 2 || this.f73072a.P() != iA) {
            return null;
        }
        this.f73074c.l(this.f73072a);
        return this.f73074c.a(this.f73072a);
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        this.f73072a.U(bArr, i12 + i11);
        this.f73072a.W(i11);
        u1.a aVarD = d();
        mVar.accept(new e(aVarD != null ? ImmutableList.of(aVarD) : ImmutableList.of(), C.TIME_UNSET, 5000000L));
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

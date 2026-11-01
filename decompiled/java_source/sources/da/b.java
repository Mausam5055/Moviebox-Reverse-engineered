package da;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final byte[] f61248h = {0, 7, 8, 15};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f61249i = {0, 119, -120, -1};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final byte[] f61250j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f61251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f61252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Canvas f61253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C0732b f61254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f61255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f61256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f61257g;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f61259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f61260c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int[] f61261d;

        public a(int i11, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f61258a = i11;
            this.f61259b = iArr;
            this.f61260c = iArr2;
            this.f61261d = iArr3;
        }
    }

    /* JADX INFO: renamed from: da.b$b, reason: collision with other inner class name */
    private static final class C0732b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61262a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f61264c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f61265d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f61266e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f61267f;

        public C0732b(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f61262a = i11;
            this.f61263b = i12;
            this.f61264c = i13;
            this.f61265d = i14;
            this.f61266e = i15;
            this.f61267f = i16;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61268a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f61270c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f61271d;

        public c(int i11, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f61268a = i11;
            this.f61269b = z10;
            this.f61270c = bArr;
            this.f61271d = bArr2;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61273b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f61274c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray f61275d;

        public d(int i11, int i12, int i13, SparseArray sparseArray) {
            this.f61272a = i11;
            this.f61273b = i12;
            this.f61274c = i13;
            this.f61275d = sparseArray;
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61276a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61277b;

        public e(int i11, int i12) {
            this.f61276a = i11;
            this.f61277b = i12;
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61278a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61279b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f61280c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f61281d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f61282e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f61283f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f61284g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f61285h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f61286i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f61287j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final SparseArray f61288k;

        public f(int i11, boolean z10, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, SparseArray sparseArray) {
            this.f61278a = i11;
            this.f61279b = z10;
            this.f61280c = i12;
            this.f61281d = i13;
            this.f61282e = i14;
            this.f61283f = i15;
            this.f61284g = i16;
            this.f61285h = i17;
            this.f61286i = i18;
            this.f61287j = i19;
            this.f61288k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.f61288k;
            for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                this.f61288k.put(sparseArray.keyAt(i11), (g) sparseArray.valueAt(i11));
            }
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61290b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f61291c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f61292d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f61293e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f61294f;

        public g(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f61289a = i11;
            this.f61290b = i12;
            this.f61291c = i13;
            this.f61292d = i14;
            this.f61293e = i15;
            this.f61294f = i16;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray f61297c = new SparseArray();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray f61298d = new SparseArray();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray f61299e = new SparseArray();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SparseArray f61300f = new SparseArray();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final SparseArray f61301g = new SparseArray();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public C0732b f61302h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public d f61303i;

        public h(int i11, int i12) {
            this.f61295a = i11;
            this.f61296b = i12;
        }

        public void a() {
            this.f61297c.clear();
            this.f61298d.clear();
            this.f61299e.clear();
            this.f61300f.clear();
            this.f61301g.clear();
            this.f61302h = null;
            this.f61303i = null;
        }
    }

    public b(int i11, int i12) {
        Paint paint = new Paint();
        this.f61251a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f61252b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f61253c = new Canvas();
        this.f61254d = new C0732b(719, 575, 0, 719, 0, 575);
        this.f61255e = new a(0, c(), d(), e());
        this.f61256f = new h(i11, i12);
    }

    private static byte[] a(int i11, int i12, c0 c0Var) {
        byte[] bArr = new byte[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            bArr[i13] = (byte) c0Var.h(i12);
        }
        return bArr;
    }

    private static int[] c() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i11 = 1; i11 < 16; i11++) {
            if (i11 < 8) {
                iArr[i11] = f(255, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i11] = f(255, (i11 & 1) != 0 ? 127 : 0, (i11 & 2) != 0 ? 127 : 0, (i11 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            if (i11 < 8) {
                iArr[i11] = f(63, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) == 0 ? 0 : 255);
            } else {
                int i12 = i11 & Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                if (i12 == 0) {
                    iArr[i11] = f(255, ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? 170 : 0), ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? 170 : 0), ((i11 & 4) == 0 ? 0 : 85) + ((i11 & 64) == 0 ? 0 : 170));
                } else if (i12 == 8) {
                    iArr[i11] = f(127, ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? 170 : 0), ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? 170 : 0), ((i11 & 4) == 0 ? 0 : 85) + ((i11 & 64) == 0 ? 0 : 170));
                } else if (i12 == 128) {
                    iArr[i11] = f(255, ((i11 & 1) != 0 ? 43 : 0) + 127 + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + 127 + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + 127 + ((i11 & 64) == 0 ? 0 : 85));
                } else if (i12 == 136) {
                    iArr[i11] = f(255, ((i11 & 1) != 0 ? 43 : 0) + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + ((i11 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int f(int i11, int i12, int i13, int i14) {
        return (i11 << 24) | (i12 << 16) | (i13 << 8) | i14;
    }

    private static int g(c0 c0Var, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        int i13;
        int iH;
        int iH2;
        int i14 = i11;
        boolean z10 = false;
        while (true) {
            int iH3 = c0Var.h(2);
            if (iH3 != 0) {
                z10 = z10;
                i13 = 1;
            } else {
                if (c0Var.g()) {
                    iH = c0Var.h(3) + 3;
                    iH2 = c0Var.h(2);
                } else {
                    if (c0Var.g()) {
                        i13 = 1;
                    } else {
                        int iH4 = c0Var.h(2);
                        if (iH4 == 0) {
                            z10 = true;
                        } else if (iH4 == 1) {
                            i13 = 2;
                        } else if (iH4 == 2) {
                            iH = c0Var.h(4) + 12;
                            iH2 = c0Var.h(2);
                        } else if (iH4 != 3) {
                            z10 = z10;
                        } else {
                            iH = c0Var.h(8) + 29;
                            iH2 = c0Var.h(2);
                        }
                        iH3 = 0;
                        i13 = 0;
                    }
                    iH3 = 0;
                }
                z10 = z10;
                i13 = iH;
                iH3 = iH2;
            }
            if (i13 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i14, i12, i14 + i13, i12 + 1, paint);
            }
            i14 += i13;
            if (z10) {
                return i14;
            }
            z10 = z10;
        }
    }

    private static int h(c0 c0Var, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        int i13;
        int iH;
        int iH2;
        int i14 = i11;
        boolean z10 = false;
        while (true) {
            int iH3 = c0Var.h(4);
            if (iH3 != 0) {
                z10 = z10;
                i13 = 1;
            } else if (c0Var.g()) {
                if (c0Var.g()) {
                    int iH4 = c0Var.h(2);
                    if (iH4 == 0) {
                        i13 = 1;
                    } else if (iH4 == 1) {
                        i13 = 2;
                    } else if (iH4 == 2) {
                        iH = c0Var.h(4) + 9;
                        iH2 = c0Var.h(4);
                    } else if (iH4 != 3) {
                        z10 = z10;
                        iH3 = 0;
                        i13 = 0;
                    } else {
                        iH = c0Var.h(8) + 25;
                        iH2 = c0Var.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = c0Var.h(2) + 4;
                    iH2 = c0Var.h(4);
                }
                z10 = z10;
                i13 = iH;
                iH3 = iH2;
            } else {
                int iH5 = c0Var.h(3);
                if (iH5 != 0) {
                    i13 = iH5 + 2;
                    iH3 = 0;
                } else {
                    z10 = true;
                    iH3 = 0;
                    i13 = 0;
                }
            }
            if (i13 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i14, i12, i14 + i13, i12 + 1, paint);
            }
            i14 += i13;
            if (z10) {
                return i14;
            }
            z10 = z10;
        }
    }

    private static int i(c0 c0Var, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        boolean z10;
        int iH;
        int i13 = i11;
        boolean z11 = false;
        while (true) {
            int iH2 = c0Var.h(8);
            if (iH2 != 0) {
                z10 = z11;
                iH = 1;
            } else if (c0Var.g()) {
                z10 = z11;
                iH = c0Var.h(7);
                iH2 = c0Var.h(8);
            } else {
                int iH3 = c0Var.h(7);
                if (iH3 != 0) {
                    z10 = z11;
                    iH = iH3;
                    iH2 = 0;
                } else {
                    z10 = true;
                    iH2 = 0;
                    iH = 0;
                }
            }
            if (iH != 0 && paint != null) {
                if (bArr != null) {
                    iH2 = bArr[iH2];
                }
                paint.setColor(iArr[iH2]);
                canvas.drawRect(i13, i12, i13 + iH, i12 + 1, paint);
            }
            i13 += iH;
            if (z10) {
                return i13;
            }
            z11 = z10;
        }
    }

    private static void j(byte[] bArr, int[] iArr, int i11, int i12, int i13, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        c0 c0Var = new c0(bArr);
        int iG = i12;
        int i14 = i13;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (c0Var.b() != 0) {
            int iH = c0Var.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i11 != 3) {
                            if (i11 == 2) {
                                bArr3 = bArrA3 == null ? f61248h : bArrA3;
                            } else {
                                bArr2 = null;
                            }
                            iG = g(c0Var, iArr, bArr2, iG, i14, paint, canvas);
                            c0Var.c();
                        } else {
                            bArr3 = bArrA == null ? f61249i : bArrA;
                        }
                        bArr2 = bArr3;
                        iG = g(c0Var, iArr, bArr2, iG, i14, paint, canvas);
                        c0Var.c();
                        break;
                    case 17:
                        iG = h(c0Var, iArr, i11 == 3 ? bArrA2 == null ? f61250j : bArrA2 : null, iG, i14, paint, canvas);
                        c0Var.c();
                        break;
                    case 18:
                        iG = i(c0Var, iArr, null, iG, i14, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrA3 = a(4, 4, c0Var);
                                break;
                            case 33:
                                bArrA = a(4, 8, c0Var);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, c0Var);
                                break;
                        }
                        break;
                }
            } else {
                i14 += 2;
                iG = i12;
            }
        }
    }

    private static void k(c cVar, a aVar, int i11, int i12, int i13, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i11 == 3) {
            iArr = aVar.f61261d;
        } else {
            iArr = i11 == 2 ? aVar.f61260c : aVar.f61259b;
        }
        int[] iArr2 = iArr;
        j(cVar.f61270c, iArr2, i11, i12, i13, paint, canvas);
        j(cVar.f61271d, iArr2, i11, i12, i13 + 1, paint, canvas);
    }

    private static a l(c0 c0Var, int i11) {
        int[] iArr;
        int iH;
        int i12;
        int iH2;
        int iH3;
        int iH4;
        int i13 = 8;
        int iH5 = c0Var.h(8);
        c0Var.r(8);
        int i14 = 2;
        int i15 = i11 - 2;
        int[] iArrC = c();
        int[] iArrD = d();
        int[] iArrE = e();
        while (i15 > 0) {
            int iH6 = c0Var.h(i13);
            int iH7 = c0Var.h(i13);
            if ((iH7 & 128) != 0) {
                iArr = iArrC;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrD : iArrE;
            }
            if ((iH7 & 1) != 0) {
                iH3 = c0Var.h(i13);
                iH4 = c0Var.h(i13);
                iH = c0Var.h(i13);
                iH2 = c0Var.h(i13);
                i12 = i15 - 6;
            } else {
                int iH8 = c0Var.h(6) << i14;
                int iH9 = c0Var.h(4) << 4;
                iH = c0Var.h(4) << 4;
                i12 = i15 - 4;
                iH2 = c0Var.h(i14) << 6;
                iH3 = iH8;
                iH4 = iH9;
            }
            if (iH3 == 0) {
                iH2 = 255;
                iH4 = 0;
                iH = 0;
            }
            double d11 = iH3;
            double d12 = iH4 - 128;
            double d13 = iH - 128;
            iArr[iH6] = f((byte) (255 - (iH2 & 255)), p0.q((int) (d11 + (1.402d * d12)), 0, 255), p0.q((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255), p0.q((int) (d11 + (d13 * 1.772d)), 0, 255));
            i15 = i12;
            iH5 = iH5;
            i13 = 8;
            i14 = 2;
        }
        return new a(iH5, iArrC, iArrD, iArrE);
    }

    private static C0732b m(c0 c0Var) {
        int i11;
        int i12;
        int i13;
        int iH;
        c0Var.r(4);
        boolean zG = c0Var.g();
        c0Var.r(3);
        int iH2 = c0Var.h(16);
        int iH3 = c0Var.h(16);
        if (zG) {
            int iH4 = c0Var.h(16);
            int iH5 = c0Var.h(16);
            int iH6 = c0Var.h(16);
            iH = c0Var.h(16);
            i13 = iH5;
            i12 = iH6;
            i11 = iH4;
        } else {
            i11 = 0;
            i12 = 0;
            i13 = iH2;
            iH = iH3;
        }
        return new C0732b(iH2, iH3, i11, i13, i12, iH);
    }

    private static c n(c0 c0Var) {
        byte[] bArr;
        int iH = c0Var.h(16);
        c0Var.r(4);
        int iH2 = c0Var.h(2);
        boolean zG = c0Var.g();
        c0Var.r(1);
        byte[] bArr2 = p0.f27631f;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = c0Var.h(16);
                int iH4 = c0Var.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    c0Var.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    c0Var.k(bArr, 0, iH4);
                }
            }
            return new c(iH, zG, bArr2, bArr);
        }
        c0Var.r(c0Var.h(8) * 16);
        bArr = bArr2;
        return new c(iH, zG, bArr2, bArr);
    }

    private static d o(c0 c0Var, int i11) {
        int iH = c0Var.h(8);
        int iH2 = c0Var.h(4);
        int iH3 = c0Var.h(2);
        c0Var.r(2);
        int i12 = i11 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i12 > 0) {
            int iH4 = c0Var.h(8);
            c0Var.r(8);
            i12 -= 6;
            sparseArray.put(iH4, new e(c0Var.h(16), c0Var.h(16)));
        }
        return new d(iH, iH2, iH3, sparseArray);
    }

    private static f p(c0 c0Var, int i11) {
        int i12;
        int iH;
        int iH2;
        int iH3 = c0Var.h(8);
        c0Var.r(4);
        boolean zG = c0Var.g();
        c0Var.r(3);
        int i13 = 16;
        int iH4 = c0Var.h(16);
        int iH5 = c0Var.h(16);
        int iH6 = c0Var.h(3);
        int iH7 = c0Var.h(3);
        int i14 = 2;
        c0Var.r(2);
        int iH8 = c0Var.h(8);
        int iH9 = c0Var.h(8);
        int iH10 = c0Var.h(4);
        int iH11 = c0Var.h(2);
        c0Var.r(2);
        int i15 = i11 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i15 > 0) {
            int iH12 = c0Var.h(i13);
            int iH13 = c0Var.h(i14);
            int iH14 = c0Var.h(i14);
            int iH15 = c0Var.h(12);
            int i16 = iH11;
            c0Var.r(4);
            int iH16 = c0Var.h(12);
            int i17 = i15 - 6;
            if (iH13 != 1) {
                i12 = 2;
                if (iH13 != 2) {
                    iH2 = 0;
                    iH = 0;
                    i15 = i17;
                }
                sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
                i14 = i12;
                iH11 = i16;
                i13 = 16;
            } else {
                i12 = 2;
            }
            i15 -= 8;
            iH2 = c0Var.h(8);
            iH = c0Var.h(8);
            sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
            i14 = i12;
            iH11 = i16;
            i13 = 16;
        }
        return new f(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    private static void q(c0 c0Var, h hVar) {
        f fVar;
        int iH = c0Var.h(8);
        int iH2 = c0Var.h(16);
        int iH3 = c0Var.h(16);
        int iD = c0Var.d() + iH3;
        if (iH3 * 8 > c0Var.b()) {
            s.i("DvbParser", "Data field length exceeds limit");
            c0Var.r(c0Var.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == hVar.f61295a) {
                    d dVar = hVar.f61303i;
                    d dVarO = o(c0Var, iH3);
                    if (dVarO.f61274c != 0) {
                        hVar.f61303i = dVarO;
                        hVar.f61297c.clear();
                        hVar.f61298d.clear();
                        hVar.f61299e.clear();
                    } else if (dVar != null && dVar.f61273b != dVarO.f61273b) {
                        hVar.f61303i = dVarO;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f61303i;
                if (iH2 == hVar.f61295a && dVar2 != null) {
                    f fVarP = p(c0Var, iH3);
                    if (dVar2.f61274c == 0 && (fVar = (f) hVar.f61297c.get(fVarP.f61278a)) != null) {
                        fVarP.a(fVar);
                    }
                    hVar.f61297c.put(fVarP.f61278a, fVarP);
                }
                break;
            case 18:
                if (iH2 == hVar.f61295a) {
                    a aVarL = l(c0Var, iH3);
                    hVar.f61298d.put(aVarL.f61258a, aVarL);
                } else if (iH2 == hVar.f61296b) {
                    a aVarL2 = l(c0Var, iH3);
                    hVar.f61300f.put(aVarL2.f61258a, aVarL2);
                }
                break;
            case 19:
                if (iH2 == hVar.f61295a) {
                    c cVarN = n(c0Var);
                    hVar.f61299e.put(cVarN.f61268a, cVarN);
                } else if (iH2 == hVar.f61296b) {
                    c cVarN2 = n(c0Var);
                    hVar.f61301g.put(cVarN2.f61268a, cVarN2);
                }
                break;
            case 20:
                if (iH2 == hVar.f61295a) {
                    hVar.f61302h = m(c0Var);
                }
                break;
        }
        c0Var.s(iD - c0Var.d());
    }

    public List b(byte[] bArr, int i11) {
        c0 c0Var = new c0(bArr, i11);
        while (c0Var.b() >= 48 && c0Var.h(8) == 15) {
            q(c0Var, this.f61256f);
        }
        h hVar = this.f61256f;
        d dVar = hVar.f61303i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0732b c0732b = hVar.f61302h;
        if (c0732b == null) {
            c0732b = this.f61254d;
        }
        Bitmap bitmap = this.f61257g;
        if (bitmap == null || c0732b.f61262a + 1 != bitmap.getWidth() || c0732b.f61263b + 1 != this.f61257g.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(c0732b.f61262a + 1, c0732b.f61263b + 1, Bitmap.Config.ARGB_8888);
            this.f61257g = bitmapCreateBitmap;
            this.f61253c.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = dVar.f61275d;
        for (int i12 = 0; i12 < sparseArray.size(); i12++) {
            this.f61253c.save();
            e eVar = (e) sparseArray.valueAt(i12);
            f fVar = (f) this.f61256f.f61297c.get(sparseArray.keyAt(i12));
            int i13 = eVar.f61276a + c0732b.f61264c;
            int i14 = eVar.f61277b + c0732b.f61266e;
            this.f61253c.clipRect(i13, i14, Math.min(fVar.f61280c + i13, c0732b.f61265d), Math.min(fVar.f61281d + i14, c0732b.f61267f));
            a aVar = (a) this.f61256f.f61298d.get(fVar.f61284g);
            if (aVar == null && (aVar = (a) this.f61256f.f61300f.get(fVar.f61284g)) == null) {
                aVar = this.f61255e;
            }
            int i15 = 0;
            for (SparseArray sparseArray2 = fVar.f61288k; i15 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i15);
                g gVar = (g) sparseArray2.valueAt(i15);
                c cVar = (c) this.f61256f.f61299e.get(iKeyAt);
                c cVar2 = cVar == null ? (c) this.f61256f.f61301g.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    k(cVar2, aVar, fVar.f61283f, gVar.f61291c + i13, i14 + gVar.f61292d, cVar2.f61269b ? null : this.f61251a, this.f61253c);
                }
                i15++;
            }
            if (fVar.f61279b) {
                int i16 = fVar.f61283f;
                this.f61252b.setColor(i16 == 3 ? aVar.f61261d[fVar.f61285h] : i16 == 2 ? aVar.f61260c[fVar.f61286i] : aVar.f61259b[fVar.f61287j]);
                this.f61253c.drawRect(i13, i14, fVar.f61280c + i13, fVar.f61281d + i14, this.f61252b);
            }
            arrayList.add(new ba.b.C0143b().f(Bitmap.createBitmap(this.f61257g, i13, i14, fVar.f61280c, fVar.f61281d)).k(i13 / c0732b.f61262a).l(0).h(i14 / c0732b.f61263b, 0).i(0).n(fVar.f61280c / c0732b.f61262a).g(fVar.f61281d / c0732b.f61263b).a());
            this.f61253c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f61253c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f61256f.a();
    }
}

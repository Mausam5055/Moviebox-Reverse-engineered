package k3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import i3.k;
import i3.r;
import i3.s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final byte[] f66578h = {0, 7, 8, 15};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f66579i = {0, 119, -120, -1};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final byte[] f66580j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f66581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f66582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Canvas f66583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f66584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final C0806a f66585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f66586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f66587g;

    /* JADX INFO: renamed from: k3.a$a, reason: collision with other inner class name */
    private static final class C0806a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f66589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f66590c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int[] f66591d;

        public C0806a(int i11, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f66588a = i11;
            this.f66589b = iArr;
            this.f66590c = iArr2;
            this.f66591d = iArr3;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66592a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66593b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f66594c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f66595d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f66596e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f66597f;

        public b(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f66592a = i11;
            this.f66593b = i12;
            this.f66594c = i13;
            this.f66595d = i14;
            this.f66596e = i15;
            this.f66597f = i16;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66598a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f66599b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f66600c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f66601d;

        public c(int i11, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f66598a = i11;
            this.f66599b = z10;
            this.f66600c = bArr;
            this.f66601d = bArr2;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f66604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray f66605d;

        public d(int i11, int i12, int i13, SparseArray sparseArray) {
            this.f66602a = i11;
            this.f66603b = i12;
            this.f66604c = i13;
            this.f66605d = sparseArray;
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66607b;

        public e(int i11, int i12) {
            this.f66606a = i11;
            this.f66607b = i12;
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f66609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f66610c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f66611d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f66612e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f66613f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f66614g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f66615h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f66616i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f66617j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final SparseArray f66618k;

        public f(int i11, boolean z10, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, SparseArray sparseArray) {
            this.f66608a = i11;
            this.f66609b = z10;
            this.f66610c = i12;
            this.f66611d = i13;
            this.f66612e = i14;
            this.f66613f = i15;
            this.f66614g = i16;
            this.f66615h = i17;
            this.f66616i = i18;
            this.f66617j = i19;
            this.f66618k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.f66618k;
            for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                this.f66618k.put(sparseArray.keyAt(i11), (g) sparseArray.valueAt(i11));
            }
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66620b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f66621c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f66622d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f66623e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f66624f;

        public g(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f66619a = i11;
            this.f66620b = i12;
            this.f66621c = i13;
            this.f66622d = i14;
            this.f66623e = i15;
            this.f66624f = i16;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66625a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66626b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray f66627c = new SparseArray();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray f66628d = new SparseArray();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray f66629e = new SparseArray();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SparseArray f66630f = new SparseArray();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final SparseArray f66631g = new SparseArray();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public b f66632h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public d f66633i;

        public h(int i11, int i12) {
            this.f66625a = i11;
            this.f66626b = i12;
        }

        public void a() {
            this.f66627c.clear();
            this.f66628d.clear();
            this.f66629e.clear();
            this.f66630f.clear();
            this.f66631g.clear();
            this.f66632h = null;
            this.f66633i = null;
        }
    }

    public a(List list) {
        j0 j0Var = new j0((byte[]) list.get(0));
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        Paint paint = new Paint();
        this.f66581a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f66582b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f66583c = new Canvas();
        this.f66584d = new b(719, 575, 0, 719, 0, 575);
        this.f66585e = new C0806a(0, e(), f(), g());
        this.f66586f = new h(iP, iP2);
    }

    private static byte[] d(int i11, int i12, i0 i0Var) {
        byte[] bArr = new byte[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            bArr[i13] = (byte) i0Var.h(i12);
        }
        return bArr;
    }

    private static int[] e() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] f() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i11 = 1; i11 < 16; i11++) {
            if (i11 < 8) {
                iArr[i11] = h(255, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i11] = h(255, (i11 & 1) != 0 ? 127 : 0, (i11 & 2) != 0 ? 127 : 0, (i11 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] g() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            if (i11 < 8) {
                iArr[i11] = h(63, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) == 0 ? 0 : 255);
            } else {
                int i12 = i11 & Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                if (i12 == 0) {
                    iArr[i11] = h(255, ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? 170 : 0), ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? 170 : 0), ((i11 & 4) == 0 ? 0 : 85) + ((i11 & 64) == 0 ? 0 : 170));
                } else if (i12 == 8) {
                    iArr[i11] = h(127, ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? 170 : 0), ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? 170 : 0), ((i11 & 4) == 0 ? 0 : 85) + ((i11 & 64) == 0 ? 0 : 170));
                } else if (i12 == 128) {
                    iArr[i11] = h(255, ((i11 & 1) != 0 ? 43 : 0) + 127 + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + 127 + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + 127 + ((i11 & 64) == 0 ? 0 : 85));
                } else if (i12 == 136) {
                    iArr[i11] = h(255, ((i11 & 1) != 0 ? 43 : 0) + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + ((i11 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int h(int i11, int i12, int i13, int i14) {
        return (i11 << 24) | (i12 << 16) | (i13 << 8) | i14;
    }

    private static int i(i0 i0Var, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        int i13;
        int iH;
        int iH2;
        int i14 = i11;
        boolean z10 = false;
        while (true) {
            int iH3 = i0Var.h(2);
            if (iH3 != 0) {
                z10 = z10;
                i13 = 1;
            } else {
                if (i0Var.g()) {
                    iH = i0Var.h(3) + 3;
                    iH2 = i0Var.h(2);
                } else {
                    if (i0Var.g()) {
                        i13 = 1;
                    } else {
                        int iH4 = i0Var.h(2);
                        if (iH4 == 0) {
                            z10 = true;
                        } else if (iH4 == 1) {
                            i13 = 2;
                        } else if (iH4 == 2) {
                            iH = i0Var.h(4) + 12;
                            iH2 = i0Var.h(2);
                        } else if (iH4 != 3) {
                            z10 = z10;
                        } else {
                            iH = i0Var.h(8) + 29;
                            iH2 = i0Var.h(2);
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

    private static int j(i0 i0Var, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        int i13;
        int iH;
        int iH2;
        int i14 = i11;
        boolean z10 = false;
        while (true) {
            int iH3 = i0Var.h(4);
            if (iH3 != 0) {
                z10 = z10;
                i13 = 1;
            } else if (i0Var.g()) {
                if (i0Var.g()) {
                    int iH4 = i0Var.h(2);
                    if (iH4 == 0) {
                        i13 = 1;
                    } else if (iH4 == 1) {
                        i13 = 2;
                    } else if (iH4 == 2) {
                        iH = i0Var.h(4) + 9;
                        iH2 = i0Var.h(4);
                    } else if (iH4 != 3) {
                        z10 = z10;
                        iH3 = 0;
                        i13 = 0;
                    } else {
                        iH = i0Var.h(8) + 25;
                        iH2 = i0Var.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = i0Var.h(2) + 4;
                    iH2 = i0Var.h(4);
                }
                z10 = z10;
                i13 = iH;
                iH3 = iH2;
            } else {
                int iH5 = i0Var.h(3);
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

    private static int k(i0 i0Var, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        boolean z10;
        int iH;
        int i13 = i11;
        boolean z11 = false;
        while (true) {
            int iH2 = i0Var.h(8);
            if (iH2 != 0) {
                z10 = z11;
                iH = 1;
            } else if (i0Var.g()) {
                z10 = z11;
                iH = i0Var.h(7);
                iH2 = i0Var.h(8);
            } else {
                int iH3 = i0Var.h(7);
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

    private static void l(byte[] bArr, int[] iArr, int i11, int i12, int i13, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        i0 i0Var = new i0(bArr);
        int i14 = i12;
        int i15 = i13;
        byte[] bArrD = null;
        byte[] bArrD2 = null;
        byte[] bArrD3 = null;
        while (i0Var.b() != 0) {
            int iH = i0Var.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i11 != 3) {
                            if (i11 == 2) {
                                bArr3 = bArrD3 == null ? f66578h : bArrD3;
                            } else {
                                bArr2 = null;
                            }
                            i14 = i(i0Var, iArr, bArr2, i14, i15, paint, canvas);
                            i0Var.c();
                        } else {
                            bArr3 = bArrD == null ? f66579i : bArrD;
                        }
                        bArr2 = bArr3;
                        i14 = i(i0Var, iArr, bArr2, i14, i15, paint, canvas);
                        i0Var.c();
                        break;
                    case 17:
                        i14 = j(i0Var, iArr, i11 == 3 ? bArrD2 == null ? f66580j : bArrD2 : null, i14, i15, paint, canvas);
                        i0Var.c();
                        break;
                    case 18:
                        i14 = k(i0Var, iArr, null, i14, i15, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrD3 = d(4, 4, i0Var);
                                break;
                            case 33:
                                bArrD = d(4, 8, i0Var);
                                break;
                            case 34:
                                bArrD2 = d(16, 8, i0Var);
                                break;
                        }
                        break;
                }
            } else {
                i15 += 2;
                i14 = i12;
            }
        }
    }

    private static void m(c cVar, C0806a c0806a, int i11, int i12, int i13, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i11 == 3) {
            iArr = c0806a.f66591d;
        } else {
            iArr = i11 == 2 ? c0806a.f66590c : c0806a.f66589b;
        }
        int[] iArr2 = iArr;
        l(cVar.f66600c, iArr2, i11, i12, i13, paint, canvas);
        l(cVar.f66601d, iArr2, i11, i12, i13 + 1, paint, canvas);
    }

    private i3.e n(i0 i0Var) {
        while (i0Var.b() >= 48 && i0Var.h(8) == 15) {
            t(i0Var, this.f66586f);
        }
        h hVar = this.f66586f;
        d dVar = hVar.f66633i;
        if (dVar == null) {
            return new i3.e(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET);
        }
        b bVar = hVar.f66632h;
        if (bVar == null) {
            bVar = this.f66584d;
        }
        Bitmap bitmap = this.f66587g;
        if (bitmap == null || bVar.f66592a + 1 != bitmap.getWidth() || bVar.f66593b + 1 != this.f66587g.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar.f66592a + 1, bVar.f66593b + 1, Bitmap.Config.ARGB_8888);
            this.f66587g = bitmapCreateBitmap;
            this.f66583c.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = dVar.f66605d;
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            this.f66583c.save();
            e eVar = (e) sparseArray.valueAt(i11);
            f fVar = (f) this.f66586f.f66627c.get(sparseArray.keyAt(i11));
            int i12 = eVar.f66606a + bVar.f66594c;
            int i13 = eVar.f66607b + bVar.f66596e;
            this.f66583c.clipRect(i12, i13, Math.min(fVar.f66610c + i12, bVar.f66595d), Math.min(fVar.f66611d + i13, bVar.f66597f));
            C0806a c0806a = (C0806a) this.f66586f.f66628d.get(fVar.f66614g);
            if (c0806a == null && (c0806a = (C0806a) this.f66586f.f66630f.get(fVar.f66614g)) == null) {
                c0806a = this.f66585e;
            }
            int i14 = 0;
            for (SparseArray sparseArray2 = fVar.f66618k; i14 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i14);
                g gVar = (g) sparseArray2.valueAt(i14);
                c cVar = (c) this.f66586f.f66629e.get(iKeyAt);
                c cVar2 = cVar == null ? (c) this.f66586f.f66631g.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    m(cVar2, c0806a, fVar.f66613f, gVar.f66621c + i12, i13 + gVar.f66622d, cVar2.f66599b ? null : this.f66581a, this.f66583c);
                }
                i14++;
            }
            if (fVar.f66609b) {
                int i15 = fVar.f66613f;
                this.f66582b.setColor(i15 == 3 ? c0806a.f66591d[fVar.f66615h] : i15 == 2 ? c0806a.f66590c[fVar.f66616i] : c0806a.f66589b[fVar.f66617j]);
                this.f66583c.drawRect(i12, i13, fVar.f66610c + i12, fVar.f66611d + i13, this.f66582b);
            }
            arrayList.add(new u1.a.b().f(Bitmap.createBitmap(this.f66587g, i12, i13, fVar.f66610c, fVar.f66611d)).k(i12 / bVar.f66592a).l(0).h(i13 / bVar.f66593b, 0).i(0).n(fVar.f66610c / bVar.f66592a).g(fVar.f66611d / bVar.f66593b).a());
            this.f66583c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f66583c.restore();
        }
        return new i3.e(arrayList, C.TIME_UNSET, C.TIME_UNSET);
    }

    private static C0806a o(i0 i0Var, int i11) {
        int[] iArr;
        int iH;
        int i12;
        int iH2;
        int iH3;
        int iH4;
        int i13 = 8;
        int iH5 = i0Var.h(8);
        i0Var.r(8);
        int i14 = 2;
        int i15 = i11 - 2;
        int[] iArrE = e();
        int[] iArrF = f();
        int[] iArrG = g();
        while (i15 > 0) {
            int iH6 = i0Var.h(i13);
            int iH7 = i0Var.h(i13);
            if ((iH7 & 128) != 0) {
                iArr = iArrE;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrF : iArrG;
            }
            if ((iH7 & 1) != 0) {
                iH3 = i0Var.h(i13);
                iH4 = i0Var.h(i13);
                iH = i0Var.h(i13);
                iH2 = i0Var.h(i13);
                i12 = i15 - 6;
            } else {
                int iH8 = i0Var.h(6) << i14;
                int iH9 = i0Var.h(4) << 4;
                iH = i0Var.h(4) << 4;
                i12 = i15 - 4;
                iH2 = i0Var.h(i14) << 6;
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
            iArr[iH6] = h((byte) (255 - (iH2 & 255)), a1.p((int) (d11 + (1.402d * d12)), 0, 255), a1.p((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255), a1.p((int) (d11 + (d13 * 1.772d)), 0, 255));
            i15 = i12;
            iH5 = iH5;
            i13 = 8;
            i14 = 2;
        }
        return new C0806a(iH5, iArrE, iArrF, iArrG);
    }

    private static b p(i0 i0Var) {
        int i11;
        int i12;
        int i13;
        int iH;
        i0Var.r(4);
        boolean zG = i0Var.g();
        i0Var.r(3);
        int iH2 = i0Var.h(16);
        int iH3 = i0Var.h(16);
        if (zG) {
            int iH4 = i0Var.h(16);
            int iH5 = i0Var.h(16);
            int iH6 = i0Var.h(16);
            iH = i0Var.h(16);
            i13 = iH5;
            i12 = iH6;
            i11 = iH4;
        } else {
            i11 = 0;
            i12 = 0;
            i13 = iH2;
            iH = iH3;
        }
        return new b(iH2, iH3, i11, i13, i12, iH);
    }

    private static c q(i0 i0Var) {
        byte[] bArr;
        int iH = i0Var.h(16);
        i0Var.r(4);
        int iH2 = i0Var.h(2);
        boolean zG = i0Var.g();
        i0Var.r(1);
        byte[] bArr2 = a1.f10355f;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = i0Var.h(16);
                int iH4 = i0Var.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    i0Var.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    i0Var.k(bArr, 0, iH4);
                }
            }
            return new c(iH, zG, bArr2, bArr);
        }
        i0Var.r(i0Var.h(8) * 16);
        bArr = bArr2;
        return new c(iH, zG, bArr2, bArr);
    }

    private static d r(i0 i0Var, int i11) {
        int iH = i0Var.h(8);
        int iH2 = i0Var.h(4);
        int iH3 = i0Var.h(2);
        i0Var.r(2);
        int i12 = i11 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i12 > 0) {
            int iH4 = i0Var.h(8);
            i0Var.r(8);
            i12 -= 6;
            sparseArray.put(iH4, new e(i0Var.h(16), i0Var.h(16)));
        }
        return new d(iH, iH2, iH3, sparseArray);
    }

    private static f s(i0 i0Var, int i11) {
        int i12;
        int iH;
        int iH2;
        int iH3 = i0Var.h(8);
        i0Var.r(4);
        boolean zG = i0Var.g();
        i0Var.r(3);
        int i13 = 16;
        int iH4 = i0Var.h(16);
        int iH5 = i0Var.h(16);
        int iH6 = i0Var.h(3);
        int iH7 = i0Var.h(3);
        int i14 = 2;
        i0Var.r(2);
        int iH8 = i0Var.h(8);
        int iH9 = i0Var.h(8);
        int iH10 = i0Var.h(4);
        int iH11 = i0Var.h(2);
        i0Var.r(2);
        int i15 = i11 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i15 > 0) {
            int iH12 = i0Var.h(i13);
            int iH13 = i0Var.h(i14);
            int iH14 = i0Var.h(i14);
            int iH15 = i0Var.h(12);
            int i16 = iH11;
            i0Var.r(4);
            int iH16 = i0Var.h(12);
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
            iH2 = i0Var.h(8);
            iH = i0Var.h(8);
            sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
            i14 = i12;
            iH11 = i16;
            i13 = 16;
        }
        return new f(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    private static void t(i0 i0Var, h hVar) {
        f fVar;
        int iH = i0Var.h(8);
        int iH2 = i0Var.h(16);
        int iH3 = i0Var.h(16);
        int iD = i0Var.d() + iH3;
        if (iH3 * 8 > i0Var.b()) {
            u.h("DvbParser", "Data field length exceeds limit");
            i0Var.r(i0Var.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == hVar.f66625a) {
                    d dVar = hVar.f66633i;
                    d dVarR = r(i0Var, iH3);
                    if (dVarR.f66604c != 0) {
                        hVar.f66633i = dVarR;
                        hVar.f66627c.clear();
                        hVar.f66628d.clear();
                        hVar.f66629e.clear();
                    } else if (dVar != null && dVar.f66603b != dVarR.f66603b) {
                        hVar.f66633i = dVarR;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f66633i;
                if (iH2 == hVar.f66625a && dVar2 != null) {
                    f fVarS = s(i0Var, iH3);
                    if (dVar2.f66604c == 0 && (fVar = (f) hVar.f66627c.get(fVarS.f66608a)) != null) {
                        fVarS.a(fVar);
                    }
                    hVar.f66627c.put(fVarS.f66608a, fVarS);
                }
                break;
            case 18:
                if (iH2 == hVar.f66625a) {
                    C0806a c0806aO = o(i0Var, iH3);
                    hVar.f66628d.put(c0806aO.f66588a, c0806aO);
                } else if (iH2 == hVar.f66626b) {
                    C0806a c0806aO2 = o(i0Var, iH3);
                    hVar.f66630f.put(c0806aO2.f66588a, c0806aO2);
                }
                break;
            case 19:
                if (iH2 == hVar.f66625a) {
                    c cVarQ = q(i0Var);
                    hVar.f66629e.put(cVarQ.f66598a, cVarQ);
                } else if (iH2 == hVar.f66626b) {
                    c cVarQ2 = q(i0Var);
                    hVar.f66631g.put(cVarQ2.f66598a, cVarQ2);
                }
                break;
            case 20:
                if (iH2 == hVar.f66625a) {
                    hVar.f66632h = p(i0Var);
                }
                break;
        }
        i0Var.s(iD - i0Var.d());
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        i0 i0Var = new i0(bArr, i12 + i11);
        i0Var.p(i11);
        mVar.accept(n(i0Var));
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
    public void reset() {
        this.f66586f.a();
    }
}

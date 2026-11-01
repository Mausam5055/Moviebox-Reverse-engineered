package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final c f13983f = new C0108a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f13984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f13985b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseBooleanArray f13987d = new SparseBooleanArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f13986c = new androidx.collection.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f13988e = a();

    /* JADX INFO: renamed from: androidx.palette.graphics.a$a, reason: collision with other inner class name */
    static class C0108a implements c {
        C0108a() {
        }

        private boolean b(float[] fArr) {
            return fArr[2] <= 0.05f;
        }

        private boolean c(float[] fArr) {
            float f11 = fArr[0];
            return f11 >= 10.0f && f11 <= 37.0f && fArr[1] <= 0.82f;
        }

        private boolean d(float[] fArr) {
            return fArr[2] >= 0.95f;
        }

        @Override // androidx.palette.graphics.a.c
        public boolean a(int i11, float[] fArr) {
            return (d(fArr) || b(fArr) || c(fArr)) ? false : true;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f13989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bitmap f13990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f13991c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f13992d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f13993e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f13994f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final List f13995g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Rect f13996h;

        /* JADX INFO: renamed from: androidx.palette.graphics.a$b$a, reason: collision with other inner class name */
        class AsyncTaskC0109a extends AsyncTask {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ d f13997a;

            AsyncTaskC0109a(d dVar) {
                this.f13997a = dVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a doInBackground(Bitmap... bitmapArr) {
                try {
                    return b.this.c();
                } catch (Exception e11) {
                    Log.e("Palette", "Exception thrown during async generate", e11);
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(a aVar) {
                this.f13997a.a(aVar);
            }
        }

        public b(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.f13991c = arrayList;
            this.f13992d = 16;
            this.f13993e = 12544;
            this.f13994f = -1;
            ArrayList arrayList2 = new ArrayList();
            this.f13995g = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(a.f13983f);
            this.f13990b = bitmap;
            this.f13989a = null;
            arrayList.add(androidx.palette.graphics.b.f14008e);
            arrayList.add(androidx.palette.graphics.b.f14009f);
            arrayList.add(androidx.palette.graphics.b.f14010g);
            arrayList.add(androidx.palette.graphics.b.f14011h);
            arrayList.add(androidx.palette.graphics.b.f14012i);
            arrayList.add(androidx.palette.graphics.b.f14013j);
        }

        private int[] d(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.f13996h;
            if (rect == null) {
                return iArr;
            }
            int iWidth = rect.width();
            int iHeight = this.f13996h.height();
            int[] iArr2 = new int[iWidth * iHeight];
            for (int i11 = 0; i11 < iHeight; i11++) {
                Rect rect2 = this.f13996h;
                System.arraycopy(iArr, ((rect2.top + i11) * width) + rect2.left, iArr2, i11 * iWidth, iWidth);
            }
            return iArr2;
        }

        private Bitmap e(Bitmap bitmap) {
            int iMax;
            int i11;
            double dSqrt = -1.0d;
            if (this.f13993e > 0) {
                int width = bitmap.getWidth() * bitmap.getHeight();
                int i12 = this.f13993e;
                if (width > i12) {
                    dSqrt = Math.sqrt(((double) i12) / ((double) width));
                }
            } else if (this.f13994f > 0 && (iMax = Math.max(bitmap.getWidth(), bitmap.getHeight())) > (i11 = this.f13994f)) {
                dSqrt = ((double) i11) / ((double) iMax);
            }
            return dSqrt <= 0.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dSqrt), (int) Math.ceil(((double) bitmap.getHeight()) * dSqrt), false);
        }

        public b a() {
            this.f13995g.clear();
            return this;
        }

        public AsyncTask b(d dVar) {
            if (dVar != null) {
                return new AsyncTaskC0109a(dVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f13990b);
            }
            throw new IllegalArgumentException("listener can not be null");
        }

        public a c() {
            List listD;
            c[] cVarArr;
            Bitmap bitmap = this.f13990b;
            if (bitmap != null) {
                Bitmap bitmapE = e(bitmap);
                Rect rect = this.f13996h;
                if (bitmapE != this.f13990b && rect != null) {
                    double width = ((double) bitmapE.getWidth()) / ((double) this.f13990b.getWidth());
                    rect.left = (int) Math.floor(((double) rect.left) * width);
                    rect.top = (int) Math.floor(((double) rect.top) * width);
                    rect.right = Math.min((int) Math.ceil(((double) rect.right) * width), bitmapE.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(((double) rect.bottom) * width), bitmapE.getHeight());
                }
                int[] iArrD = d(bitmapE);
                int i11 = this.f13992d;
                if (this.f13995g.isEmpty()) {
                    cVarArr = null;
                } else {
                    List list = this.f13995g;
                    cVarArr = (c[]) list.toArray(new c[list.size()]);
                }
                ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(iArrD, i11, cVarArr);
                if (bitmapE != this.f13990b) {
                    bitmapE.recycle();
                }
                listD = colorCutQuantizer.d();
            } else {
                listD = this.f13989a;
                if (listD == null) {
                    throw new AssertionError();
                }
            }
            a aVar = new a(listD, this.f13991c);
            aVar.c();
            return aVar;
        }
    }

    public interface c {
        boolean a(int i11, float[] fArr);
    }

    public interface d {
        void a(a aVar);
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f13999a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f14000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f14001c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f14002d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f14003e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f14004f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f14005g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f14006h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float[] f14007i;

        public e(int i11, int i12) {
            this.f13999a = Color.red(i11);
            this.f14000b = Color.green(i11);
            this.f14001c = Color.blue(i11);
            this.f14002d = i11;
            this.f14003e = i12;
        }

        private void a() {
            if (this.f14004f) {
                return;
            }
            int iG = z0.b.g(-1, this.f14002d, 4.5f);
            int iG2 = z0.b.g(-1, this.f14002d, 3.0f);
            if (iG != -1 && iG2 != -1) {
                this.f14006h = z0.b.p(-1, iG);
                this.f14005g = z0.b.p(-1, iG2);
                this.f14004f = true;
                return;
            }
            int iG3 = z0.b.g(ViewCompat.MEASURED_STATE_MASK, this.f14002d, 4.5f);
            int iG4 = z0.b.g(ViewCompat.MEASURED_STATE_MASK, this.f14002d, 3.0f);
            if (iG3 == -1 || iG4 == -1) {
                this.f14006h = iG != -1 ? z0.b.p(-1, iG) : z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG3);
                this.f14005g = iG2 != -1 ? z0.b.p(-1, iG2) : z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG4);
                this.f14004f = true;
            } else {
                this.f14006h = z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG3);
                this.f14005g = z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG4);
                this.f14004f = true;
            }
        }

        public int b() {
            a();
            return this.f14006h;
        }

        public float[] c() {
            if (this.f14007i == null) {
                this.f14007i = new float[3];
            }
            z0.b.a(this.f13999a, this.f14000b, this.f14001c, this.f14007i);
            return this.f14007i;
        }

        public int d() {
            return this.f14003e;
        }

        public int e() {
            return this.f14002d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f14003e == eVar.f14003e && this.f14002d == eVar.f14002d;
        }

        public int f() {
            a();
            return this.f14005g;
        }

        public int hashCode() {
            return (this.f14002d * 31) + this.f14003e;
        }

        public String toString() {
            return e.class.getSimpleName() + " [RGB: #" + Integer.toHexString(e()) + "] [HSL: " + Arrays.toString(c()) + "] [Population: " + this.f14003e + "] [Title Text: #" + Integer.toHexString(f()) + "] [Body Text: #" + Integer.toHexString(b()) + ']';
        }
    }

    a(List list, List list2) {
        this.f13984a = list;
        this.f13985b = list2;
    }

    private e a() {
        int size = this.f13984a.size();
        int iD = Integer.MIN_VALUE;
        e eVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            e eVar2 = (e) this.f13984a.get(i11);
            if (eVar2.d() > iD) {
                iD = eVar2.d();
                eVar = eVar2;
            }
        }
        return eVar;
    }

    public static b b(Bitmap bitmap) {
        return new b(bitmap);
    }

    private float d(e eVar, androidx.palette.graphics.b bVar) {
        float[] fArrC = eVar.c();
        e eVar2 = this.f13988e;
        return (bVar.g() > 0.0f ? bVar.g() * (1.0f - Math.abs(fArrC[1] - bVar.i())) : 0.0f) + (bVar.a() > 0.0f ? bVar.a() * (1.0f - Math.abs(fArrC[2] - bVar.h())) : 0.0f) + (bVar.f() > 0.0f ? bVar.f() * (eVar.d() / (eVar2 != null ? eVar2.d() : 1)) : 0.0f);
    }

    private e e(androidx.palette.graphics.b bVar) {
        e eVarL = l(bVar);
        if (eVarL != null && bVar.j()) {
            this.f13987d.append(eVarL.e(), true);
        }
        return eVarL;
    }

    private e l(androidx.palette.graphics.b bVar) {
        int size = this.f13984a.size();
        float f11 = 0.0f;
        e eVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            e eVar2 = (e) this.f13984a.get(i11);
            if (p(eVar2, bVar)) {
                float fD = d(eVar2, bVar);
                if (eVar == null || fD > f11) {
                    eVar = eVar2;
                    f11 = fD;
                }
            }
        }
        return eVar;
    }

    private boolean p(e eVar, androidx.palette.graphics.b bVar) {
        float[] fArrC = eVar.c();
        return fArrC[1] >= bVar.e() && fArrC[1] <= bVar.c() && fArrC[2] >= bVar.d() && fArrC[2] <= bVar.b() && !this.f13987d.get(eVar.e());
    }

    void c() {
        int size = this.f13985b.size();
        for (int i11 = 0; i11 < size; i11++) {
            androidx.palette.graphics.b bVar = (androidx.palette.graphics.b) this.f13985b.get(i11);
            bVar.k();
            this.f13986c.put(bVar, e(bVar));
        }
        this.f13987d.clear();
    }

    public e f() {
        return n(androidx.palette.graphics.b.f14013j);
    }

    public e g() {
        return n(androidx.palette.graphics.b.f14010g);
    }

    public int h(int i11) {
        e eVar = this.f13988e;
        return eVar != null ? eVar.e() : i11;
    }

    public e i() {
        return this.f13988e;
    }

    public e j() {
        return n(androidx.palette.graphics.b.f14011h);
    }

    public e k() {
        return n(androidx.palette.graphics.b.f14008e);
    }

    public e m() {
        return n(androidx.palette.graphics.b.f14012i);
    }

    public e n(androidx.palette.graphics.b bVar) {
        return (e) this.f13986c.get(bVar);
    }

    public e o() {
        return n(androidx.palette.graphics.b.f14009f);
    }
}

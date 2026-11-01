package androidx.palette.graphics;

import android.graphics.Color;
import android.util.TimingLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
final class ColorCutQuantizer {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Comparator f13966g = new Comparator<a>() { // from class: androidx.palette.graphics.ColorCutQuantizer.1
        @Override // java.util.Comparator
        public int compare(a aVar, a aVar2) {
            return aVar2.g() - aVar.g();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int[] f13967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f13968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List f13969c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final androidx.palette.graphics.a.c[] f13971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float[] f13972f = new float[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final TimingLogger f13970d = null;

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f13973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f13974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f13975c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f13976d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f13977e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f13978f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f13979g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f13980h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f13981i;

        a(int i11, int i12) {
            this.f13973a = i11;
            this.f13974b = i12;
            c();
        }

        final boolean a() {
            return e() > 1;
        }

        final int b() {
            int iF = f();
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f13967a;
            int[] iArr2 = colorCutQuantizer.f13968b;
            ColorCutQuantizer.e(iArr, iF, this.f13973a, this.f13974b);
            Arrays.sort(iArr, this.f13973a, this.f13974b + 1);
            ColorCutQuantizer.e(iArr, iF, this.f13973a, this.f13974b);
            int i11 = this.f13975c / 2;
            int i12 = this.f13973a;
            int i13 = 0;
            while (true) {
                int i14 = this.f13974b;
                if (i12 > i14) {
                    return this.f13973a;
                }
                i13 += iArr2[iArr[i12]];
                if (i13 >= i11) {
                    return Math.min(i14 - 1, i12);
                }
                i12++;
            }
        }

        final void c() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f13967a;
            int[] iArr2 = colorCutQuantizer.f13968b;
            int i11 = Integer.MAX_VALUE;
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = Integer.MIN_VALUE;
            int i15 = 0;
            int i16 = Integer.MAX_VALUE;
            int i17 = Integer.MAX_VALUE;
            for (int i18 = this.f13973a; i18 <= this.f13974b; i18++) {
                int i19 = iArr[i18];
                i15 += iArr2[i19];
                int iK = ColorCutQuantizer.k(i19);
                int iJ = ColorCutQuantizer.j(i19);
                int i20 = ColorCutQuantizer.i(i19);
                if (iK > i12) {
                    i12 = iK;
                }
                if (iK < i11) {
                    i11 = iK;
                }
                if (iJ > i13) {
                    i13 = iJ;
                }
                if (iJ < i16) {
                    i16 = iJ;
                }
                if (i20 > i14) {
                    i14 = i20;
                }
                if (i20 < i17) {
                    i17 = i20;
                }
            }
            this.f13976d = i11;
            this.f13977e = i12;
            this.f13978f = i16;
            this.f13979g = i13;
            this.f13980h = i17;
            this.f13981i = i14;
            this.f13975c = i15;
        }

        final androidx.palette.graphics.a.e d() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f13967a;
            int[] iArr2 = colorCutQuantizer.f13968b;
            int iK = 0;
            int i11 = 0;
            int iJ = 0;
            int i12 = 0;
            for (int i13 = this.f13973a; i13 <= this.f13974b; i13++) {
                int i14 = iArr[i13];
                int i15 = iArr2[i14];
                i11 += i15;
                iK += ColorCutQuantizer.k(i14) * i15;
                iJ += ColorCutQuantizer.j(i14) * i15;
                i12 += i15 * ColorCutQuantizer.i(i14);
            }
            float f11 = i11;
            return new androidx.palette.graphics.a.e(ColorCutQuantizer.b(Math.round(iK / f11), Math.round(iJ / f11), Math.round(i12 / f11)), i11);
        }

        final int e() {
            return (this.f13974b + 1) - this.f13973a;
        }

        final int f() {
            int i11 = this.f13977e - this.f13976d;
            int i12 = this.f13979g - this.f13978f;
            int i13 = this.f13981i - this.f13980h;
            if (i11 < i12 || i11 < i13) {
                return (i12 < i11 || i12 < i13) ? -1 : -2;
            }
            return -3;
        }

        final int g() {
            return ((this.f13977e - this.f13976d) + 1) * ((this.f13979g - this.f13978f) + 1) * ((this.f13981i - this.f13980h) + 1);
        }

        final a h() {
            if (!a()) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int iB = b();
            a aVar = ColorCutQuantizer.this.new a(iB + 1, this.f13974b);
            this.f13974b = iB;
            c();
            return aVar;
        }
    }

    ColorCutQuantizer(int[] iArr, int i11, androidx.palette.graphics.a.c[] cVarArr) {
        this.f13971e = cVarArr;
        int[] iArr2 = new int[32768];
        this.f13968b = iArr2;
        for (int i12 = 0; i12 < iArr.length; i12++) {
            int iG = g(iArr[i12]);
            iArr[i12] = iG;
            iArr2[iG] = iArr2[iG] + 1;
        }
        int i13 = 0;
        for (int i14 = 0; i14 < 32768; i14++) {
            if (iArr2[i14] > 0 && l(i14)) {
                iArr2[i14] = 0;
            }
            if (iArr2[i14] > 0) {
                i13++;
            }
        }
        int[] iArr3 = new int[i13];
        this.f13967a = iArr3;
        int i15 = 0;
        for (int i16 = 0; i16 < 32768; i16++) {
            if (iArr2[i16] > 0) {
                iArr3[i15] = i16;
                i15++;
            }
        }
        if (i13 > i11) {
            this.f13969c = h(i11);
            return;
        }
        this.f13969c = new ArrayList();
        for (int i17 = 0; i17 < i13; i17++) {
            int i18 = iArr3[i17];
            this.f13969c.add(new androidx.palette.graphics.a.e(a(i18), iArr2[i18]));
        }
    }

    private static int a(int i11) {
        return b(k(i11), j(i11), i(i11));
    }

    static int b(int i11, int i12, int i13) {
        return Color.rgb(f(i11, 5, 8), f(i12, 5, 8), f(i13, 5, 8));
    }

    private List c(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            androidx.palette.graphics.a.e eVarD = ((a) it.next()).d();
            if (!n(eVarD)) {
                arrayList.add(eVarD);
            }
        }
        return arrayList;
    }

    static void e(int[] iArr, int i11, int i12, int i13) {
        if (i11 == -2) {
            while (i12 <= i13) {
                int i14 = iArr[i12];
                iArr[i12] = i(i14) | (j(i14) << 10) | (k(i14) << 5);
                i12++;
            }
            return;
        }
        if (i11 != -1) {
            return;
        }
        while (i12 <= i13) {
            int i15 = iArr[i12];
            iArr[i12] = k(i15) | (i(i15) << 10) | (j(i15) << 5);
            i12++;
        }
    }

    private static int f(int i11, int i12, int i13) {
        return (i13 > i12 ? i11 << (i13 - i12) : i11 >> (i12 - i13)) & ((1 << i13) - 1);
    }

    private static int g(int i11) {
        return f(Color.blue(i11), 8, 5) | (f(Color.red(i11), 8, 5) << 10) | (f(Color.green(i11), 8, 5) << 5);
    }

    private List h(int i11) {
        PriorityQueue priorityQueue = new PriorityQueue(i11, f13966g);
        priorityQueue.offer(new a(0, this.f13967a.length - 1));
        o(priorityQueue, i11);
        return c(priorityQueue);
    }

    static int i(int i11) {
        return i11 & 31;
    }

    static int j(int i11) {
        return (i11 >> 5) & 31;
    }

    static int k(int i11) {
        return (i11 >> 10) & 31;
    }

    private boolean l(int i11) {
        int iA = a(i11);
        z0.b.h(iA, this.f13972f);
        return m(iA, this.f13972f);
    }

    private boolean m(int i11, float[] fArr) {
        androidx.palette.graphics.a.c[] cVarArr = this.f13971e;
        if (cVarArr != null && cVarArr.length > 0) {
            int length = cVarArr.length;
            for (int i12 = 0; i12 < length; i12++) {
                if (!this.f13971e[i12].a(i11, fArr)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean n(androidx.palette.graphics.a.e eVar) {
        return m(eVar.e(), eVar.c());
    }

    private void o(PriorityQueue priorityQueue, int i11) {
        a aVar;
        while (priorityQueue.size() < i11 && (aVar = (a) priorityQueue.poll()) != null && aVar.a()) {
            priorityQueue.offer(aVar.h());
            priorityQueue.offer(aVar);
        }
    }

    List d() {
        return this.f13969c;
    }
}

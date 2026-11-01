package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2836a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d f2837b = new i();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final d f2838c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final k f2839d = new j();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final k f2840e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final e f2841f = new C0034b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final e f2842g = new h();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final e f2843h = new g();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final e f2844i = new f();

    public static final class a implements k {
        a() {
        }

        @Override // androidx.compose.foundation.layout.b.k
        public /* synthetic */ float a() {
            return androidx.compose.foundation.layout.d.a(this);
        }

        @Override // androidx.compose.foundation.layout.b.k
        public void c(o0.e eVar, int i11, int[] iArr, int[] iArr2) {
            b.f2836a.g(i11, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#Bottom";
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.b$b, reason: collision with other inner class name */
    public static final class C0034b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f2845a = o0.i.g(0);

        C0034b() {
        }

        @Override // androidx.compose.foundation.layout.b.d, androidx.compose.foundation.layout.b.k
        public float a() {
            return this.f2845a;
        }

        @Override // androidx.compose.foundation.layout.b.d
        public void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2836a.e(i11, iArr, iArr2, false);
            } else {
                b.f2836a.e(i11, iArr, iArr2, true);
            }
        }

        @Override // androidx.compose.foundation.layout.b.k
        public void c(o0.e eVar, int i11, int[] iArr, int[] iArr2) {
            b.f2836a.e(i11, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#Center";
        }
    }

    public static final class c implements d {
        c() {
        }

        @Override // androidx.compose.foundation.layout.b.d, androidx.compose.foundation.layout.b.k
        public /* synthetic */ float a() {
            return androidx.compose.foundation.layout.c.a(this);
        }

        @Override // androidx.compose.foundation.layout.b.d
        public void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2836a.g(i11, iArr, iArr2, false);
            } else {
                b.f2836a.f(iArr, iArr2, true);
            }
        }

        public String toString() {
            return "Arrangement#End";
        }
    }

    public interface d {
        float a();

        void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2);
    }

    public interface e extends d, k {
    }

    public static final class f implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f2846a = o0.i.g(0);

        f() {
        }

        @Override // androidx.compose.foundation.layout.b.d, androidx.compose.foundation.layout.b.k
        public float a() {
            return this.f2846a;
        }

        @Override // androidx.compose.foundation.layout.b.d
        public void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2836a.h(i11, iArr, iArr2, false);
            } else {
                b.f2836a.h(i11, iArr, iArr2, true);
            }
        }

        @Override // androidx.compose.foundation.layout.b.k
        public void c(o0.e eVar, int i11, int[] iArr, int[] iArr2) {
            b.f2836a.h(i11, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#SpaceAround";
        }
    }

    public static final class g implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f2847a = o0.i.g(0);

        g() {
        }

        @Override // androidx.compose.foundation.layout.b.d, androidx.compose.foundation.layout.b.k
        public float a() {
            return this.f2847a;
        }

        @Override // androidx.compose.foundation.layout.b.d
        public void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2836a.i(i11, iArr, iArr2, false);
            } else {
                b.f2836a.i(i11, iArr, iArr2, true);
            }
        }

        @Override // androidx.compose.foundation.layout.b.k
        public void c(o0.e eVar, int i11, int[] iArr, int[] iArr2) {
            b.f2836a.i(i11, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#SpaceBetween";
        }
    }

    public static final class h implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f2848a = o0.i.g(0);

        h() {
        }

        @Override // androidx.compose.foundation.layout.b.d, androidx.compose.foundation.layout.b.k
        public float a() {
            return this.f2848a;
        }

        @Override // androidx.compose.foundation.layout.b.d
        public void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2836a.j(i11, iArr, iArr2, false);
            } else {
                b.f2836a.j(i11, iArr, iArr2, true);
            }
        }

        @Override // androidx.compose.foundation.layout.b.k
        public void c(o0.e eVar, int i11, int[] iArr, int[] iArr2) {
            b.f2836a.j(i11, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#SpaceEvenly";
        }
    }

    public static final class i implements d {
        i() {
        }

        @Override // androidx.compose.foundation.layout.b.d, androidx.compose.foundation.layout.b.k
        public /* synthetic */ float a() {
            return androidx.compose.foundation.layout.c.a(this);
        }

        @Override // androidx.compose.foundation.layout.b.d
        public void b(o0.e eVar, int i11, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2836a.f(iArr, iArr2, false);
            } else {
                b.f2836a.g(i11, iArr, iArr2, true);
            }
        }

        public String toString() {
            return "Arrangement#Start";
        }
    }

    public static final class j implements k {
        j() {
        }

        @Override // androidx.compose.foundation.layout.b.k
        public /* synthetic */ float a() {
            return androidx.compose.foundation.layout.d.a(this);
        }

        @Override // androidx.compose.foundation.layout.b.k
        public void c(o0.e eVar, int i11, int[] iArr, int[] iArr2) {
            b.f2836a.f(iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#Top";
        }
    }

    public interface k {
        float a();

        void c(o0.e eVar, int i11, int[] iArr, int[] iArr2);
    }

    private b() {
    }

    public final k a() {
        return f2840e;
    }

    public final e b() {
        return f2841f;
    }

    public final d c() {
        return f2837b;
    }

    public final k d() {
        return f2839d;
    }

    public final void e(int i11, int[] iArr, int[] iArr2, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            i13 += i14;
        }
        float f11 = (i11 - i13) / 2;
        if (!z10) {
            int length = iArr.length;
            int i15 = 0;
            while (i12 < length) {
                int i16 = iArr[i12];
                iArr2[i15] = Math.round(f11);
                f11 += i16;
                i12++;
                i15++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i17 = iArr[length2];
            iArr2[length2] = Math.round(f11);
            f11 += i17;
        }
    }

    public final void f(int[] iArr, int[] iArr2, boolean z10) {
        int i11 = 0;
        if (!z10) {
            int length = iArr.length;
            int i12 = 0;
            int i13 = 0;
            while (i11 < length) {
                int i14 = iArr[i11];
                iArr2[i12] = i13;
                i13 += i14;
                i11++;
                i12++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i15 = iArr[length2];
            iArr2[length2] = i11;
            i11 += i15;
        }
    }

    public final void g(int i11, int[] iArr, int[] iArr2, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            i13 += i14;
        }
        int i15 = i11 - i13;
        if (!z10) {
            int length = iArr.length;
            int i16 = 0;
            while (i12 < length) {
                int i17 = iArr[i12];
                iArr2[i16] = i15;
                i15 += i17;
                i12++;
                i16++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i18 = iArr[length2];
            iArr2[length2] = i15;
            i15 += i18;
        }
    }

    public final void h(int i11, int[] iArr, int[] iArr2, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            i13 += i14;
        }
        float length = !(iArr.length == 0) ? (i11 - i13) / iArr.length : 0.0f;
        float f11 = length / 2;
        if (z10) {
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i15 = iArr[length2];
                iArr2[length2] = Math.round(f11);
                f11 += i15 + length;
            }
            return;
        }
        int length3 = iArr.length;
        int i16 = 0;
        while (i12 < length3) {
            int i17 = iArr[i12];
            iArr2[i16] = Math.round(f11);
            f11 += i17 + length;
            i12++;
            i16++;
        }
    }

    public final void i(int i11, int[] iArr, int[] iArr2, boolean z10) {
        if (iArr.length == 0) {
            return;
        }
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            i13 += i14;
        }
        float fMax = (i11 - i13) / Math.max(ArraysKt.Z(iArr), 1);
        float f11 = (z10 && iArr.length == 1) ? fMax : 0.0f;
        if (z10) {
            for (int length = iArr.length - 1; -1 < length; length--) {
                int i15 = iArr[length];
                iArr2[length] = Math.round(f11);
                f11 += i15 + fMax;
            }
            return;
        }
        int length2 = iArr.length;
        int i16 = 0;
        while (i12 < length2) {
            int i17 = iArr[i12];
            iArr2[i16] = Math.round(f11);
            f11 += i17 + fMax;
            i12++;
            i16++;
        }
    }

    public final void j(int i11, int[] iArr, int[] iArr2, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            i13 += i14;
        }
        float length = (i11 - i13) / (iArr.length + 1);
        if (z10) {
            float f11 = length;
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i15 = iArr[length2];
                iArr2[length2] = Math.round(f11);
                f11 += i15 + length;
            }
            return;
        }
        int length3 = iArr.length;
        float f12 = length;
        int i16 = 0;
        while (i12 < length3) {
            int i17 = iArr[i12];
            iArr2[i16] = Math.round(f12);
            f12 += i17 + length;
            i12++;
            i16++;
        }
    }
}

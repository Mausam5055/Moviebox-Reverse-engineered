package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.collection.z;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final o f79134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final z f79135b;

    public static class a extends androidx.core.provider.k.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private y0.h.e f79136a;

        public a(y0.h.e eVar) {
            this.f79136a = eVar;
        }

        @Override // androidx.core.provider.k.c
        public void a(int i11) {
            y0.h.e eVar = this.f79136a;
            if (eVar != null) {
                eVar.f(i11);
            }
        }

        @Override // androidx.core.provider.k.c
        public void b(Typeface typeface) {
            y0.h.e eVar = this.f79136a;
            if (eVar != null) {
                eVar.g(typeface);
            }
        }
    }

    static {
        f4.a.c("TypefaceCompat static init");
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 29) {
            f79134a = new n();
        } else if (i11 >= 28) {
            f79134a = new m();
        } else if (i11 >= 26) {
            f79134a = new l();
        } else if (i11 < 24 || !k.k()) {
            f79134a = new j();
        } else {
            f79134a = new k();
        }
        f79135b = new z(16);
        f4.a.f();
    }

    public static Typeface a(Context context, Typeface typeface, int i11) {
        if (context != null) {
            return Typeface.create(typeface, i11);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i11) {
        f4.a.c("TypefaceCompat.createFromFontInfo");
        try {
            return f79134a.b(context, cancellationSignal, bVarArr, i11);
        } finally {
            f4.a.f();
        }
    }

    public static Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i11) {
        f4.a.c("TypefaceCompat.createFromFontInfoWithFallback");
        try {
            return f79134a.c(context, cancellationSignal, list, i11);
        } finally {
            f4.a.f();
        }
    }

    public static Typeface d(Context context, y0.e.b bVar, Resources resources, int i11, String str, int i12, int i13, y0.h.e eVar, Handler handler, boolean z10) {
        Typeface typefaceA;
        if (bVar instanceof y0.e.C0965e) {
            y0.e.C0965e c0965e = (y0.e.C0965e) bVar;
            Typeface typefaceH = h(c0965e.d());
            if (typefaceH != null) {
                if (eVar != null) {
                    eVar.d(typefaceH, handler);
                }
                return typefaceH;
            }
            typefaceA = androidx.core.provider.k.c(context, c0965e.a() != null ? h.a(new Object[]{c0965e.c(), c0965e.a()}) : h.a(new Object[]{c0965e.c()}), i13, !z10 ? eVar != null : c0965e.b() != 0, z10 ? c0965e.e() : -1, y0.h.e.e(handler), new a(eVar));
        } else {
            typefaceA = f79134a.a(context, (y0.e.c) bVar, resources, i13);
            if (eVar != null) {
                if (typefaceA != null) {
                    eVar.d(typefaceA, handler);
                } else {
                    eVar.c(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            f79135b.put(f(resources, i11, str, i12, i13), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface e(Context context, Resources resources, int i11, String str, int i12, int i13) {
        Typeface typefaceE = f79134a.e(context, resources, i11, str, i13);
        if (typefaceE != null) {
            f79135b.put(f(resources, i11, str, i12, i13), typefaceE);
        }
        return typefaceE;
    }

    private static String f(Resources resources, int i11, String str, int i12, int i13) {
        return resources.getResourcePackageName(i11) + '-' + str + '-' + i12 + '-' + i11 + '-' + i13;
    }

    public static Typeface g(Resources resources, int i11, String str, int i12, int i13) {
        return (Typeface) f79135b.get(f(resources, i11, str, i12, i13));
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}

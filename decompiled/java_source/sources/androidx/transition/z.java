package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
abstract class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c0 f15117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Property f15118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Property f15119c;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(z.b(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f11) {
            z.e(view, f11.floatValue());
        }
    }

    class b extends Property {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return view.getClipBounds();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f15117a = new k0();
        } else {
            f15117a = new j0();
        }
        f15118b = new a(Float.class, "translationAlpha");
        f15119c = new b(Rect.class, "clipBounds");
    }

    static void a(View view) {
        f15117a.a(view);
    }

    static float b(View view) {
        return f15117a.b(view);
    }

    static void c(View view) {
        f15117a.c(view);
    }

    static void d(View view, int i11, int i12, int i13, int i14) {
        f15117a.d(view, i11, i12, i13, i14);
    }

    static void e(View view, float f11) {
        f15117a.e(view, f11);
    }

    static void f(View view, int i11) {
        f15117a.f(view, i11);
    }

    static void g(View view, Matrix matrix) {
        f15117a.g(view, matrix);
    }

    static void h(View view, Matrix matrix) {
        f15117a.h(view, matrix);
    }
}

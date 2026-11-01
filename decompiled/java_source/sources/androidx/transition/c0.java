package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f15012a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f15013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f15014c;

    static class a {
        static float a(View view) {
            return view.getTransitionAlpha();
        }

        static void b(View view, float f11) {
            view.setTransitionAlpha(f11);
        }
    }

    c0() {
    }

    public void a(View view) {
    }

    public float b(View view) {
        if (f15012a) {
            try {
                return a.a(view);
            } catch (NoSuchMethodError unused) {
                f15012a = false;
            }
        }
        return view.getAlpha();
    }

    public void c(View view) {
    }

    public abstract void d(View view, int i11, int i12, int i13, int i14);

    public void e(View view, float f11) {
        if (f15012a) {
            try {
                a.b(view, f11);
                return;
            } catch (NoSuchMethodError unused) {
                f15012a = false;
            }
        }
        view.setAlpha(f11);
    }

    public void f(View view, int i11) {
        if (!f15014c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f15013b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f15014c = true;
        }
        Field field = f15013b;
        if (field != null) {
            try {
                f15013b.setInt(view, i11 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public abstract void g(View view, Matrix matrix);

    public abstract void h(View view, Matrix matrix);
}

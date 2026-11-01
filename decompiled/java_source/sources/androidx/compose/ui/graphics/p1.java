package androidx.compose.ui.graphics;

import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p1 f4611a = new p1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f4612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f4613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f4614d;

    private p1() {
    }

    public final void a(Canvas canvas, boolean z10) {
        Method method;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 29) {
            s1.f4636a.a(canvas, z10);
            return;
        }
        if (!f4614d) {
            try {
                if (i11 == 28) {
                    Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass());
                    f4612b = (Method) declaredMethod.invoke(Canvas.class, "insertReorderBarrier", new Class[0]);
                    f4613c = (Method) declaredMethod.invoke(Canvas.class, "insertInorderBarrier", new Class[0]);
                } else {
                    f4612b = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                    f4613c = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                }
                Method method2 = f4612b;
                if (method2 != null) {
                    method2.setAccessible(true);
                }
                Method method3 = f4613c;
                if (method3 != null) {
                    method3.setAccessible(true);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
            f4614d = true;
        }
        if (z10) {
            try {
                Method method4 = f4612b;
                if (method4 != null) {
                    Intrinsics.e(method4);
                    method4.invoke(canvas, null);
                }
            } catch (IllegalAccessException | InvocationTargetException unused2) {
                return;
            }
        }
        if (z10 || (method = f4613c) == null) {
            return;
        }
        Intrinsics.e(method);
        method.invoke(canvas, null);
    }
}

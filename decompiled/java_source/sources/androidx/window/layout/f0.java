package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 implements c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0 f15338a = new f0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f15339b;

    static {
        String simpleName = f0.class.getSimpleName();
        Intrinsics.g(simpleName, "WindowMetricsCalculatorC…at::class.java.simpleName");
        f15339b = simpleName;
    }

    private f0() {
    }

    private final DisplayCutout f(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(null);
            constructor.setAccessible(true);
            Object objNewInstance = constructor.newInstance(null);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", objNewInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, objNewInstance);
            Field declaredField = objNewInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objNewInstance);
            if (d0.a(obj)) {
                return e0.a(obj);
            }
            return null;
        } catch (ClassNotFoundException e11) {
            Log.w(f15339b, e11);
            return null;
        } catch (IllegalAccessException e12) {
            Log.w(f15339b, e12);
            return null;
        } catch (InstantiationException e13) {
            Log.w(f15339b, e13);
            return null;
        } catch (NoSuchFieldException e14) {
            Log.w(f15339b, e14);
            return null;
        } catch (NoSuchMethodException e15) {
            Log.w(f15339b, e15);
            return null;
        } catch (InvocationTargetException e16) {
            Log.w(f15339b, e16);
            return null;
        }
    }

    private final int g(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private final void i(Activity activity, Rect rect) {
        activity.getWindowManager().getDefaultDisplay().getRectSize(rect);
    }

    public b0 a(Activity activity) {
        Rect rectC;
        Intrinsics.h(activity, "activity");
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            rectC = e.f15336a.a(activity);
        } else if (i11 >= 29) {
            rectC = e(activity);
        } else if (i11 >= 28) {
            rectC = d(activity);
        } else {
            rectC = i11 >= 24 ? c(activity) : b(activity);
        }
        return new b0(rectC);
    }

    public final Rect b(Activity activity) {
        int i11;
        Intrinsics.h(activity, "activity");
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Intrinsics.g(defaultDisplay, "defaultDisplay");
        Point pointH = h(defaultDisplay);
        Rect rect = new Rect();
        int i12 = pointH.x;
        if (i12 == 0 || (i11 = pointH.y) == 0) {
            defaultDisplay.getRectSize(rect);
        } else {
            rect.right = i12;
            rect.bottom = i11;
        }
        return rect;
    }

    public final Rect c(Activity activity) {
        Intrinsics.h(activity, "activity");
        Rect rect = new Rect();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        defaultDisplay.getRectSize(rect);
        if (!b.f15334a.a(activity)) {
            Intrinsics.g(defaultDisplay, "defaultDisplay");
            Point pointH = h(defaultDisplay);
            int iG = g(activity);
            int i11 = rect.bottom;
            if (i11 + iG == pointH.y) {
                rect.bottom = i11 + iG;
            } else {
                int i12 = rect.right;
                if (i12 + iG == pointH.x) {
                    rect.right = i12 + iG;
                }
            }
        }
        return rect;
    }

    public final Rect d(Activity activity) {
        DisplayCutout displayCutoutF;
        Intrinsics.h(activity, "activity");
        Rect rect = new Rect();
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            if (b.f15334a.a(activity)) {
                Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", null).invoke(obj, null);
                if (objInvoke == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
                }
                rect.set((Rect) objInvoke);
            } else {
                Object objInvoke2 = obj.getClass().getDeclaredMethod("getAppBounds", null).invoke(obj, null);
                if (objInvoke2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
                }
                rect.set((Rect) objInvoke2);
            }
        } catch (IllegalAccessException e11) {
            Log.w(f15339b, e11);
            i(activity, rect);
        } catch (NoSuchFieldException e12) {
            Log.w(f15339b, e12);
            i(activity, rect);
        } catch (NoSuchMethodException e13) {
            Log.w(f15339b, e13);
            i(activity, rect);
        } catch (InvocationTargetException e14) {
            Log.w(f15339b, e14);
            i(activity, rect);
        }
        Display currentDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        f fVar = f.f15337a;
        Intrinsics.g(currentDisplay, "currentDisplay");
        fVar.a(currentDisplay, point);
        b bVar = b.f15334a;
        if (!bVar.a(activity)) {
            int iG = g(activity);
            int i11 = rect.bottom;
            if (i11 + iG == point.y) {
                rect.bottom = i11 + iG;
            } else {
                int i12 = rect.right;
                if (i12 + iG == point.x) {
                    rect.right = i12 + iG;
                } else if (rect.left == iG) {
                    rect.left = 0;
                }
            }
        }
        if ((rect.width() < point.x || rect.height() < point.y) && !bVar.a(activity) && (displayCutoutF = f(currentDisplay)) != null) {
            int i13 = rect.left;
            k kVar = k.f15340a;
            if (i13 == kVar.b(displayCutoutF)) {
                rect.left = 0;
            }
            if (point.x - rect.right == kVar.c(displayCutoutF)) {
                rect.right += kVar.c(displayCutoutF);
            }
            if (rect.top == kVar.d(displayCutoutF)) {
                rect.top = 0;
            }
            if (point.y - rect.bottom == kVar.a(displayCutoutF)) {
                rect.bottom += kVar.a(displayCutoutF);
            }
        }
        return rect;
    }

    public final Rect e(Activity activity) {
        Intrinsics.h(activity, "activity");
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", null).invoke(obj, null);
            if (objInvoke != null) {
                return new Rect((Rect) objInvoke);
            }
            throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
        } catch (IllegalAccessException e11) {
            Log.w(f15339b, e11);
            return d(activity);
        } catch (NoSuchFieldException e12) {
            Log.w(f15339b, e12);
            return d(activity);
        } catch (NoSuchMethodException e13) {
            Log.w(f15339b, e13);
            return d(activity);
        } catch (InvocationTargetException e14) {
            Log.w(f15339b, e14);
            return d(activity);
        }
    }

    public final Point h(Display display) {
        Intrinsics.h(display, "display");
        Point point = new Point();
        f.f15337a.a(display, point);
        return point;
    }
}

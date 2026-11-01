package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
abstract class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Field f1105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class f1107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f1108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Field f1109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f1110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Field f1111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f1112h;

    static void a(Resources resources) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28) {
            return;
        }
        if (i11 >= 24) {
            c(resources);
        } else {
            b(resources);
        }
    }

    private static void b(Resources resources) {
        Object obj;
        if (!f1106b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f1105a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e11);
            }
            f1106b = true;
        }
        Field field = f1105a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e12) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e12);
                obj = null;
            }
        } else {
            obj = null;
        }
        if (obj == null) {
            return;
        }
        d(obj);
    }

    private static void c(Resources resources) {
        Object obj;
        if (!f1112h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f1111g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e11);
            }
            f1112h = true;
        }
        Field field = f1111g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e12) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e12);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f1106b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f1105a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e13) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e13);
            }
            f1106b = true;
        }
        Field field2 = f1105a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e14) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e14);
            }
        }
        if (obj2 != null) {
            d(obj2);
        }
    }

    private static void d(Object obj) {
        LongSparseArray longSparseArray;
        if (!f1108d) {
            try {
                f1107c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e11) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e11);
            }
            f1108d = true;
        }
        Class cls = f1107c;
        if (cls == null) {
            return;
        }
        if (!f1110f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f1109e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e12) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e12);
            }
            f1110f = true;
        }
        Field field = f1109e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e13) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e13);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}

package y0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f78526a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap f78527b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f78528c = new Object();

    static class a {
        static Drawable a(Resources resources, int i11, Resources.Theme theme) {
            return resources.getDrawable(i11, theme);
        }

        static Drawable b(Resources resources, int i11, int i12, Resources.Theme theme) {
            return resources.getDrawableForDensity(i11, i12, theme);
        }
    }

    static class b {
        static ColorStateList a(Resources resources, int i11, Resources.Theme theme) {
            return resources.getColorStateList(i11, theme);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ColorStateList f78529a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Configuration f78530b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f78531c;

        c(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f78529a = colorStateList;
            this.f78530b = configuration;
            this.f78531c = theme == null ? 0 : theme.hashCode();
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Resources f78532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Resources.Theme f78533b;

        d(Resources resources, Resources.Theme theme) {
            this.f78532a = resources;
            this.f78533b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f78532a.equals(dVar.f78532a) && androidx.core.util.d.a(this.f78533b, dVar.f78533b);
        }

        public int hashCode() {
            return androidx.core.util.d.b(this.f78532a, this.f78533b);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class e {
        public static Handler e(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void c(final int i11, Handler handler) {
            e(handler).post(new Runnable() { // from class: y0.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78539a.f(i11);
                }
            });
        }

        public final void d(final Typeface typeface, Handler handler) {
            e(handler).post(new Runnable() { // from class: y0.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78537a.g(typeface);
                }
            });
        }

        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public abstract void f(int i11);

        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public abstract void g(Typeface typeface);
    }

    public static final class f {

        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final Object f78534a = new Object();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static Method f78535b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static boolean f78536c;

            static void a(Resources.Theme theme) {
                synchronized (f78534a) {
                    if (!f78536c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                            f78535b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f78536c = true;
                    }
                    Method method = f78535b;
                    if (method != null) {
                        try {
                            method.invoke(theme, null);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f78535b = null;
                        }
                    }
                }
            }
        }

        static class b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                b.a(theme);
            } else {
                a.a(theme);
            }
        }
    }

    private static void a(d dVar, int i11, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f78528c) {
            try {
                WeakHashMap weakHashMap = f78527b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(dVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(dVar, sparseArray);
                }
                sparseArray.append(i11, new c(colorStateList, dVar.f78532a.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        if (r2.f78531c == r5.hashCode()) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList b(d dVar, int i11) {
        c cVar;
        synchronized (f78528c) {
            try {
                SparseArray sparseArray = (SparseArray) f78527b.get(dVar);
                if (sparseArray != null && sparseArray.size() > 0 && (cVar = (c) sparseArray.get(i11)) != null) {
                    if (cVar.f78530b.equals(dVar.f78532a.getConfiguration())) {
                        Resources.Theme theme = dVar.f78533b;
                        if (theme != null || cVar.f78531c != 0) {
                            if (theme != null) {
                            }
                        }
                        return cVar.f78529a;
                    }
                    sparseArray.remove(i11);
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Typeface c(Context context, int i11) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i11, new TypedValue(), 0, null, null, false, true);
    }

    public static ColorStateList d(Resources resources, int i11, Resources.Theme theme) {
        d dVar = new d(resources, theme);
        ColorStateList colorStateListB = b(dVar, i11);
        if (colorStateListB != null) {
            return colorStateListB;
        }
        ColorStateList colorStateListK = k(resources, i11, theme);
        if (colorStateListK == null) {
            return b.a(resources, i11, theme);
        }
        a(dVar, i11, colorStateListK, theme);
        return colorStateListK;
    }

    public static Drawable e(Resources resources, int i11, Resources.Theme theme) {
        return a.a(resources, i11, theme);
    }

    public static Drawable f(Resources resources, int i11, int i12, Resources.Theme theme) {
        return a.b(resources, i11, i12, theme);
    }

    public static Typeface g(Context context, int i11) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i11, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface h(Context context, int i11, TypedValue typedValue, int i12, e eVar) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i11, typedValue, i12, eVar, null, true, false);
    }

    public static void i(Context context, int i11, e eVar, Handler handler) {
        androidx.core.util.i.g(eVar);
        if (context.isRestricted()) {
            eVar.c(-4, handler);
        } else {
            m(context, i11, new TypedValue(), 0, eVar, handler, false, false);
        }
    }

    private static TypedValue j() {
        ThreadLocal threadLocal = f78526a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    private static ColorStateList k(Resources resources, int i11, Resources.Theme theme) {
        if (l(resources, i11)) {
            return null;
        }
        try {
            return y0.c.a(resources, resources.getXml(i11), theme);
        } catch (Exception e11) {
            Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e11);
            return null;
        }
    }

    private static boolean l(Resources resources, int i11) {
        TypedValue typedValueJ = j();
        resources.getValue(i11, typedValueJ, true);
        int i12 = typedValueJ.type;
        return i12 >= 28 && i12 <= 31;
    }

    private static Typeface m(Context context, int i11, TypedValue typedValue, int i12, e eVar, Handler handler, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i11, typedValue, true);
        Typeface typefaceN = n(context, resources, typedValue, i11, i12, eVar, handler, z10, z11);
        if (typefaceN != null || eVar != null || z11) {
            return typefaceN;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i11) + " could not be retrieved.");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    private static Typeface n(Context context, Resources resources, TypedValue typedValue, int i11, int i12, e eVar, Handler handler, boolean z10, boolean z11) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i11) + "\" (" + Integer.toHexString(i11) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        int i13 = 0;
        if (!string.startsWith("res/")) {
            if (eVar != null) {
                eVar.c(-3, handler);
            }
            return null;
        }
        Typeface typefaceG = z0.i.g(resources, i11, string, typedValue.assetCookie, i12);
        if (typefaceG != null) {
            if (eVar != null) {
                eVar.d(typefaceG, handler);
            }
            return typefaceG;
        }
        if (z11) {
            return null;
        }
        try {
            try {
                if (!string.toLowerCase().endsWith(".xml")) {
                    Typeface typefaceE = z0.i.e(context, resources, i11, string, typedValue.assetCookie, i12);
                    if (eVar != null) {
                        if (typefaceE != null) {
                            eVar.d(typefaceE, handler);
                        } else {
                            eVar.c(-3, handler);
                        }
                    }
                    return typefaceE;
                }
                y0.e.b bVarB = y0.e.b(resources.getXml(i11), resources);
                if (bVarB != null) {
                    return z0.i.d(context, bVarB, resources, i11, string, typedValue.assetCookie, i12, eVar, handler, z10);
                }
                Log.e("ResourcesCompat", "Failed to find font-family tag");
                if (eVar != null) {
                    eVar.c(-3, handler);
                }
                return null;
            } catch (IOException e11) {
                e = e11;
                Log.e("ResourcesCompat", "Failed to read xml resource " + string, e);
                if (eVar != null) {
                    return null;
                }
                eVar.c(i13, handler);
                return null;
            } catch (XmlPullParserException e12) {
                e = e12;
                Log.e("ResourcesCompat", "Failed to parse xml resource " + string, e);
                if (eVar != null) {
                    return null;
                }
                eVar.c(i13, handler);
                return null;
            }
        } catch (IOException e13) {
            e = e13;
            i13 = -3;
        } catch (XmlPullParserException e14) {
            e = e14;
            i13 = -3;
        }
    }
}

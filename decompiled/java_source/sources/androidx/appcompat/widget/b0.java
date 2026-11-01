package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R$drawable;
import androidx.collection.x0;
import androidx.collection.y0;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static b0 f1952i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakHashMap f1954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x0 f1955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private y0 f1956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakHashMap f1957d = new WeakHashMap(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TypedValue f1958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f1960g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PorterDuff.Mode f1951h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final c f1953j = new c(6);

    static class a implements e {
        a() {
        }

        @Override // androidx.appcompat.widget.b0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.graphics.drawable.a.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e11) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e11);
                return null;
            }
        }
    }

    private static class b implements e {
        b() {
        }

        @Override // androidx.appcompat.widget.b0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.graphics.drawable.c.b(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e11) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e11);
                return null;
            }
        }
    }

    private static class c extends androidx.collection.z {
        public c(int i11) {
            super(i11);
        }

        private static int b(int i11, PorterDuff.Mode mode) {
            return ((i11 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter c(int i11, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) get(Integer.valueOf(b(i11, mode)));
        }

        PorterDuffColorFilter d(int i11, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) put(Integer.valueOf(b(i11, mode)), porterDuffColorFilter);
        }
    }

    static class d implements e {
        d() {
        }

        @Override // androidx.appcompat.widget.b0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                    h.a.c(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e11) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e11);
                }
            }
            return null;
        }
    }

    private interface e {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface f {
        Drawable a(b0 b0Var, Context context, int i11);

        ColorStateList b(Context context, int i11);

        boolean c(Context context, int i11, Drawable drawable);

        PorterDuff.Mode d(int i11);

        boolean e(Context context, int i11, Drawable drawable);
    }

    private static class g implements e {
        g() {
        }

        @Override // androidx.appcompat.widget.b0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.graphics.drawable.h.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e11) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e11);
                return null;
            }
        }
    }

    private void a(String str, e eVar) {
        if (this.f1955b == null) {
            this.f1955b = new x0();
        }
        this.f1955b.put(str, eVar);
    }

    private synchronized boolean b(Context context, long j11, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            androidx.collection.x xVar = (androidx.collection.x) this.f1957d.get(context);
            if (xVar == null) {
                xVar = new androidx.collection.x();
                this.f1957d.put(context, xVar);
            }
            xVar.k(j11, new WeakReference(constantState));
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void c(Context context, int i11, ColorStateList colorStateList) {
        if (this.f1954a == null) {
            this.f1954a = new WeakHashMap();
        }
        y0 y0Var = (y0) this.f1954a.get(context);
        if (y0Var == null) {
            y0Var = new y0();
            this.f1954a.put(context, y0Var);
        }
        y0Var.a(i11, colorStateList);
    }

    private void d(Context context) {
        if (this.f1959f) {
            return;
        }
        this.f1959f = true;
        Drawable drawableJ = j(context, R$drawable.abc_vector_test);
        if (drawableJ == null || !q(drawableJ)) {
            this.f1959f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable f(Context context, int i11) {
        if (this.f1958e == null) {
            this.f1958e = new TypedValue();
        }
        TypedValue typedValue = this.f1958e;
        context.getResources().getValue(i11, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        f fVar = this.f1960g;
        Drawable drawableA = fVar == null ? null : fVar.a(this, context, i11);
        if (drawableA != null) {
            drawableA.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, jE, drawableA);
        }
        return drawableA;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized b0 h() {
        try {
            if (f1952i == null) {
                b0 b0Var = new b0();
                f1952i = b0Var;
                p(b0Var);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f1952i;
    }

    private synchronized Drawable i(Context context, long j11) {
        androidx.collection.x xVar = (androidx.collection.x) this.f1957d.get(context);
        if (xVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) xVar.e(j11);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            xVar.l(j11);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter l(int i11, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterC;
        c cVar = f1953j;
        porterDuffColorFilterC = cVar.c(i11, mode);
        if (porterDuffColorFilterC == null) {
            porterDuffColorFilterC = new PorterDuffColorFilter(i11, mode);
            cVar.d(i11, mode, porterDuffColorFilterC);
        }
        return porterDuffColorFilterC;
    }

    private ColorStateList n(Context context, int i11) {
        y0 y0Var;
        WeakHashMap weakHashMap = this.f1954a;
        if (weakHashMap == null || (y0Var = (y0) weakHashMap.get(context)) == null) {
            return null;
        }
        return (ColorStateList) y0Var.f(i11);
    }

    private static void p(b0 b0Var) {
        if (Build.VERSION.SDK_INT < 24) {
            b0Var.a("vector", new g());
            b0Var.a("animated-vector", new b());
            b0Var.a("animated-selector", new a());
            b0Var.a("drawable", new d());
        }
    }

    private static boolean q(Drawable drawable) {
        return (drawable instanceof androidx.vectordrawable.graphics.drawable.h) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable r(Context context, int i11) {
        int next;
        x0 x0Var = this.f1955b;
        if (x0Var == null || x0Var.isEmpty()) {
            return null;
        }
        y0 y0Var = this.f1956c;
        if (y0Var != null) {
            String str = (String) y0Var.f(i11);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f1955b.get(str) == null)) {
                return null;
            }
        } else {
            this.f1956c = new y0();
        }
        if (this.f1958e == null) {
            this.f1958e = new TypedValue();
        }
        TypedValue typedValue = this.f1958e;
        Resources resources = context.getResources();
        resources.getValue(i11, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i11);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f1956c.a(i11, name);
                e eVar = (e) this.f1955b.get(name);
                if (eVar != null) {
                    drawableI = eVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableI != null) {
                    drawableI.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, jE, drawableI);
                }
            } catch (Exception e11) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e11);
            }
        }
        if (drawableI == null) {
            this.f1956c.a(i11, "appcompat_skip_skip");
        }
        return drawableI;
    }

    private Drawable v(Context context, int i11, boolean z10, Drawable drawable) {
        ColorStateList colorStateListM = m(context, i11);
        if (colorStateListM != null) {
            Drawable drawableR = a1.a.r(drawable.mutate());
            a1.a.o(drawableR, colorStateListM);
            PorterDuff.Mode modeO = o(i11);
            if (modeO == null) {
                return drawableR;
            }
            a1.a.p(drawableR, modeO);
            return drawableR;
        }
        f fVar = this.f1960g;
        if ((fVar == null || !fVar.e(context, i11, drawable)) && !x(context, i11, drawable) && z10) {
            return null;
        }
        return drawable;
    }

    static void w(Drawable drawable, h0 h0Var, int[] iArr) {
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z10 = h0Var.f2037d;
            if (z10 || h0Var.f2036c) {
                drawable.setColorFilter(g(z10 ? h0Var.f2034a : null, h0Var.f2036c ? h0Var.f2035b : f1951h, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public synchronized Drawable j(Context context, int i11) {
        return k(context, i11, false);
    }

    synchronized Drawable k(Context context, int i11, boolean z10) {
        Drawable drawableR;
        try {
            d(context);
            drawableR = r(context, i11);
            if (drawableR == null) {
                drawableR = f(context, i11);
            }
            if (drawableR == null) {
                drawableR = androidx.core.content.b.getDrawable(context, i11);
            }
            if (drawableR != null) {
                drawableR = v(context, i11, z10, drawableR);
            }
            if (drawableR != null) {
                y.b(drawableR);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return drawableR;
    }

    synchronized ColorStateList m(Context context, int i11) {
        ColorStateList colorStateListN;
        colorStateListN = n(context, i11);
        if (colorStateListN == null) {
            f fVar = this.f1960g;
            colorStateListN = fVar == null ? null : fVar.b(context, i11);
            if (colorStateListN != null) {
                c(context, i11, colorStateListN);
            }
        }
        return colorStateListN;
    }

    PorterDuff.Mode o(int i11) {
        f fVar = this.f1960g;
        if (fVar == null) {
            return null;
        }
        return fVar.d(i11);
    }

    public synchronized void s(Context context) {
        androidx.collection.x xVar = (androidx.collection.x) this.f1957d.get(context);
        if (xVar != null) {
            xVar.b();
        }
    }

    synchronized Drawable t(Context context, t0 t0Var, int i11) {
        try {
            Drawable drawableR = r(context, i11);
            if (drawableR == null) {
                drawableR = t0Var.a(i11);
            }
            if (drawableR == null) {
                return null;
            }
            return v(context, i11, false, drawableR);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void u(f fVar) {
        this.f1960g = fVar;
    }

    boolean x(Context context, int i11, Drawable drawable) {
        f fVar = this.f1960g;
        return fVar != null && fVar.c(context, i11, drawable);
    }
}

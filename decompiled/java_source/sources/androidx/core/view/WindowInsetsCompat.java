package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class WindowInsetsCompat {
    public static final WindowInsetsCompat CONSUMED;
    private static final String TAG = "WindowInsetsCompat";
    private final l mImpl;

    public static final class Builder {
        private final e mImpl;

        public Builder() {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 34) {
                this.mImpl = new d();
                return;
            }
            if (i11 >= 30) {
                this.mImpl = new c();
            } else if (i11 >= 29) {
                this.mImpl = new b();
            } else {
                this.mImpl = new a();
            }
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 34) {
                this.mImpl = new d(windowInsetsCompat);
                return;
            }
            if (i11 >= 30) {
                this.mImpl = new c(windowInsetsCompat);
            } else if (i11 >= 29) {
                this.mImpl = new b(windowInsetsCompat);
            } else {
                this.mImpl = new a(windowInsetsCompat);
            }
        }

        public WindowInsetsCompat build() {
            return this.mImpl.b();
        }

        public Builder setDisplayCutout(DisplayCutoutCompat displayCutoutCompat) {
            this.mImpl.c(displayCutoutCompat);
            return this;
        }

        public Builder setInsets(int i11, z0.c cVar) {
            this.mImpl.d(i11, cVar);
            return this;
        }

        public Builder setInsetsIgnoringVisibility(int i11, z0.c cVar) {
            this.mImpl.e(i11, cVar);
            return this;
        }

        @Deprecated
        public Builder setMandatorySystemGestureInsets(z0.c cVar) {
            this.mImpl.f(cVar);
            return this;
        }

        @Deprecated
        public Builder setStableInsets(z0.c cVar) {
            this.mImpl.g(cVar);
            return this;
        }

        @Deprecated
        public Builder setSystemGestureInsets(z0.c cVar) {
            this.mImpl.h(cVar);
            return this;
        }

        @Deprecated
        public Builder setSystemWindowInsets(z0.c cVar) {
            this.mImpl.i(cVar);
            return this;
        }

        @Deprecated
        public Builder setTappableElementInsets(z0.c cVar) {
            this.mImpl.j(cVar);
            return this;
        }

        public Builder setVisible(int i11, boolean z10) {
            this.mImpl.k(i11, z10);
            return this;
        }
    }

    public static final class Side {
        public static final int BOTTOM = 8;
        public static final int LEFT = 1;
        public static final int RIGHT = 4;
        public static final int TOP = 2;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsSide {
        }

        private Side() {
        }

        public static int all() {
            return 15;
        }
    }

    public static final class Type {
        static final int CAPTION_BAR = 4;
        static final int DISPLAY_CUTOUT = 128;
        static final int FIRST = 1;
        static final int IME = 8;
        static final int LAST = 512;
        static final int MANDATORY_SYSTEM_GESTURES = 32;
        static final int NAVIGATION_BARS = 2;
        static final int SIZE = 10;
        static final int STATUS_BARS = 1;
        static final int SYSTEM_GESTURES = 16;
        static final int SYSTEM_OVERLAYS = 512;
        static final int TAPPABLE_ELEMENT = 64;
        static final int WINDOW_DECOR = 256;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsType {
        }

        private Type() {
        }

        @SuppressLint({"WrongConstant"})
        static int all() {
            return -1;
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        static int indexOf(int i11) {
            if (i11 == 1) {
                return 0;
            }
            if (i11 == 2) {
                return 1;
            }
            if (i11 == 4) {
                return 2;
            }
            if (i11 == 8) {
                return 3;
            }
            if (i11 == 16) {
                return 4;
            }
            if (i11 == 32) {
                return 5;
            }
            if (i11 == 64) {
                return 6;
            }
            if (i11 == 128) {
                return 7;
            }
            if (i11 == 256) {
                return 8;
            }
            if (i11 == 512) {
                return 9;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i11);
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 519;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int systemOverlays() {
            return 512;
        }

        public static int tappableElement() {
            return 64;
        }
    }

    private static class a extends e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Field f8339e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f8340f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static Constructor f8341g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f8342h;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WindowInsets f8343c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private z0.c f8344d;

        a() {
            this.f8343c = l();
        }

        a(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.f8343c = windowInsetsCompat.toWindowInsets();
        }

        private static WindowInsets l() {
            if (!f8340f) {
                try {
                    f8339e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f8340f = true;
            }
            Field field = f8339e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f8342h) {
                try {
                    f8341g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f8342h = true;
            }
            Constructor constructor = f8341g;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f8343c);
            windowInsetsCompat.setOverriddenInsets(this.f8347b);
            windowInsetsCompat.setStableInsets(this.f8344d);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void g(z0.c cVar) {
            this.f8344d = cVar;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void i(z0.c cVar) {
            WindowInsets windowInsets = this.f8343c;
            if (windowInsets != null) {
                this.f8343c = windowInsets.replaceSystemWindowInsets(cVar.f79125a, cVar.f79126b, cVar.f79127c, cVar.f79128d);
            }
        }
    }

    private static class b extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets.Builder f8345c;

        b() {
            this.f8345c = e1.c.a();
        }

        b(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            this.f8345c = windowInsets != null ? v1.a(windowInsets) : e1.c.a();
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f8345c.build());
            windowInsetsCompat.setOverriddenInsets(this.f8347b);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void c(DisplayCutoutCompat displayCutoutCompat) {
            this.f8345c.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.unwrap() : null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void f(z0.c cVar) {
            this.f8345c.setMandatorySystemGestureInsets(cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void g(z0.c cVar) {
            this.f8345c.setStableInsets(cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void h(z0.c cVar) {
            this.f8345c.setSystemGestureInsets(cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void i(z0.c cVar) {
            this.f8345c.setSystemWindowInsets(cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void j(z0.c cVar) {
            this.f8345c.setTappableElementInsets(cVar.g());
        }
    }

    private static class c extends b {
        c() {
        }

        c(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void d(int i11, z0.c cVar) {
            this.f8345c.setInsets(m.a(i11), cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void e(int i11, z0.c cVar) {
            this.f8345c.setInsetsIgnoringVisibility(m.a(i11), cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void k(int i11, boolean z10) {
            this.f8345c.setVisible(m.a(i11), z10);
        }
    }

    private static class d extends c {
        d() {
        }

        d(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }

        @Override // androidx.core.view.WindowInsetsCompat.c, androidx.core.view.WindowInsetsCompat.e
        void d(int i11, z0.c cVar) {
            this.f8345c.setInsets(n.a(i11), cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.c, androidx.core.view.WindowInsetsCompat.e
        void e(int i11, z0.c cVar) {
            this.f8345c.setInsetsIgnoringVisibility(n.a(i11), cVar.g());
        }

        @Override // androidx.core.view.WindowInsetsCompat.c, androidx.core.view.WindowInsetsCompat.e
        void k(int i11, boolean z10) {
            this.f8345c.setVisible(n.a(i11), z10);
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WindowInsetsCompat f8346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        z0.c[] f8347b;

        e() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        e(WindowInsetsCompat windowInsetsCompat) {
            this.f8346a = windowInsetsCompat;
        }

        protected final void a() {
            z0.c[] cVarArr = this.f8347b;
            if (cVarArr != null) {
                z0.c insets = cVarArr[Type.indexOf(1)];
                z0.c insets2 = this.f8347b[Type.indexOf(2)];
                if (insets2 == null) {
                    insets2 = this.f8346a.getInsets(2);
                }
                if (insets == null) {
                    insets = this.f8346a.getInsets(1);
                }
                i(z0.c.a(insets, insets2));
                z0.c cVar = this.f8347b[Type.indexOf(16)];
                if (cVar != null) {
                    h(cVar);
                }
                z0.c cVar2 = this.f8347b[Type.indexOf(32)];
                if (cVar2 != null) {
                    f(cVar2);
                }
                z0.c cVar3 = this.f8347b[Type.indexOf(64)];
                if (cVar3 != null) {
                    j(cVar3);
                }
            }
        }

        abstract WindowInsetsCompat b();

        void c(DisplayCutoutCompat displayCutoutCompat) {
        }

        void d(int i11, z0.c cVar) {
            if (this.f8347b == null) {
                this.f8347b = new z0.c[10];
            }
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i11 & i12) != 0) {
                    this.f8347b[Type.indexOf(i12)] = cVar;
                }
            }
        }

        void e(int i11, z0.c cVar) {
            if (i11 == 8) {
                throw new IllegalArgumentException("Ignoring visibility inset not available for IME");
            }
        }

        void f(z0.c cVar) {
        }

        abstract void g(z0.c cVar);

        void h(z0.c cVar) {
        }

        abstract void i(z0.c cVar);

        void j(z0.c cVar) {
        }

        void k(int i11, boolean z10) {
        }
    }

    private static class f extends l {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static boolean f8348i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static Method f8349j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static Class f8350k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static Field f8351l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static Field f8352m;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets f8353c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private z0.c[] f8354d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private z0.c f8355e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WindowInsetsCompat f8356f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        z0.c f8357g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f8358h;

        f(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f8355e = null;
            this.f8353c = windowInsets;
        }

        f(WindowInsetsCompat windowInsetsCompat, f fVar) {
            this(windowInsetsCompat, new WindowInsets(fVar.f8353c));
        }

        @SuppressLint({"PrivateApi"})
        private static void B() {
            try {
                f8349j = View.class.getDeclaredMethod("getViewRootImpl", null);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f8350k = cls;
                f8351l = cls.getDeclaredField("mVisibleInsets");
                f8352m = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f8351l.setAccessible(true);
                f8352m.setAccessible(true);
            } catch (ReflectiveOperationException e11) {
                Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e11.getMessage(), e11);
            }
            f8348i = true;
        }

        static boolean C(int i11, int i12) {
            return (i11 & 6) == (i12 & 6);
        }

        @SuppressLint({"WrongConstant"})
        private z0.c w(int i11, boolean z10) {
            z0.c cVarA = z0.c.f79124e;
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i11 & i12) != 0) {
                    cVarA = z0.c.a(cVarA, x(i12, z10));
                }
            }
            return cVarA;
        }

        private z0.c y() {
            WindowInsetsCompat windowInsetsCompat = this.f8356f;
            return windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : z0.c.f79124e;
        }

        private z0.c z(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f8348i) {
                B();
            }
            Method method = f8349j;
            if (method != null && f8350k != null && f8351l != null) {
                try {
                    Object objInvoke = method.invoke(view, null);
                    if (objInvoke == null) {
                        Log.w(WindowInsetsCompat.TAG, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f8351l.get(f8352m.get(objInvoke));
                    if (rect != null) {
                        return z0.c.d(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e11) {
                    Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e11.getMessage(), e11);
                }
            }
            return null;
        }

        protected boolean A(int i11) {
            if (i11 != 1 && i11 != 2) {
                if (i11 == 4) {
                    return false;
                }
                if (i11 != 8 && i11 != 128) {
                    return true;
                }
            }
            return !x(i11, false).equals(z0.c.f79124e);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        void d(View view) {
            z0.c cVarZ = z(view);
            if (cVarZ == null) {
                cVarZ = z0.c.f79124e;
            }
            s(cVarZ);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        void e(WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.setRootWindowInsets(this.f8356f);
            windowInsetsCompat.setRootViewData(this.f8357g);
            windowInsetsCompat.setSystemUiVisibility(this.f8358h);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            f fVar = (f) obj;
            return Objects.equals(this.f8357g, fVar.f8357g) && C(this.f8358h, fVar.f8358h);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        public z0.c g(int i11) {
            return w(i11, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        public z0.c h(int i11) {
            return w(i11, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        final z0.c l() {
            if (this.f8355e == null) {
                this.f8355e = z0.c.c(this.f8353c.getSystemWindowInsetLeft(), this.f8353c.getSystemWindowInsetTop(), this.f8353c.getSystemWindowInsetRight(), this.f8353c.getSystemWindowInsetBottom());
            }
            return this.f8355e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        WindowInsetsCompat n(int i11, int i12, int i13, int i14) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.f8353c));
            builder.setSystemWindowInsets(WindowInsetsCompat.insetInsets(l(), i11, i12, i13, i14));
            builder.setStableInsets(WindowInsetsCompat.insetInsets(j(), i11, i12, i13, i14));
            return builder.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        boolean p() {
            return this.f8353c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        @SuppressLint({"WrongConstant"})
        boolean q(int i11) {
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i11 & i12) != 0 && !A(i12)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        public void r(z0.c[] cVarArr) {
            this.f8354d = cVarArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        void s(z0.c cVar) {
            this.f8357g = cVar;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        void t(WindowInsetsCompat windowInsetsCompat) {
            this.f8356f = windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        void v(int i11) {
            this.f8358h = i11;
        }

        protected z0.c x(int i11, boolean z10) {
            z0.c stableInsets;
            int i12;
            if (i11 == 1) {
                if (z10) {
                    return z0.c.c(0, Math.max(y().f79126b, l().f79126b), 0, 0);
                }
                return (this.f8358h & 4) != 0 ? z0.c.f79124e : z0.c.c(0, l().f79126b, 0, 0);
            }
            if (i11 == 2) {
                if (z10) {
                    z0.c cVarY = y();
                    z0.c cVarJ = j();
                    return z0.c.c(Math.max(cVarY.f79125a, cVarJ.f79125a), 0, Math.max(cVarY.f79127c, cVarJ.f79127c), Math.max(cVarY.f79128d, cVarJ.f79128d));
                }
                if ((this.f8358h & 2) != 0) {
                    return z0.c.f79124e;
                }
                z0.c cVarL = l();
                WindowInsetsCompat windowInsetsCompat = this.f8356f;
                stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                int iMin = cVarL.f79128d;
                if (stableInsets != null) {
                    iMin = Math.min(iMin, stableInsets.f79128d);
                }
                return z0.c.c(cVarL.f79125a, 0, cVarL.f79127c, iMin);
            }
            if (i11 != 8) {
                if (i11 == 16) {
                    return k();
                }
                if (i11 == 32) {
                    return i();
                }
                if (i11 == 64) {
                    return m();
                }
                if (i11 != 128) {
                    return z0.c.f79124e;
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f8356f;
                DisplayCutoutCompat displayCutout = windowInsetsCompat2 != null ? windowInsetsCompat2.getDisplayCutout() : f();
                return displayCutout != null ? z0.c.c(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : z0.c.f79124e;
            }
            z0.c[] cVarArr = this.f8354d;
            stableInsets = cVarArr != null ? cVarArr[Type.indexOf(8)] : null;
            if (stableInsets != null) {
                return stableInsets;
            }
            z0.c cVarL2 = l();
            z0.c cVarY2 = y();
            int i13 = cVarL2.f79128d;
            if (i13 > cVarY2.f79128d) {
                return z0.c.c(0, 0, 0, i13);
            }
            z0.c cVar = this.f8357g;
            return (cVar == null || cVar.equals(z0.c.f79124e) || (i12 = this.f8357g.f79128d) <= cVarY2.f79128d) ? z0.c.f79124e : z0.c.c(0, 0, 0, i12);
        }
    }

    private static class g extends f {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private z0.c f8359n;

        g(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f8359n = null;
        }

        g(WindowInsetsCompat windowInsetsCompat, g gVar) {
            super(windowInsetsCompat, gVar);
            this.f8359n = null;
            this.f8359n = gVar.f8359n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        WindowInsetsCompat b() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8353c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        WindowInsetsCompat c() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8353c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        final z0.c j() {
            if (this.f8359n == null) {
                this.f8359n = z0.c.c(this.f8353c.getStableInsetLeft(), this.f8353c.getStableInsetTop(), this.f8353c.getStableInsetRight(), this.f8353c.getStableInsetBottom());
            }
            return this.f8359n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        boolean o() {
            return this.f8353c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        public void u(z0.c cVar) {
            this.f8359n = cVar;
        }
    }

    private static class h extends g {
        h(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        h(WindowInsetsCompat windowInsetsCompat, h hVar) {
            super(windowInsetsCompat, hVar);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        WindowInsetsCompat a() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8353c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Objects.equals(this.f8353c, hVar.f8353c) && Objects.equals(this.f8357g, hVar.f8357g) && f.C(this.f8358h, hVar.f8358h);
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        DisplayCutoutCompat f() {
            return DisplayCutoutCompat.wrap(this.f8353c.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        public int hashCode() {
            return this.f8353c.hashCode();
        }
    }

    private static class i extends h {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private z0.c f8360o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private z0.c f8361p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private z0.c f8362q;

        i(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f8360o = null;
            this.f8361p = null;
            this.f8362q = null;
        }

        i(WindowInsetsCompat windowInsetsCompat, i iVar) {
            super(windowInsetsCompat, iVar);
            this.f8360o = null;
            this.f8361p = null;
            this.f8362q = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        z0.c i() {
            if (this.f8361p == null) {
                this.f8361p = z0.c.f(this.f8353c.getMandatorySystemGestureInsets());
            }
            return this.f8361p;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        z0.c k() {
            if (this.f8360o == null) {
                this.f8360o = z0.c.f(this.f8353c.getSystemGestureInsets());
            }
            return this.f8360o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.l
        z0.c m() {
            if (this.f8362q == null) {
                this.f8362q = z0.c.f(this.f8353c.getTappableElementInsets());
            }
            return this.f8362q;
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        WindowInsetsCompat n(int i11, int i12, int i13, int i14) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8353c.inset(i11, i12, i13, i14));
        }

        @Override // androidx.core.view.WindowInsetsCompat.g, androidx.core.view.WindowInsetsCompat.l
        public void u(z0.c cVar) {
        }
    }

    private static class j extends i {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        static final WindowInsetsCompat f8363r = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        j(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        j(WindowInsetsCompat windowInsetsCompat, j jVar) {
            super(windowInsetsCompat, jVar);
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        final void d(View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public z0.c g(int i11) {
            return z0.c.f(this.f8353c.getInsets(m.a(i11)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public z0.c h(int i11) {
            return z0.c.f(this.f8353c.getInsetsIgnoringVisibility(m.a(i11)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public boolean q(int i11) {
            return this.f8353c.isVisible(m.a(i11));
        }
    }

    private static class k extends j {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        static final WindowInsetsCompat f8364s = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        k(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        k(WindowInsetsCompat windowInsetsCompat, k kVar) {
            super(windowInsetsCompat, kVar);
        }

        @Override // androidx.core.view.WindowInsetsCompat.j, androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public z0.c g(int i11) {
            return z0.c.f(this.f8353c.getInsets(n.a(i11)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.j, androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public z0.c h(int i11) {
            return z0.c.f(this.f8353c.getInsetsIgnoringVisibility(n.a(i11)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.j, androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.l
        public boolean q(int i11) {
            return this.f8353c.isVisible(n.a(i11));
        }
    }

    private static class l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final WindowInsetsCompat f8365b = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WindowInsetsCompat f8366a;

        l(WindowInsetsCompat windowInsetsCompat) {
            this.f8366a = windowInsetsCompat;
        }

        WindowInsetsCompat a() {
            return this.f8366a;
        }

        WindowInsetsCompat b() {
            return this.f8366a;
        }

        WindowInsetsCompat c() {
            return this.f8366a;
        }

        void d(View view) {
        }

        void e(WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return p() == lVar.p() && o() == lVar.o() && androidx.core.util.d.a(l(), lVar.l()) && androidx.core.util.d.a(j(), lVar.j()) && androidx.core.util.d.a(f(), lVar.f());
        }

        DisplayCutoutCompat f() {
            return null;
        }

        z0.c g(int i11) {
            return z0.c.f79124e;
        }

        z0.c h(int i11) {
            if ((i11 & 8) == 0) {
                return z0.c.f79124e;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        public int hashCode() {
            return androidx.core.util.d.b(Boolean.valueOf(p()), Boolean.valueOf(o()), l(), j(), f());
        }

        z0.c i() {
            return l();
        }

        z0.c j() {
            return z0.c.f79124e;
        }

        z0.c k() {
            return l();
        }

        z0.c l() {
            return z0.c.f79124e;
        }

        z0.c m() {
            return l();
        }

        WindowInsetsCompat n(int i11, int i12, int i13, int i14) {
            return f8365b;
        }

        boolean o() {
            return false;
        }

        boolean p() {
            return false;
        }

        boolean q(int i11) {
            return true;
        }

        public void r(z0.c[] cVarArr) {
        }

        void s(z0.c cVar) {
        }

        void t(WindowInsetsCompat windowInsetsCompat) {
        }

        public void u(z0.c cVar) {
        }

        void v(int i11) {
        }
    }

    private static final class m {
        static int a(int i11) {
            int iStatusBars;
            int i12 = 0;
            for (int i13 = 1; i13 <= 512; i13 <<= 1) {
                if ((i11 & i13) != 0) {
                    if (i13 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i13 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i13 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i13 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i13 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i13 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i13 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i13 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i12 |= iStatusBars;
                }
            }
            return i12;
        }
    }

    private static final class n {
        static int a(int i11) {
            int iStatusBars;
            int i12 = 0;
            for (int i13 = 1; i13 <= 512; i13 <<= 1) {
                if ((i11 & i13) != 0) {
                    if (i13 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i13 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i13 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i13 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i13 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i13 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i13 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i13 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    } else if (i13 == 512) {
                        iStatusBars = WindowInsets.Type.systemOverlays();
                    }
                    i12 |= iStatusBars;
                }
            }
            return i12;
        }
    }

    static {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            CONSUMED = k.f8364s;
        } else if (i11 >= 30) {
            CONSUMED = j.f8363r;
        } else {
            CONSUMED = l.f8365b;
        }
    }

    private WindowInsetsCompat(WindowInsets windowInsets) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            this.mImpl = new k(this, windowInsets);
            return;
        }
        if (i11 >= 30) {
            this.mImpl = new j(this, windowInsets);
            return;
        }
        if (i11 >= 29) {
            this.mImpl = new i(this, windowInsets);
        } else if (i11 >= 28) {
            this.mImpl = new h(this, windowInsets);
        } else {
            this.mImpl = new g(this, windowInsets);
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            this.mImpl = new l(this);
            return;
        }
        l lVar = windowInsetsCompat.mImpl;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34 && (lVar instanceof k)) {
            this.mImpl = new k(this, (k) lVar);
        } else if (i11 >= 30 && (lVar instanceof j)) {
            this.mImpl = new j(this, (j) lVar);
        } else if (i11 >= 29 && (lVar instanceof i)) {
            this.mImpl = new i(this, (i) lVar);
        } else if (i11 >= 28 && (lVar instanceof h)) {
            this.mImpl = new h(this, (h) lVar);
        } else if (lVar instanceof g) {
            this.mImpl = new g(this, (g) lVar);
        } else if (lVar instanceof f) {
            this.mImpl = new f(this, (f) lVar);
        } else {
            this.mImpl = new l(this);
        }
        lVar.e(this);
    }

    static z0.c insetInsets(z0.c cVar, int i11, int i12, int i13, int i14) {
        int iMax = Math.max(0, cVar.f79125a - i11);
        int iMax2 = Math.max(0, cVar.f79126b - i12);
        int iMax3 = Math.max(0, cVar.f79127c - i13);
        int iMax4 = Math.max(0, cVar.f79128d - i14);
        return (iMax == i11 && iMax2 == i12 && iMax3 == i13 && iMax4 == i14) ? cVar : z0.c.c(iMax, iMax2, iMax3, iMax4);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets, View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) androidx.core.util.i.g(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            windowInsetsCompat.setRootWindowInsets(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
            windowInsetsCompat.setSystemUiVisibility(view.getWindowSystemUiVisibility());
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.mImpl.a();
    }

    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.mImpl.b();
    }

    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.mImpl.c();
    }

    void copyRootViewBounds(View view) {
        this.mImpl.d(view);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return androidx.core.util.d.a(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
        }
        return false;
    }

    public DisplayCutoutCompat getDisplayCutout() {
        return this.mImpl.f();
    }

    public z0.c getInsets(int i11) {
        return this.mImpl.g(i11);
    }

    public z0.c getInsetsIgnoringVisibility(int i11) {
        return this.mImpl.h(i11);
    }

    @Deprecated
    public z0.c getMandatorySystemGestureInsets() {
        return this.mImpl.i();
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.mImpl.j().f79128d;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.mImpl.j().f79125a;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.mImpl.j().f79127c;
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.mImpl.j().f79126b;
    }

    @Deprecated
    public z0.c getStableInsets() {
        return this.mImpl.j();
    }

    @Deprecated
    public z0.c getSystemGestureInsets() {
        return this.mImpl.k();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.mImpl.l().f79128d;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.mImpl.l().f79125a;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.mImpl.l().f79127c;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.mImpl.l().f79126b;
    }

    @Deprecated
    public z0.c getSystemWindowInsets() {
        return this.mImpl.l();
    }

    @Deprecated
    public z0.c getTappableElementInsets() {
        return this.mImpl.m();
    }

    public boolean hasInsets() {
        z0.c insets = getInsets(Type.all());
        z0.c cVar = z0.c.f79124e;
        return (insets.equals(cVar) && getInsetsIgnoringVisibility(Type.all() ^ Type.ime()).equals(cVar) && getDisplayCutout() == null) ? false : true;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.mImpl.j().equals(z0.c.f79124e);
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.mImpl.l().equals(z0.c.f79124e);
    }

    public int hashCode() {
        l lVar = this.mImpl;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public WindowInsetsCompat inset(int i11, int i12, int i13, int i14) {
        return this.mImpl.n(i11, i12, i13, i14);
    }

    public WindowInsetsCompat inset(z0.c cVar) {
        return inset(cVar.f79125a, cVar.f79126b, cVar.f79127c, cVar.f79128d);
    }

    public boolean isConsumed() {
        return this.mImpl.o();
    }

    public boolean isRound() {
        return this.mImpl.p();
    }

    public boolean isVisible(int i11) {
        return this.mImpl.q(i11);
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i11, int i12, int i13, int i14) {
        return new Builder(this).setSystemWindowInsets(z0.c.c(i11, i12, i13, i14)).build();
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return new Builder(this).setSystemWindowInsets(z0.c.d(rect)).build();
    }

    void setOverriddenInsets(z0.c[] cVarArr) {
        this.mImpl.r(cVarArr);
    }

    void setRootViewData(z0.c cVar) {
        this.mImpl.s(cVar);
    }

    void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        this.mImpl.t(windowInsetsCompat);
    }

    void setStableInsets(z0.c cVar) {
        this.mImpl.u(cVar);
    }

    void setSystemUiVisibility(int i11) {
        this.mImpl.v(i11);
    }

    public WindowInsets toWindowInsets() {
        l lVar = this.mImpl;
        if (lVar instanceof f) {
            return ((f) lVar).f8353c;
        }
        return null;
    }
}

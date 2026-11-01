package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.R$id;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = "WindowInsetsAnimCompat";
    private b mImpl;

    public static final class BoundsCompat {
        private final z0.c mLowerBound;
        private final z0.c mUpperBound;

        private BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.mLowerBound = a.k(bounds);
            this.mUpperBound = a.j(bounds);
        }

        public BoundsCompat(z0.c cVar, z0.c cVar2) {
            this.mLowerBound = cVar;
            this.mUpperBound = cVar2;
        }

        public static BoundsCompat toBoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        public z0.c getLowerBound() {
            return this.mLowerBound;
        }

        public z0.c getUpperBound() {
            return this.mUpperBound;
        }

        public BoundsCompat inset(z0.c cVar) {
            return new BoundsCompat(WindowInsetsCompat.insetInsets(this.mLowerBound, cVar.f79125a, cVar.f79126b, cVar.f79127c, cVar.f79128d), WindowInsetsCompat.insetInsets(this.mUpperBound, cVar.f79125a, cVar.f79126b, cVar.f79127c, cVar.f79128d));
        }

        public WindowInsetsAnimation.Bounds toBounds() {
            return a.i(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.mLowerBound + " upper=" + this.mUpperBound + "}";
        }
    }

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        WindowInsetsCompat mDispachedInsets;
        private final int mDispatchMode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface DispatchMode {
        }

        public Callback(int i11) {
            this.mDispatchMode = i11;
        }

        public final int getDispatchMode() {
            return this.mDispatchMode;
        }

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list);

        public BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }

    private static class Impl21 extends b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Interpolator f8313f = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final Interpolator f8314g = new o1.a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final Interpolator f8315h = new DecelerateInterpolator(1.5f);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final Interpolator f8316i = new AccelerateInterpolator(1.5f);

        private static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final Callback f8317a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private WindowInsetsCompat f8318b;

            class a implements ValueAnimator.AnimatorUpdateListener {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ WindowInsetsAnimationCompat f8319a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ WindowInsetsCompat f8320b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ WindowInsetsCompat f8321c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ int f8322d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ View f8323e;

                a(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i11, View view) {
                    this.f8319a = windowInsetsAnimationCompat;
                    this.f8320b = windowInsetsCompat;
                    this.f8321c = windowInsetsCompat2;
                    this.f8322d = i11;
                    this.f8323e = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f8319a.setFraction(valueAnimator.getAnimatedFraction());
                    Impl21.o(this.f8323e, Impl21.s(this.f8320b, this.f8321c, this.f8319a.getInterpolatedFraction(), this.f8322d), Collections.singletonList(this.f8319a));
                }
            }

            class b extends AnimatorListenerAdapter {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ WindowInsetsAnimationCompat f8325a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ View f8326b;

                b(WindowInsetsAnimationCompat windowInsetsAnimationCompat, View view) {
                    this.f8325a = windowInsetsAnimationCompat;
                    this.f8326b = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.f8325a.setFraction(1.0f);
                    Impl21.m(this.f8326b, this.f8325a);
                }
            }

            Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                this.f8317a = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.f8318b = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.f8318b = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return Impl21.q(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.f8318b == null) {
                    this.f8318b = ViewCompat.getRootWindowInsets(view);
                }
                if (this.f8318b == null) {
                    this.f8318b = windowInsetsCompat;
                    return Impl21.q(view, windowInsets);
                }
                Callback callbackR = Impl21.r(view);
                if (callbackR != null && Objects.equals(callbackR.mDispachedInsets, windowInsetsCompat)) {
                    return Impl21.q(view, windowInsets);
                }
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                Impl21.i(windowInsetsCompat, this.f8318b, iArr, iArr2);
                int i11 = iArr[0];
                int i12 = iArr2[0];
                int i13 = i11 | i12;
                if (i13 == 0) {
                    this.f8318b = windowInsetsCompat;
                    return Impl21.q(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f8318b;
                final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i13, Impl21.k(i11, i12), (WindowInsetsCompat.Type.ime() & i13) != 0 ? 160L : 250L);
                windowInsetsAnimationCompat.setFraction(0.0f);
                final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                final BoundsCompat boundsCompatJ = Impl21.j(windowInsetsCompat, windowInsetsCompat2, i13);
                Impl21.n(view, windowInsetsAnimationCompat, windowInsetsCompat, false);
                duration.addUpdateListener(new a(windowInsetsAnimationCompat, windowInsetsCompat, windowInsetsCompat2, i13, view));
                duration.addListener(new b(windowInsetsAnimationCompat, view));
                OneShotPreDrawListener.add(view, new Runnable() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Impl21.p(view, windowInsetsAnimationCompat, boundsCompatJ);
                        duration.start();
                    }
                });
                this.f8318b = windowInsetsCompat;
                return Impl21.q(view, windowInsets);
            }
        }

        Impl21(int i11, Interpolator interpolator, long j11) {
            super(i11, interpolator, j11);
        }

        static void i(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int[] iArr, int[] iArr2) {
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                z0.c insets = windowInsetsCompat.getInsets(i11);
                z0.c insets2 = windowInsetsCompat2.getInsets(i11);
                int i12 = insets.f79125a;
                int i13 = insets2.f79125a;
                boolean z10 = i12 > i13 || insets.f79126b > insets2.f79126b || insets.f79127c > insets2.f79127c || insets.f79128d > insets2.f79128d;
                if (z10 != (i12 < i13 || insets.f79126b < insets2.f79126b || insets.f79127c < insets2.f79127c || insets.f79128d < insets2.f79128d)) {
                    if (z10) {
                        iArr[0] = iArr[0] | i11;
                    } else {
                        iArr2[0] = iArr2[0] | i11;
                    }
                }
            }
        }

        static BoundsCompat j(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i11) {
            z0.c insets = windowInsetsCompat.getInsets(i11);
            z0.c insets2 = windowInsetsCompat2.getInsets(i11);
            return new BoundsCompat(z0.c.c(Math.min(insets.f79125a, insets2.f79125a), Math.min(insets.f79126b, insets2.f79126b), Math.min(insets.f79127c, insets2.f79127c), Math.min(insets.f79128d, insets2.f79128d)), z0.c.c(Math.max(insets.f79125a, insets2.f79125a), Math.max(insets.f79126b, insets2.f79126b), Math.max(insets.f79127c, insets2.f79127c), Math.max(insets.f79128d, insets2.f79128d)));
        }

        static Interpolator k(int i11, int i12) {
            if ((WindowInsetsCompat.Type.ime() & i11) != 0) {
                return f8313f;
            }
            if ((WindowInsetsCompat.Type.ime() & i12) != 0) {
                return f8314g;
            }
            if ((i11 & WindowInsetsCompat.Type.systemBars()) != 0) {
                return f8315h;
            }
            if ((WindowInsetsCompat.Type.systemBars() & i12) != 0) {
                return f8316i;
            }
            return null;
        }

        private static View.OnApplyWindowInsetsListener l(View view, Callback callback) {
            return new Impl21OnApplyWindowInsetsListener(view, callback);
        }

        static void m(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                callbackR.onEnd(windowInsetsAnimationCompat);
                if (callbackR.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    m(viewGroup.getChildAt(i11), windowInsetsAnimationCompat);
                }
            }
        }

        static void n(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, boolean z10) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                callbackR.mDispachedInsets = windowInsetsCompat;
                if (!z10) {
                    callbackR.onPrepare(windowInsetsAnimationCompat);
                    z10 = callbackR.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    n(viewGroup.getChildAt(i11), windowInsetsAnimationCompat, windowInsetsCompat, z10);
                }
            }
        }

        static void o(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                windowInsetsCompat = callbackR.onProgress(windowInsetsCompat, list);
                if (callbackR.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    o(viewGroup.getChildAt(i11), windowInsetsCompat, list);
                }
            }
        }

        static void p(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                callbackR.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (callbackR.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    p(viewGroup.getChildAt(i11), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        static WindowInsets q(View view, WindowInsets windowInsets) {
            return view.getTag(R$id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        static Callback r(View view) {
            Object tag = view.getTag(R$id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).f8317a;
            }
            return null;
        }

        static WindowInsetsCompat s(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f11, int i11) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i11 & i12) == 0) {
                    builder.setInsets(i12, windowInsetsCompat.getInsets(i12));
                } else {
                    z0.c insets = windowInsetsCompat.getInsets(i12);
                    z0.c insets2 = windowInsetsCompat2.getInsets(i12);
                    float f12 = 1.0f - f11;
                    builder.setInsets(i12, WindowInsetsCompat.insetInsets(insets, (int) (((double) ((insets.f79125a - insets2.f79125a) * f12)) + 0.5d), (int) (((double) ((insets.f79126b - insets2.f79126b) * f12)) + 0.5d), (int) (((double) ((insets.f79127c - insets2.f79127c) * f12)) + 0.5d), (int) (((double) ((insets.f79128d - insets2.f79128d) * f12)) + 0.5d)));
                }
            }
            return builder.build();
        }

        static void t(View view, Callback callback) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListenerL = callback != null ? l(view, callback) : null;
            view.setTag(R$id.tag_window_insets_animation_callback, onApplyWindowInsetsListenerL);
            if (view.getTag(R$id.tag_compat_insets_dispatch) == null && view.getTag(R$id.tag_on_apply_window_listener) == null) {
                view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListenerL);
            }
        }
    }

    private static class a extends b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final WindowInsetsAnimation f8328f;

        /* JADX INFO: renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a, reason: collision with other inner class name */
        private static class C0070a extends WindowInsetsAnimation$Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Callback f8329a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private List f8330b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private ArrayList f8331c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final HashMap f8332d;

            C0070a(Callback callback) {
                super(callback.getDispatchMode());
                this.f8332d = new HashMap();
                this.f8329a = callback;
            }

            private WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) this.f8332d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.toWindowInsetsAnimationCompat(windowInsetsAnimation);
                this.f8332d.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                return windowInsetsAnimationCompat2;
            }

            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.f8329a.onEnd(a(windowInsetsAnimation));
                this.f8332d.remove(windowInsetsAnimation);
            }

            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.f8329a.onPrepare(a(windowInsetsAnimation));
            }

            public WindowInsets onProgress(WindowInsets windowInsets, List list) {
                ArrayList arrayList = this.f8331c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.f8331c = arrayList2;
                    this.f8330b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimationA = e1.a(list.get(size));
                    WindowInsetsAnimationCompat windowInsetsAnimationCompatA = a(windowInsetsAnimationA);
                    windowInsetsAnimationCompatA.setFraction(windowInsetsAnimationA.getFraction());
                    this.f8331c.add(windowInsetsAnimationCompatA);
                }
                return this.f8329a.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.f8330b).toWindowInsets();
            }

            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.f8329a.onStart(a(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }
        }

        a(int i11, Interpolator interpolator, long j11) {
            this(s0.a(i11, interpolator, j11));
        }

        a(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f8328f = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds i(BoundsCompat boundsCompat) {
            u0.a();
            return t0.a(boundsCompat.getLowerBound().g(), boundsCompat.getUpperBound().g());
        }

        public static z0.c j(WindowInsetsAnimation.Bounds bounds) {
            return z0.c.f(bounds.getUpperBound());
        }

        public static z0.c k(WindowInsetsAnimation.Bounds bounds) {
            return z0.c.f(bounds.getLowerBound());
        }

        public static void l(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new C0070a(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public float a() {
            return this.f8328f.getAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public long b() {
            return this.f8328f.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public float c() {
            return this.f8328f.getFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public float d() {
            return this.f8328f.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public Interpolator e() {
            return this.f8328f.getInterpolator();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public int f() {
            return this.f8328f.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public void g(float f11) {
            this.f8328f.setAlpha(f11);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.b
        public void h(float f11) {
            this.f8328f.setFraction(f11);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f8333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f8334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Interpolator f8335c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f8336d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f8337e = 1.0f;

        b(int i11, Interpolator interpolator, long j11) {
            this.f8333a = i11;
            this.f8335c = interpolator;
            this.f8336d = j11;
        }

        public float a() {
            return this.f8337e;
        }

        public long b() {
            return this.f8336d;
        }

        public float c() {
            return this.f8334b;
        }

        public float d() {
            Interpolator interpolator = this.f8335c;
            return interpolator != null ? interpolator.getInterpolation(this.f8334b) : this.f8334b;
        }

        public Interpolator e() {
            return this.f8335c;
        }

        public int f() {
            return this.f8333a;
        }

        public void g(float f11) {
            this.f8337e = f11;
        }

        public void h(float f11) {
            this.f8334b = f11;
        }
    }

    public WindowInsetsAnimationCompat(int i11, Interpolator interpolator, long j11) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new a(i11, interpolator, j11);
        } else {
            this.mImpl = new Impl21(i11, interpolator, j11);
        }
    }

    private WindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new a(windowInsetsAnimation);
        }
    }

    static void setCallback(View view, Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            a.l(view, callback);
        } else {
            Impl21.t(view, callback);
        }
    }

    static WindowInsetsAnimationCompat toWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    public float getAlpha() {
        return this.mImpl.a();
    }

    public long getDurationMillis() {
        return this.mImpl.b();
    }

    public float getFraction() {
        return this.mImpl.c();
    }

    public float getInterpolatedFraction() {
        return this.mImpl.d();
    }

    public Interpolator getInterpolator() {
        return this.mImpl.e();
    }

    public int getTypeMask() {
        return this.mImpl.f();
    }

    public void setAlpha(float f11) {
        this.mImpl.g(f11);
    }

    public void setFraction(float f11) {
        this.mImpl.h(f11);
    }
}

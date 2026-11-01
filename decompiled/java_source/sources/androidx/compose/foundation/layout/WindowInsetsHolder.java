package androidx.compose.foundation.layout;

import android.view.View;
import android.view.WindowInsets;
import androidx.compose.ui.R$id;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsHolder {
    private static boolean A;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final Companion f2793x = new Companion(null);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f2794y = 8;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final WeakHashMap f2795z = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f2796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f2797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f2798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f2799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f2800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f2801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f2802g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f2803h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f2804i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final g0 f2805j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final h0 f2806k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final h0 f2807l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final h0 f2808m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final g0 f2809n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final g0 f2810o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final g0 f2811p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g0 f2812q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final g0 f2813r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final g0 f2814s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final g0 f2815t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f2816u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f2817v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final InsetsListener f2818w;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final WindowInsetsHolder d(View view) {
            WindowInsetsHolder windowInsetsHolder;
            synchronized (WindowInsetsHolder.f2795z) {
                try {
                    WeakHashMap weakHashMap = WindowInsetsHolder.f2795z;
                    Object obj = weakHashMap.get(view);
                    Object obj2 = obj;
                    if (obj == null) {
                        WindowInsetsHolder windowInsetsHolder2 = new WindowInsetsHolder(null, view, false ? 1 : 0);
                        weakHashMap.put(view, windowInsetsHolder2);
                        obj2 = windowInsetsHolder2;
                    }
                    windowInsetsHolder = (WindowInsetsHolder) obj2;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return windowInsetsHolder;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final a e(WindowInsetsCompat windowInsetsCompat, int i11, String str) {
            a aVar = new a(i11, str);
            if (windowInsetsCompat != null) {
                aVar.h(windowInsetsCompat, i11);
            }
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final g0 f(WindowInsetsCompat windowInsetsCompat, int i11, String str) {
            z0.c insetsIgnoringVisibility;
            if (windowInsetsCompat == null || (insetsIgnoringVisibility = windowInsetsCompat.getInsetsIgnoringVisibility(i11)) == null) {
                insetsIgnoringVisibility = z0.c.f79124e;
            }
            return j0.a(insetsIgnoringVisibility, str);
        }

        public final WindowInsetsHolder c(androidx.compose.runtime.i iVar, int i11) {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1366542614, i11, -1, "androidx.compose.foundation.layout.WindowInsetsHolder.Companion.current (WindowInsets.android.kt:626)");
            }
            final View view = (View) iVar.l(AndroidCompositionLocals_androidKt.j());
            final WindowInsetsHolder windowInsetsHolderD = d(view);
            boolean zA = iVar.A(windowInsetsHolderD) | iVar.A(view);
            Object objY = iVar.y();
            if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() { // from class: androidx.compose.foundation.layout.WindowInsetsHolder$Companion$current$1$1

                    public static final class a implements androidx.compose.runtime.c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ WindowInsetsHolder f2819a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        final /* synthetic */ View f2820b;

                        public a(WindowInsetsHolder windowInsetsHolder, View view) {
                            this.f2819a = windowInsetsHolder;
                            this.f2820b = view;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f2819a.b(this.f2820b);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        windowInsetsHolderD.p(view);
                        return new a(windowInsetsHolderD, view);
                    }
                };
                iVar.p(objY);
            }
            androidx.compose.runtime.g0.a(windowInsetsHolderD, (Function1) objY, iVar, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            return windowInsetsHolderD;
        }
    }

    private WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view) {
        DisplayCutoutCompat displayCutout;
        z0.c waterfallInsets;
        Companion companion = f2793x;
        this.f2796a = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.captionBar(), "captionBar");
        a aVarE = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.displayCutout(), "displayCutout");
        this.f2797b = aVarE;
        a aVarE2 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.ime(), "ime");
        this.f2798c = aVarE2;
        a aVarE3 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.mandatorySystemGestures(), "mandatorySystemGestures");
        this.f2799d = aVarE3;
        this.f2800e = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.navigationBars(), "navigationBars");
        this.f2801f = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.statusBars(), "statusBars");
        a aVarE4 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.systemBars(), "systemBars");
        this.f2802g = aVarE4;
        a aVarE5 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.systemGestures(), "systemGestures");
        this.f2803h = aVarE5;
        a aVarE6 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.tappableElement(), "tappableElement");
        this.f2804i = aVarE6;
        g0 g0VarA = j0.a((windowInsetsCompat == null || (displayCutout = windowInsetsCompat.getDisplayCutout()) == null || (waterfallInsets = displayCutout.getWaterfallInsets()) == null) ? z0.c.f79124e : waterfallInsets, "waterfall");
        this.f2805j = g0VarA;
        h0 h0VarC = i0.c(i0.c(aVarE4, aVarE2), aVarE);
        this.f2806k = h0VarC;
        h0 h0VarC2 = i0.c(i0.c(i0.c(aVarE6, aVarE3), aVarE5), g0VarA);
        this.f2807l = h0VarC2;
        this.f2808m = i0.c(h0VarC, h0VarC2);
        this.f2809n = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.captionBar(), "captionBarIgnoringVisibility");
        this.f2810o = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.navigationBars(), "navigationBarsIgnoringVisibility");
        this.f2811p = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.statusBars(), "statusBarsIgnoringVisibility");
        this.f2812q = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.systemBars(), "systemBarsIgnoringVisibility");
        this.f2813r = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.tappableElement(), "tappableElementIgnoringVisibility");
        this.f2814s = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.ime(), "imeAnimationTarget");
        this.f2815t = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.ime(), "imeAnimationSource");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        Object tag = view2 != null ? view2.getTag(R$id.consume_window_insets_tag) : null;
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        this.f2816u = bool != null ? bool.booleanValue() : true;
        this.f2818w = new InsetsListener(this);
    }

    public /* synthetic */ WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view, DefaultConstructorMarker defaultConstructorMarker) {
        this(windowInsetsCompat, view);
    }

    public static /* synthetic */ void r(WindowInsetsHolder windowInsetsHolder, WindowInsetsCompat windowInsetsCompat, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        windowInsetsHolder.q(windowInsetsCompat, i11);
    }

    public final void b(View view) {
        int i11 = this.f2817v - 1;
        this.f2817v = i11;
        if (i11 == 0) {
            ViewCompat.setOnApplyWindowInsetsListener(view, null);
            ViewCompat.setWindowInsetsAnimationCallback(view, null);
            view.removeOnAttachStateChangeListener(this.f2818w);
        }
    }

    public final a c() {
        return this.f2796a;
    }

    public final boolean d() {
        return this.f2816u;
    }

    public final a e() {
        return this.f2797b;
    }

    public final a f() {
        return this.f2798c;
    }

    public final a g() {
        return this.f2799d;
    }

    public final a h() {
        return this.f2800e;
    }

    public final h0 i() {
        return this.f2808m;
    }

    public final h0 j() {
        return this.f2806k;
    }

    public final h0 k() {
        return this.f2807l;
    }

    public final a l() {
        return this.f2801f;
    }

    public final a m() {
        return this.f2802g;
    }

    public final a n() {
        return this.f2803h;
    }

    public final g0 o() {
        return this.f2805j;
    }

    public final void p(View view) {
        if (this.f2817v == 0) {
            ViewCompat.setOnApplyWindowInsetsListener(view, this.f2818w);
            if (view.isAttachedToWindow()) {
                view.requestApplyInsets();
            }
            view.addOnAttachStateChangeListener(this.f2818w);
            ViewCompat.setWindowInsetsAnimationCallback(view, this.f2818w);
        }
        this.f2817v++;
    }

    public final void q(WindowInsetsCompat windowInsetsCompat, int i11) {
        if (A) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            Intrinsics.e(windowInsets);
            windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets);
        }
        this.f2796a.h(windowInsetsCompat, i11);
        this.f2798c.h(windowInsetsCompat, i11);
        this.f2797b.h(windowInsetsCompat, i11);
        this.f2800e.h(windowInsetsCompat, i11);
        this.f2801f.h(windowInsetsCompat, i11);
        this.f2802g.h(windowInsetsCompat, i11);
        this.f2803h.h(windowInsetsCompat, i11);
        this.f2804i.h(windowInsetsCompat, i11);
        this.f2799d.h(windowInsetsCompat, i11);
        if (i11 == 0) {
            this.f2809n.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.captionBar())));
            this.f2810o.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.navigationBars())));
            this.f2811p.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.statusBars())));
            this.f2812q.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars())));
            this.f2813r.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.tappableElement())));
            DisplayCutoutCompat displayCutout = windowInsetsCompat.getDisplayCutout();
            if (displayCutout != null) {
                this.f2805j.f(j0.b(displayCutout.getWaterfallInsets()));
            }
        }
        androidx.compose.runtime.snapshots.j.f4004e.n();
    }

    public final void s(WindowInsetsCompat windowInsetsCompat) {
        this.f2815t.f(j0.b(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime())));
    }

    public final void t(WindowInsetsCompat windowInsetsCompat) {
        this.f2814s.f(j0.b(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime())));
    }
}

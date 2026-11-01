package eo;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.activity.ComponentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.y;
import com.tn.lib.widget.R$dimen;
import com.transsion.player.view.R$id;
import com.transsion.player.view.R$layout;
import com.transsion.player.view.R$mipmap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f61953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f61954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f61955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.transsion.player.orplayer.g f61956e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View f61957f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f61958g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f61959h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f61960i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f61961j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f61962k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Function2 f61963l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f61964m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f61965n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f61966o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Runnable f61967p;

    public static final class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v11) {
            Intrinsics.h(v11, "v");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v11) {
            Intrinsics.h(v11, "v");
            int iC = m.this.c();
            if (iC > 100) {
                hj.i iVar = hj.i.f64505a;
                iVar.s(iVar.i(), "volume_max", MapsKt.f(new Pair("volume", String.valueOf(iC))));
            }
        }
    }

    public static final class b implements r {
        b() {
        }

        @Override // androidx.p009lifecycle.r
        public void onStateChanged(u source, Lifecycle.Event event) {
            Intrinsics.h(source, "source");
            Intrinsics.h(event, "event");
            if (event == Lifecycle.Event.ON_RESUME) {
                ViewGroup viewGroup = m.this.f61954c;
                if (viewGroup != null) {
                    viewGroup.setFocusableInTouchMode(true);
                    viewGroup.requestFocus();
                }
                c.f61923a.d();
            }
        }
    }

    public m(Context context, ViewGroup viewGroup) {
        Intrinsics.h(context, "context");
        this.f61953b = context;
        this.f61954c = viewGroup;
        this.f61955d = "VideoBrightnessVolume";
        this.f61957f = LayoutInflater.from(context).inflate(R$layout.orplayer_layout_brightness_volume, viewGroup, false);
        this.f61958g = LazyKt.b(new Function0() { // from class: eo.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.B(this.f61947a);
            }
        });
        this.f61959h = LazyKt.b(new Function0() { // from class: eo.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.q(this.f61948a);
            }
        });
        this.f61960i = LazyKt.b(new Function0() { // from class: eo.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.D(this.f61949a);
            }
        });
        this.f61961j = LazyKt.b(new Function0() { // from class: eo.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.F(this.f61950a);
            }
        });
        if (viewGroup == null) {
            Log.e("VideoBrightnessVolume", " error: rootView is null !!!");
        }
        this.f61962k = (y.c() / 3.0f) / 25.0f;
        if (viewGroup != null) {
            viewGroup.setOnKeyListener(new View.OnKeyListener() { // from class: eo.k
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                    return m.o(this.f61951a, view, i11, keyEvent);
                }
            });
        }
        if (viewGroup != null) {
            viewGroup.addOnAttachStateChangeListener(new a());
        }
        C();
        this.f61967p = new Runnable() { // from class: eo.l
            @Override // java.lang.Runnable
            public final void run() {
                m.r(this.f61952a);
            }
        };
    }

    private final void A() {
        ViewGroup viewGroup = this.f61954c;
        if (viewGroup != null) {
            viewGroup.removeCallbacks(this.f61967p);
            View progressRootView = this.f61957f;
            Intrinsics.g(progressRootView, "progressRootView");
            progressRootView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageView B(m mVar) {
        return (ImageView) mVar.f61957f.findViewById(R$id.bvIV);
    }

    private final void C() {
        Context context = this.f61953b;
        if (context instanceof ComponentActivity) {
            ((ComponentActivity) context).getLifecycle().a(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProgressBar D(m mVar) {
        return (ProgressBar) mVar.f61957f.findViewById(R$id.secProgress);
    }

    private final void E(boolean z10, int i11) {
        int i12;
        if (i11 < 0) {
            return;
        }
        ImageView imageViewX = x();
        if (i11 == 0) {
            i12 = z10 ? R$mipmap.ic_volume_0 : R$mipmap.ic_brightness_33;
        } else if (i11 <= 33) {
            i12 = z10 ? R$mipmap.ic_volume_33 : R$mipmap.ic_brightness_33;
        } else if (i11 <= 66) {
            i12 = z10 ? R$mipmap.ic_volume_66 : R$mipmap.ic_brightness_66;
        } else if (i11 <= 100) {
            i12 = z10 ? R$mipmap.ic_volume_66 : R$mipmap.ic_brightness_100;
        } else {
            i12 = z10 ? R$mipmap.ic_volume_100 : R$mipmap.ic_brightness_100;
        }
        imageViewX.setImageResource(i12);
        v().setProgress(i11);
        int i13 = RangesKt.i(RangesKt.f(i11 - 100, 0), 100);
        y().setVisibility(i13 > 0 ? 0 : 8);
        y().setProgress(i13);
        f(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View F(m mVar) {
        return mVar.f61957f.findViewById(R$id.tipsLL);
    }

    private final void G(int i11) {
        com.transsion.player.orplayer.g gVar;
        int iC = c();
        int iK = c.f61923a.k(i11);
        if (iK <= 100 && (gVar = this.f61956e) != null) {
            gVar.setVolume(1.0f);
        }
        Function2 function2 = this.f61963l;
        if (function2 != null) {
            function2.invoke(Boolean.TRUE, Integer.valueOf(iK));
        }
        E(true, iK);
        s(iK, iC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(m mVar, View view, int i11, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if (i11 == 24) {
            int iC = mVar.c();
            mVar.G((91 > iC || iC >= 100) ? 10 : 100 - iC);
        } else {
            if (i11 != 25) {
                return false;
            }
            mVar.G(-10);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProgressBar q(m mVar) {
        return (ProgressBar) mVar.f61957f.findViewById(R$id.bvProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(m mVar) {
        mVar.A();
    }

    private final void s(int i11, int i12) {
        com.transsion.player.orplayer.g gVar;
        if (i11 > 100 && (gVar = this.f61956e) != null) {
            gVar.setVolume(i11 / 100.0f);
        }
        t(i11, i12);
    }

    private final void t(int i11, int i12) {
        if (i12 >= 100 || i11 != 100) {
            return;
        }
        z().setVisibility(0);
        z().postDelayed(new Runnable() { // from class: eo.f
            @Override // java.lang.Runnable
            public final void run() {
                m.u(this.f61946a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(m mVar) {
        mVar.z().setVisibility(8);
    }

    private final ProgressBar v() {
        Object value = this.f61959h.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ProgressBar) value;
    }

    private final ImageView x() {
        Object value = this.f61958g.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ImageView) value;
    }

    private final ProgressBar y() {
        Object value = this.f61960i.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ProgressBar) value;
    }

    private final View z() {
        Object value = this.f61961j.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (View) value;
    }

    @Override // eo.n
    public void a(float f11, float f12) {
        Context context = this.f61953b;
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        float f13 = 1.0f;
        float f14 = f11 + (f12 * 1.0f);
        if (f14 <= 0.0f) {
            f13 = 0.0f;
        } else if (f14 < 1.0f) {
            f13 = f14;
        }
        attributes.screenBrightness = f13;
        window.setAttributes(attributes);
        Function2 function2 = this.f61963l;
        if (function2 != null) {
            function2.invoke(Boolean.FALSE, Integer.valueOf((int) (100 * f13)));
        }
        E(false, (int) (f13 * 100));
    }

    @Override // eo.n
    public float b() {
        Context context = this.f61953b;
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        if (window == null) {
            return 0.0f;
        }
        float f11 = window.getAttributes().screenBrightness;
        return f11 == -1.0f ? w() : f11;
    }

    @Override // eo.n
    public int c() {
        return c.f61923a.e();
    }

    @Override // eo.n
    public void d(float f11, float f12, int i11) {
        if (this.f61964m != f11) {
            this.f61965n = f11;
            this.f61964m = f11;
        }
        if (i11 <= 0) {
            i11 = y.c();
        }
        int i12 = (int) ((((this.f61965n - f12) * 80.0f) / i11) + 0.5f);
        if (Math.abs(i12) == 0) {
            return;
        }
        this.f61965n = f12;
        G(i12);
    }

    @Override // eo.n
    public void e(com.transsion.player.orplayer.g gVar) {
        this.f61956e = gVar;
    }

    @Override // eo.n
    public void f(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("show:");
        sb2.append(z10);
        if (this.f61954c == null) {
            return;
        }
        if (!z10) {
            A();
            return;
        }
        View progressRootView = this.f61957f;
        Intrinsics.g(progressRootView, "progressRootView");
        progressRootView.setVisibility(0);
        try {
            Result.Companion companion = Result.INSTANCE;
            ViewGroup viewGroup = this.f61954c;
            if (!Intrinsics.c(viewGroup.getChildAt(viewGroup.getChildCount() - 1), this.f61957f)) {
                this.f61954c.removeView(this.f61957f);
            }
            ViewGroup viewGroup2 = this.f61954c;
            View progressRootView2 = this.f61957f;
            Intrinsics.g(progressRootView2, "progressRootView");
            if (viewGroup2.indexOfChild(progressRootView2) == -1) {
                this.f61954c.addView(this.f61957f);
            }
            if (this.f61966o) {
                ViewGroup.LayoutParams layoutParams = this.f61957f.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.topMargin = com.blankj.utilcode.util.d.c() + ((int) this.f61953b.getResources().getDimension(R$dimen.toolbar_height));
                    this.f61957f.setLayoutParams(marginLayoutParams);
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.f61954c.removeCallbacks(this.f61967p);
        this.f61954c.postDelayed(this.f61967p, 500L);
    }

    @Override // eo.n
    public void g() {
        this.f61966o = true;
    }

    public float w() {
        Context context = this.f61953b;
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        try {
            return (Settings.System.getFloat(((Activity) context).getContentResolver(), "screen_brightness") * 1.0f) / 255;
        } catch (Throwable unused) {
            return 0.0f;
        }
    }
}

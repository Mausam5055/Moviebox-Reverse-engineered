package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;

/* JADX INFO: loaded from: classes.dex */
class r0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static r0 f2100k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static r0 f2101l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f2102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f2103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f2105d = new Runnable() { // from class: androidx.appcompat.widget.p0
        @Override // java.lang.Runnable
        public final void run() {
            this.f2098a.e();
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f2106e = new Runnable() { // from class: androidx.appcompat.widget.q0
        @Override // java.lang.Runnable
        public final void run() {
            this.f2099a.d();
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2107f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2108g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private s0 f2109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f2110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f2111j;

    private r0(View view, CharSequence charSequence) {
        this.f2102a = view;
        this.f2103b = charSequence;
        this.f2104c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        c();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void b() {
        this.f2102a.removeCallbacks(this.f2105d);
    }

    private void c() {
        this.f2111j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        i(false);
    }

    private void f() {
        this.f2102a.postDelayed(this.f2105d, ViewConfiguration.getLongPressTimeout());
    }

    private static void g(r0 r0Var) {
        r0 r0Var2 = f2100k;
        if (r0Var2 != null) {
            r0Var2.b();
        }
        f2100k = r0Var;
        if (r0Var != null) {
            r0Var.f();
        }
    }

    public static void h(View view, CharSequence charSequence) {
        r0 r0Var = f2100k;
        if (r0Var != null && r0Var.f2102a == view) {
            g(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new r0(view, charSequence);
            return;
        }
        r0 r0Var2 = f2101l;
        if (r0Var2 != null && r0Var2.f2102a == view) {
            r0Var2.d();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    private boolean j(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (!this.f2111j && Math.abs(x10 - this.f2107f) <= this.f2104c && Math.abs(y10 - this.f2108g) <= this.f2104c) {
            return false;
        }
        this.f2107f = x10;
        this.f2108g = y10;
        this.f2111j = false;
        return true;
    }

    void d() {
        if (f2101l == this) {
            f2101l = null;
            s0 s0Var = this.f2109h;
            if (s0Var != null) {
                s0Var.c();
                this.f2109h = null;
                c();
                this.f2102a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f2100k == this) {
            g(null);
        }
        this.f2102a.removeCallbacks(this.f2106e);
    }

    void i(boolean z10) {
        long longPressTimeout;
        long j11;
        long j12;
        if (this.f2102a.isAttachedToWindow()) {
            g(null);
            r0 r0Var = f2101l;
            if (r0Var != null) {
                r0Var.d();
            }
            f2101l = this;
            this.f2110i = z10;
            s0 s0Var = new s0(this.f2102a.getContext());
            this.f2109h = s0Var;
            s0Var.e(this.f2102a, this.f2107f, this.f2108g, this.f2110i, this.f2103b);
            this.f2102a.addOnAttachStateChangeListener(this);
            if (this.f2110i) {
                j12 = 2500;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(this.f2102a) & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j11 = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j11 = MBInterstitialActivity.WEB_LOAD_TIME;
                }
                j12 = j11 - longPressTimeout;
            }
            this.f2102a.removeCallbacks(this.f2106e);
            this.f2102a.postDelayed(this.f2106e, j12);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f2109h != null && this.f2110i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f2102a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                c();
                d();
            }
        } else if (this.f2102a.isEnabled() && this.f2109h == null && j(motionEvent)) {
            g(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f2107f = view.getWidth() / 2;
        this.f2108g = view.getHeight() / 2;
        i(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        d();
    }
}

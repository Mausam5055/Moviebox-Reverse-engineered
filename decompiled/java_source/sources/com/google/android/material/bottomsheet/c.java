package com.google.android.material.bottomsheet;

import ab.i;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.w;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.internal.f0;

/* JADX INFO: loaded from: classes4.dex */
public class c extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BottomSheetBehavior f28453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout f28454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CoordinatorLayout f28455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f28456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f28457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f28458f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28459g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28460h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f28461i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28462j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private wa.c f28463k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BottomSheetBehavior.f f28464l;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (c.this.f28461i != null) {
                c.this.f28453a.B0(c.this.f28461i);
            }
            if (windowInsetsCompat != null) {
                c cVar = c.this;
                cVar.f28461i = new f(cVar.f28456d, windowInsetsCompat, null);
                c.this.f28461i.b(c.this.getWindow());
                c.this.f28453a.Y(c.this.f28461i);
            }
            return windowInsetsCompat;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c cVar = c.this;
            if (cVar.f28458f && cVar.isShowing() && c.this.n()) {
                c.this.cancel();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.c$c, reason: collision with other inner class name */
    class C0392c extends AccessibilityDelegateCompat {
        C0392c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!c.this.f28458f) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
            if (i11 == 1048576) {
                c cVar = c.this;
                if (cVar.f28458f) {
                    cVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i11, bundle);
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class e extends BottomSheetBehavior.f {
        e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onSlide(View view, float f11) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onStateChanged(View view, int i11) {
            if (i11 == 5) {
                c.this.cancel();
            }
        }
    }

    private static class f extends BottomSheetBehavior.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Boolean f28470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WindowInsetsCompat f28471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Window f28472c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f28473d;

        private f(View view, WindowInsetsCompat windowInsetsCompat) {
            this.f28471b = windowInsetsCompat;
            i iVarP0 = BottomSheetBehavior.m0(view).p0();
            ColorStateList colorStateListZ = iVarP0 != null ? iVarP0.z() : ViewCompat.getBackgroundTintList(view);
            if (colorStateListZ != null) {
                this.f28470a = Boolean.valueOf(com.google.android.material.color.b.h(colorStateListZ.getDefaultColor()));
                return;
            }
            Integer numH = f0.h(view);
            if (numH != null) {
                this.f28470a = Boolean.valueOf(com.google.android.material.color.b.h(numH.intValue()));
            } else {
                this.f28470a = null;
            }
        }

        /* synthetic */ f(View view, WindowInsetsCompat windowInsetsCompat, a aVar) {
            this(view, windowInsetsCompat);
        }

        private void a(View view) {
            if (view.getTop() < this.f28471b.getSystemWindowInsetTop()) {
                Window window = this.f28472c;
                if (window != null) {
                    Boolean bool = this.f28470a;
                    com.google.android.material.internal.e.f(window, bool == null ? this.f28473d : bool.booleanValue());
                }
                view.setPadding(view.getPaddingLeft(), this.f28471b.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f28472c;
                if (window2 != null) {
                    com.google.android.material.internal.e.f(window2, this.f28473d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        void b(Window window) {
            if (this.f28472c == window) {
                return;
            }
            this.f28472c = window;
            if (window != null) {
                this.f28473d = WindowCompat.getInsetsController(window, window.getDecorView()).isAppearanceLightStatusBars();
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        void onLayout(View view) {
            a(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onSlide(View view, float f11) {
            a(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void onStateChanged(View view, int i11) {
            a(view);
        }
    }

    public c(Context context) {
        this(context, 0);
        this.f28462j = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    public c(Context context, int i11) {
        super(context, d(context, i11));
        this.f28458f = true;
        this.f28459g = true;
        this.f28464l = new e();
        supportRequestWindowFeature(1);
        this.f28462j = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    private static int d(Context context, int i11) {
        if (i11 != 0) {
            return i11;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R$attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R$style.Theme_Design_Light_BottomSheetDialog;
    }

    private FrameLayout j() {
        if (this.f28454b == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.design_bottom_sheet_dialog, null);
            this.f28454b = frameLayout;
            this.f28455c = (CoordinatorLayout) frameLayout.findViewById(R$id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f28454b.findViewById(R$id.design_bottom_sheet);
            this.f28456d = frameLayout2;
            BottomSheetBehavior bottomSheetBehaviorM0 = BottomSheetBehavior.m0(frameLayout2);
            this.f28453a = bottomSheetBehaviorM0;
            bottomSheetBehaviorM0.Y(this.f28464l);
            this.f28453a.M0(this.f28458f);
            this.f28463k = new wa.c(this.f28453a, this.f28456d);
        }
        return this.f28454b;
    }

    private void o() {
        wa.c cVar = this.f28463k;
        if (cVar == null) {
            return;
        }
        if (this.f28458f) {
            cVar.c();
        } else {
            cVar.f();
        }
    }

    private View p(int i11, View view, ViewGroup.LayoutParams layoutParams) {
        j();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f28454b.findViewById(R$id.coordinator);
        if (i11 != 0 && view == null) {
            view = getLayoutInflater().inflate(i11, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f28462j) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f28456d, new a());
        }
        this.f28456d.removeAllViews();
        if (layoutParams == null) {
            this.f28456d.addView(view);
        } else {
            this.f28456d.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R$id.touch_outside).setOnClickListener(new b());
        ViewCompat.setAccessibilityDelegate(this.f28456d, new C0392c());
        this.f28456d.setOnTouchListener(new d());
        return this.f28454b;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior bottomSheetBehaviorK = k();
        if (!this.f28457e || bottomSheetBehaviorK.q0() == 5) {
            super.cancel();
        } else {
            bottomSheetBehaviorK.U0(5);
        }
    }

    public BottomSheetBehavior k() {
        if (this.f28453a == null) {
            j();
        }
        return this.f28453a;
    }

    public boolean l() {
        return this.f28457e;
    }

    void m() {
        this.f28453a.B0(this.f28464l);
    }

    boolean n() {
        if (!this.f28460h) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f28459g = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f28460h = true;
        }
        return this.f28459g;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z10 = this.f28462j && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f28454b;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z10);
            }
            CoordinatorLayout coordinatorLayout = this.f28455c;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z10);
            }
            WindowCompat.setDecorFitsSystemWindows(window, !z10);
            f fVar = this.f28461i;
            if (fVar != null) {
                fVar.b(window);
            }
        }
        o();
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        f fVar = this.f28461i;
        if (fVar != null) {
            fVar.b(null);
        }
        wa.c cVar = this.f28463k;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.f28453a;
        if (bottomSheetBehavior == null || bottomSheetBehavior.q0() != 5) {
            return;
        }
        this.f28453a.U0(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.f28458f != z10) {
            this.f28458f = z10;
            BottomSheetBehavior bottomSheetBehavior = this.f28453a;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.M0(z10);
            }
            if (getWindow() != null) {
                o();
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.f28458f) {
            this.f28458f = true;
        }
        this.f28459g = z10;
        this.f28460h = true;
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void setContentView(int i11) {
        super.setContentView(p(i11, null, null));
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(p(0, view, null));
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(p(0, view, layoutParams));
    }
}

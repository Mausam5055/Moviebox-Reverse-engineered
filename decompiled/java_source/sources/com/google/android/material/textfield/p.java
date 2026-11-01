package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

/* JADX INFO: loaded from: classes4.dex */
class p extends s {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final boolean f29930s = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f29931e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f29932f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TimeInterpolator f29933g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AutoCompleteTextView f29934h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View.OnClickListener f29935i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View.OnFocusChangeListener f29936j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f29937k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f29938l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f29939m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f29940n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f29941o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AccessibilityManager f29942p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator f29943q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ValueAnimator f29944r;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p.this.r();
            p.this.f29944r.start();
        }
    }

    p(r rVar) {
        super(rVar);
        this.f29935i = new View.OnClickListener() { // from class: com.google.android.material.textfield.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29926a.J(view);
            }
        };
        this.f29936j = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.m
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z10) {
                this.f29927a.K(view, z10);
            }
        };
        this.f29937k = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: com.google.android.material.textfield.n
            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f29928a.L(z10);
            }
        };
        this.f29941o = Long.MAX_VALUE;
        this.f29932f = wa.j.f(rVar.getContext(), R$attr.motionDurationShort3, 67);
        this.f29931e = wa.j.f(rVar.getContext(), R$attr.motionDurationShort3, 50);
        this.f29933g = wa.j.g(rVar.getContext(), R$attr.motionEasingLinearInterpolator, oa.a.f70918a);
    }

    private static AutoCompleteTextView D(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator E(int i11, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f29933g);
        valueAnimatorOfFloat.setDuration(i11);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29923a.I(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void F() {
        this.f29944r = E(this.f29932f, 0.0f, 1.0f);
        ValueAnimator valueAnimatorE = E(this.f29931e, 1.0f, 0.0f);
        this.f29943q = valueAnimatorE;
        valueAnimatorE.addListener(new a());
    }

    private boolean G() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f29941o;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        boolean zIsPopupShowing = this.f29934h.isPopupShowing();
        O(zIsPopupShowing);
        this.f29939m = zIsPopupShowing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ValueAnimator valueAnimator) {
        this.f29979d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(View view) {
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(View view, boolean z10) {
        this.f29938l = z10;
        r();
        if (z10) {
            return;
        }
        O(false);
        this.f29939m = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(boolean z10) {
        AutoCompleteTextView autoCompleteTextView = this.f29934h;
        if (autoCompleteTextView == null || q.a(autoCompleteTextView)) {
            return;
        }
        ViewCompat.setImportantForAccessibility(this.f29979d, z10 ? 2 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean M(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (G()) {
                this.f29939m = false;
            }
            Q();
            R();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        R();
        O(false);
    }

    private void O(boolean z10) {
        if (this.f29940n != z10) {
            this.f29940n = z10;
            this.f29944r.cancel();
            this.f29943q.start();
        }
    }

    private void P() {
        this.f29934h.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f29924a.M(view, motionEvent);
            }
        });
        if (f29930s) {
            this.f29934h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.k
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    this.f29925a.N();
                }
            });
        }
        this.f29934h.setThreshold(0);
    }

    private void Q() {
        if (this.f29934h == null) {
            return;
        }
        if (G()) {
            this.f29939m = false;
        }
        if (this.f29939m) {
            this.f29939m = false;
            return;
        }
        if (f29930s) {
            O(!this.f29940n);
        } else {
            this.f29940n = !this.f29940n;
            r();
        }
        if (!this.f29940n) {
            this.f29934h.dismissDropDown();
        } else {
            this.f29934h.requestFocus();
            this.f29934h.showDropDown();
        }
    }

    private void R() {
        this.f29939m = true;
        this.f29941o = System.currentTimeMillis();
    }

    @Override // com.google.android.material.textfield.s
    public void a(Editable editable) {
        if (this.f29942p.isTouchExplorationEnabled() && q.a(this.f29934h) && !this.f29979d.hasFocus()) {
            this.f29934h.dismissDropDown();
        }
        this.f29934h.post(new Runnable() { // from class: com.google.android.material.textfield.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f29929a.H();
            }
        });
    }

    @Override // com.google.android.material.textfield.s
    int c() {
        return R$string.exposed_dropdown_menu_content_description;
    }

    @Override // com.google.android.material.textfield.s
    int d() {
        return f29930s ? R$drawable.mtrl_dropdown_arrow : R$drawable.mtrl_ic_arrow_drop_down;
    }

    @Override // com.google.android.material.textfield.s
    View.OnFocusChangeListener e() {
        return this.f29936j;
    }

    @Override // com.google.android.material.textfield.s
    View.OnClickListener f() {
        return this.f29935i;
    }

    @Override // com.google.android.material.textfield.s
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener h() {
        return this.f29937k;
    }

    @Override // com.google.android.material.textfield.s
    boolean i(int i11) {
        return i11 != 0;
    }

    @Override // com.google.android.material.textfield.s
    boolean j() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    boolean k() {
        return this.f29938l;
    }

    @Override // com.google.android.material.textfield.s
    boolean l() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    boolean m() {
        return this.f29940n;
    }

    @Override // com.google.android.material.textfield.s
    public void n(EditText editText) {
        this.f29934h = D(editText);
        P();
        this.f29976a.setErrorIconDrawable((Drawable) null);
        if (!q.a(editText) && this.f29942p.isTouchExplorationEnabled()) {
            ViewCompat.setImportantForAccessibility(this.f29979d, 2);
        }
        this.f29976a.setEndIconVisible(true);
    }

    @Override // com.google.android.material.textfield.s
    public void o(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (!q.a(this.f29934h)) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // com.google.android.material.textfield.s
    public void p(View view, AccessibilityEvent accessibilityEvent) {
        if (!this.f29942p.isEnabled() || q.a(this.f29934h)) {
            return;
        }
        boolean z10 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f29940n && !this.f29934h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z10) {
            Q();
            R();
        }
    }

    @Override // com.google.android.material.textfield.s
    void s() {
        F();
        this.f29942p = (AccessibilityManager) this.f29978c.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.s
    boolean t() {
        return true;
    }

    @Override // com.google.android.material.textfield.s
    void u() {
        AutoCompleteTextView autoCompleteTextView = this.f29934h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            if (f29930s) {
                this.f29934h.setOnDismissListener(null);
            }
        }
    }
}

package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;

/* JADX INFO: loaded from: classes.dex */
abstract class AbsActionBarView extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final a f1544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f1545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected ActionMenuView f1546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ActionMenuPresenter f1547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f1548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ViewPropertyAnimatorCompat f1549f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1550g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1551h;

    protected class a implements ViewPropertyAnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1552a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1553b;

        protected a() {
        }

        public a a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i11) {
            AbsActionBarView.this.f1549f = viewPropertyAnimatorCompat;
            this.f1553b = i11;
            return this;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f1552a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f1552a) {
                return;
            }
            AbsActionBarView absActionBarView = AbsActionBarView.this;
            absActionBarView.f1549f = null;
            AbsActionBarView.super.setVisibility(this.f1553b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AbsActionBarView.super.setVisibility(0);
            this.f1552a = false;
        }
    }

    AbsActionBarView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f1544a = new a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1545b = context;
        } else {
            this.f1545b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    protected static int d(int i11, int i12, boolean z10) {
        return z10 ? i11 - i12 : i11 + i12;
    }

    public void animateToVisibility(int i11) {
        setupAnimatorToVisibility(i11, 200L).start();
    }

    protected int c(View view, int i11, int i12, int i13) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i11, Integer.MIN_VALUE), i12);
        return Math.max(0, (i11 - view.getMeasuredWidth()) - i13);
    }

    public boolean canShowOverflowMenu() {
        return isOverflowReserved() && getVisibility() == 0;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
    }

    protected int e(View view, int i11, int i12, int i13, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i14 = i12 + ((i13 - measuredHeight) / 2);
        if (z10) {
            view.layout(i11 - measuredWidth, i14, i11, measuredHeight + i14);
        } else {
            view.layout(i11, i14, i11 + measuredWidth, measuredHeight + i14);
        }
        return z10 ? -measuredWidth : measuredWidth;
    }

    public int getAnimatedVisibility() {
        return this.f1549f != null ? this.f1544a.f1553b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1548e;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.F();
        }
        return false;
    }

    public boolean isOverflowReserved() {
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        return actionMenuPresenter != null && actionMenuPresenter.H();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.I(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1551h = false;
        }
        if (!this.f1551h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1551h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1551h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1550g = false;
        }
        if (!this.f1550g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1550g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1550g = false;
        }
        return true;
    }

    public void postShowOverflowMenu() {
        post(new Runnable() { // from class: androidx.appcompat.widget.AbsActionBarView.1
            @Override // java.lang.Runnable
            public void run() {
                AbsActionBarView.this.showOverflowMenu();
            }
        });
    }

    public abstract void setContentHeight(int i11);

    @Override // android.view.View
    public void setVisibility(int i11) {
        if (i11 != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1549f;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            super.setVisibility(i11);
        }
    }

    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i11, long j11) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1549f;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        if (i11 != 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this).alpha(0.0f);
            viewPropertyAnimatorCompatAlpha.setDuration(j11);
            viewPropertyAnimatorCompatAlpha.setListener(this.f1544a.a(viewPropertyAnimatorCompatAlpha, i11));
            return viewPropertyAnimatorCompatAlpha;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha2 = ViewCompat.animate(this).alpha(1.0f);
        viewPropertyAnimatorCompatAlpha2.setDuration(j11);
        viewPropertyAnimatorCompatAlpha2.setListener(this.f1544a.a(viewPropertyAnimatorCompatAlpha2, i11));
        return viewPropertyAnimatorCompatAlpha2;
    }

    public abstract boolean showOverflowMenu();
}

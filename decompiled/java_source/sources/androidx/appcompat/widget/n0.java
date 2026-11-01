package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$drawable;
import androidx.appcompat.R$id;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes.dex */
public class n0 implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Toolbar f2061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f2063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f2064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f2065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f2066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f2067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    CharSequence f2069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f2070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CharSequence f2071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Window.Callback f2072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f2073m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ActionMenuPresenter f2074n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f2075o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f2076p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f2077q;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.appcompat.view.menu.a f2078a;

        a() {
            this.f2078a = new androidx.appcompat.view.menu.a(n0.this.f2061a.getContext(), 0, R.id.home, 0, 0, n0.this.f2069i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0 n0Var = n0.this;
            Window.Callback callback = n0Var.f2072l;
            if (callback == null || !n0Var.f2073m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f2078a);
        }
    }

    class b extends ViewPropertyAnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2080a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f2081b;

        b(int i11) {
            this.f2081b = i11;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f2080a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f2080a) {
                return;
            }
            n0.this.f2061a.setVisibility(this.f2081b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            n0.this.f2061a.setVisibility(0);
        }
    }

    public n0(Toolbar toolbar, boolean z10) {
        this(toolbar, z10, R$string.abc_action_bar_up_description, R$drawable.abc_ic_ab_back_material);
    }

    public n0(Toolbar toolbar, boolean z10, int i11, int i12) {
        Drawable drawable;
        this.f2075o = 0;
        this.f2076p = 0;
        this.f2061a = toolbar;
        this.f2069i = toolbar.getTitle();
        this.f2070j = toolbar.getSubtitle();
        this.f2068h = this.f2069i != null;
        this.f2067g = toolbar.getNavigationIcon();
        j0 j0VarV = j0.v(toolbar.getContext(), null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        this.f2077q = j0VarV.g(R$styleable.ActionBar_homeAsUpIndicator);
        if (z10) {
            CharSequence charSequenceP = j0VarV.p(R$styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceP)) {
                B(charSequenceP);
            }
            CharSequence charSequenceP2 = j0VarV.p(R$styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                A(charSequenceP2);
            }
            Drawable drawableG = j0VarV.g(R$styleable.ActionBar_logo);
            if (drawableG != null) {
                w(drawableG);
            }
            Drawable drawableG2 = j0VarV.g(R$styleable.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.f2067g == null && (drawable = this.f2077q) != null) {
                z(drawable);
            }
            b(j0VarV.k(R$styleable.ActionBar_displayOptions, 0));
            int iN = j0VarV.n(R$styleable.ActionBar_customNavigationLayout, 0);
            if (iN != 0) {
                u(LayoutInflater.from(this.f2061a.getContext()).inflate(iN, (ViewGroup) this.f2061a, false));
                b(this.f2062b | 16);
            }
            int iM = j0VarV.m(R$styleable.ActionBar_height, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.f2061a.getLayoutParams();
                layoutParams.height = iM;
                this.f2061a.setLayoutParams(layoutParams);
            }
            int iE = j0VarV.e(R$styleable.ActionBar_contentInsetStart, -1);
            int iE2 = j0VarV.e(R$styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.f2061a.setContentInsetsRelative(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = j0VarV.n(R$styleable.ActionBar_titleTextStyle, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.f2061a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), iN2);
            }
            int iN3 = j0VarV.n(R$styleable.ActionBar_subtitleTextStyle, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.f2061a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), iN3);
            }
            int iN4 = j0VarV.n(R$styleable.ActionBar_popupTheme, 0);
            if (iN4 != 0) {
                this.f2061a.setPopupTheme(iN4);
            }
        } else {
            this.f2062b = t();
        }
        j0VarV.x();
        v(i11);
        this.f2071k = this.f2061a.getNavigationContentDescription();
        this.f2061a.setNavigationOnClickListener(new a());
    }

    private void C(CharSequence charSequence) {
        this.f2069i = charSequence;
        if ((this.f2062b & 8) != 0) {
            this.f2061a.setTitle(charSequence);
            if (this.f2068h) {
                ViewCompat.setAccessibilityPaneTitle(this.f2061a.getRootView(), charSequence);
            }
        }
    }

    private void D() {
        if ((this.f2062b & 4) != 0) {
            if (TextUtils.isEmpty(this.f2071k)) {
                this.f2061a.setNavigationContentDescription(this.f2076p);
            } else {
                this.f2061a.setNavigationContentDescription(this.f2071k);
            }
        }
    }

    private void E() {
        if ((this.f2062b & 4) == 0) {
            this.f2061a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f2061a;
        Drawable drawable = this.f2067g;
        if (drawable == null) {
            drawable = this.f2077q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void F() {
        Drawable drawable;
        int i11 = this.f2062b;
        if ((i11 & 2) == 0) {
            drawable = null;
        } else if ((i11 & 1) == 0 || (drawable = this.f2066f) == null) {
            drawable = this.f2065e;
        }
        this.f2061a.setLogo(drawable);
    }

    private int t() {
        if (this.f2061a.getNavigationIcon() == null) {
            return 11;
        }
        this.f2077q = this.f2061a.getNavigationIcon();
        return 15;
    }

    public void A(CharSequence charSequence) {
        this.f2070j = charSequence;
        if ((this.f2062b & 8) != 0) {
            this.f2061a.setSubtitle(charSequence);
        }
    }

    public void B(CharSequence charSequence) {
        this.f2068h = true;
        C(charSequence);
    }

    @Override // androidx.appcompat.widget.t
    public boolean a() {
        return this.f2061a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.t
    public void b(int i11) {
        View view;
        int i12 = this.f2062b ^ i11;
        this.f2062b = i11;
        if (i12 != 0) {
            if ((i12 & 4) != 0) {
                if ((i11 & 4) != 0) {
                    D();
                }
                E();
            }
            if ((i12 & 3) != 0) {
                F();
            }
            if ((i12 & 8) != 0) {
                if ((i11 & 8) != 0) {
                    this.f2061a.setTitle(this.f2069i);
                    this.f2061a.setSubtitle(this.f2070j);
                } else {
                    this.f2061a.setTitle((CharSequence) null);
                    this.f2061a.setSubtitle((CharSequence) null);
                }
            }
            if ((i12 & 16) == 0 || (view = this.f2064d) == null) {
                return;
            }
            if ((i11 & 16) != 0) {
                this.f2061a.addView(view);
            } else {
                this.f2061a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.t
    public Menu c() {
        return this.f2061a.getMenu();
    }

    @Override // androidx.appcompat.widget.t
    public boolean canShowOverflowMenu() {
        return this.f2061a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.t
    public void collapseActionView() {
        this.f2061a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.t
    public int d() {
        return this.f2075o;
    }

    @Override // androidx.appcompat.widget.t
    public ViewPropertyAnimatorCompat e(int i11, long j11) {
        return ViewCompat.animate(this.f2061a).alpha(i11 == 0 ? 1.0f : 0.0f).setDuration(j11).setListener(new b(i11));
    }

    @Override // androidx.appcompat.widget.t
    public boolean f() {
        return this.f2065e != null;
    }

    @Override // androidx.appcompat.widget.t
    public ViewGroup g() {
        return this.f2061a;
    }

    @Override // androidx.appcompat.widget.t
    public Context getContext() {
        return this.f2061a.getContext();
    }

    @Override // androidx.appcompat.widget.t
    public CharSequence getTitle() {
        return this.f2061a.getTitle();
    }

    @Override // androidx.appcompat.widget.t
    public void h(boolean z10) {
    }

    @Override // androidx.appcompat.widget.t
    public boolean hideOverflowMenu() {
        return this.f2061a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.t
    public void i() {
    }

    @Override // androidx.appcompat.widget.t
    public boolean isOverflowMenuShowPending() {
        return this.f2061a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.t
    public boolean isOverflowMenuShowing() {
        return this.f2061a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.t
    public void j(boolean z10) {
        this.f2061a.setCollapsible(z10);
    }

    @Override // androidx.appcompat.widget.t
    public void k() {
        this.f2061a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.t
    public void l(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f2063c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f2061a;
            if (parent == toolbar) {
                toolbar.removeView(this.f2063c);
            }
        }
        this.f2063c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f2075o != 2) {
            return;
        }
        this.f2061a.addView(scrollingTabContainerView, 0);
        Toolbar.f fVar = (Toolbar.f) this.f2063c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) fVar).width = -2;
        ((ViewGroup.MarginLayoutParams) fVar).height = -2;
        fVar.f1104a = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.t
    public void m(SparseArray sparseArray) {
        this.f2061a.saveHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.t
    public void n(int i11) {
        w(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    @Override // androidx.appcompat.widget.t
    public void o(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2) {
        this.f2061a.setMenuCallbacks(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.t
    public void p(SparseArray sparseArray) {
        this.f2061a.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.t
    public boolean q() {
        return this.f2066f != null;
    }

    @Override // androidx.appcompat.widget.t
    public int r() {
        return this.f2062b;
    }

    @Override // androidx.appcompat.widget.t
    public void s() {
    }

    @Override // androidx.appcompat.widget.t
    public void setIcon(int i11) {
        setIcon(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    @Override // androidx.appcompat.widget.t
    public void setIcon(Drawable drawable) {
        this.f2065e = drawable;
        F();
    }

    @Override // androidx.appcompat.widget.t
    public void setMenu(Menu menu, androidx.appcompat.view.menu.l.a aVar) {
        if (this.f2074n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f2061a.getContext());
            this.f2074n = actionMenuPresenter;
            actionMenuPresenter.r(R$id.action_menu_presenter);
        }
        this.f2074n.d(aVar);
        this.f2061a.setMenu((androidx.appcompat.view.menu.f) menu, this.f2074n);
    }

    @Override // androidx.appcompat.widget.t
    public void setMenuPrepared() {
        this.f2073m = true;
    }

    @Override // androidx.appcompat.widget.t
    public void setVisibility(int i11) {
        this.f2061a.setVisibility(i11);
    }

    @Override // androidx.appcompat.widget.t
    public void setWindowCallback(Window.Callback callback) {
        this.f2072l = callback;
    }

    @Override // androidx.appcompat.widget.t
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f2068h) {
            return;
        }
        C(charSequence);
    }

    @Override // androidx.appcompat.widget.t
    public boolean showOverflowMenu() {
        return this.f2061a.showOverflowMenu();
    }

    public void u(View view) {
        View view2 = this.f2064d;
        if (view2 != null && (this.f2062b & 16) != 0) {
            this.f2061a.removeView(view2);
        }
        this.f2064d = view;
        if (view == null || (this.f2062b & 16) == 0) {
            return;
        }
        this.f2061a.addView(view);
    }

    public void v(int i11) {
        if (i11 == this.f2076p) {
            return;
        }
        this.f2076p = i11;
        if (TextUtils.isEmpty(this.f2061a.getNavigationContentDescription())) {
            x(this.f2076p);
        }
    }

    public void w(Drawable drawable) {
        this.f2066f = drawable;
        F();
    }

    public void x(int i11) {
        y(i11 == 0 ? null : getContext().getString(i11));
    }

    public void y(CharSequence charSequence) {
        this.f2071k = charSequence;
        D();
    }

    public void z(Drawable drawable) {
        this.f2067g = drawable;
        E();
    }
}

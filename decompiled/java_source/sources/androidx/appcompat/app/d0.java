package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class d0 extends androidx.appcompat.app.a implements ActionBarOverlayLayout.b {
    private static final Interpolator E = new AccelerateInterpolator();
    private static final Interpolator F = new DecelerateInterpolator();
    boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f1126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Activity f1128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarOverlayLayout f1129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ActionBarContainer f1130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    androidx.appcompat.widget.t f1131f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ActionBarContextView f1132g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    View f1133h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ScrollingTabContainerView f1134i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f1137l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    d f1138m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    androidx.appcompat.view.b f1139n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    androidx.appcompat.view.b.a f1140o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f1141p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f1143r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f1146u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f1147v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1148w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    androidx.appcompat.view.h f1150y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f1151z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList f1135j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1136k = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList f1142q = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1144s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f1145t = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1149x = true;
    final ViewPropertyAnimatorListener B = new a();
    final ViewPropertyAnimatorListener C = new b();
    final ViewPropertyAnimatorUpdateListener D = new c();

    class a extends ViewPropertyAnimatorListenerAdapter {
        a() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            View view2;
            d0 d0Var = d0.this;
            if (d0Var.f1145t && (view2 = d0Var.f1133h) != null) {
                view2.setTranslationY(0.0f);
                d0.this.f1130e.setTranslationY(0.0f);
            }
            d0.this.f1130e.setVisibility(8);
            d0.this.f1130e.setTransitioning(false);
            d0 d0Var2 = d0.this;
            d0Var2.f1150y = null;
            d0Var2.y();
            ActionBarOverlayLayout actionBarOverlayLayout = d0.this.f1129d;
            if (actionBarOverlayLayout != null) {
                ViewCompat.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    }

    class b extends ViewPropertyAnimatorListenerAdapter {
        b() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            d0 d0Var = d0.this;
            d0Var.f1150y = null;
            d0Var.f1130e.requestLayout();
        }
    }

    class c implements ViewPropertyAnimatorUpdateListener {
        c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) d0.this.f1130e.getParent()).invalidate();
        }
    }

    public class d extends androidx.appcompat.view.b implements androidx.appcompat.view.menu.f.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Context f1155c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final androidx.appcompat.view.menu.f f1156d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.appcompat.view.b.a f1157e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WeakReference f1158f;

        public d(Context context, androidx.appcompat.view.b.a aVar) {
            this.f1155c = context;
            this.f1157e = aVar;
            androidx.appcompat.view.menu.f fVarX = new androidx.appcompat.view.menu.f(context).X(1);
            this.f1156d = fVarX;
            fVarX.W(this);
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            androidx.appcompat.view.b.a aVar = this.f1157e;
            if (aVar != null) {
                return aVar.c(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void b(androidx.appcompat.view.menu.f fVar) {
            if (this.f1157e == null) {
                return;
            }
            k();
            d0.this.f1132g.showOverflowMenu();
        }

        @Override // androidx.appcompat.view.b
        public void c() {
            d0 d0Var = d0.this;
            if (d0Var.f1138m != this) {
                return;
            }
            if (d0.x(d0Var.f1146u, d0Var.f1147v, false)) {
                this.f1157e.a(this);
            } else {
                d0 d0Var2 = d0.this;
                d0Var2.f1139n = this;
                d0Var2.f1140o = this.f1157e;
            }
            this.f1157e = null;
            d0.this.w(false);
            d0.this.f1132g.closeMode();
            d0 d0Var3 = d0.this;
            d0Var3.f1129d.setHideOnContentScrollEnabled(d0Var3.A);
            d0.this.f1138m = null;
        }

        @Override // androidx.appcompat.view.b
        public View d() {
            WeakReference weakReference = this.f1158f;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.b
        public Menu e() {
            return this.f1156d;
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater f() {
            return new androidx.appcompat.view.g(this.f1155c);
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return d0.this.f1132g.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence i() {
            return d0.this.f1132g.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public void k() {
            if (d0.this.f1138m != this) {
                return;
            }
            this.f1156d.i0();
            try {
                this.f1157e.d(this, this.f1156d);
            } finally {
                this.f1156d.h0();
            }
        }

        @Override // androidx.appcompat.view.b
        public boolean l() {
            return d0.this.f1132g.isTitleOptional();
        }

        @Override // androidx.appcompat.view.b
        public void m(View view) {
            d0.this.f1132g.setCustomView(view);
            this.f1158f = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.b
        public void n(int i11) {
            o(d0.this.f1126a.getResources().getString(i11));
        }

        @Override // androidx.appcompat.view.b
        public void o(CharSequence charSequence) {
            d0.this.f1132g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void q(int i11) {
            r(d0.this.f1126a.getResources().getString(i11));
        }

        @Override // androidx.appcompat.view.b
        public void r(CharSequence charSequence) {
            d0.this.f1132g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void s(boolean z10) {
            super.s(z10);
            d0.this.f1132g.setTitleOptional(z10);
        }

        public boolean t() {
            this.f1156d.i0();
            try {
                return this.f1157e.b(this, this.f1156d);
            } finally {
                this.f1156d.h0();
            }
        }
    }

    public d0(Activity activity, boolean z10) {
        this.f1128c = activity;
        View decorView = activity.getWindow().getDecorView();
        E(decorView);
        if (z10) {
            return;
        }
        this.f1133h = decorView.findViewById(R.id.content);
    }

    public d0(Dialog dialog) {
        E(dialog.getWindow().getDecorView());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private androidx.appcompat.widget.t B(View view) {
        if (view instanceof androidx.appcompat.widget.t) {
            return (androidx.appcompat.widget.t) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't make a decor toolbar out of ");
        sb2.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb2.toString());
    }

    private void D() {
        if (this.f1148w) {
            this.f1148w = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f1129d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            N(false);
        }
    }

    private void E(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R$id.decor_content_parent);
        this.f1129d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f1131f = B(view.findViewById(R$id.action_bar));
        this.f1132g = (ActionBarContextView) view.findViewById(R$id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R$id.action_bar_container);
        this.f1130e = actionBarContainer;
        androidx.appcompat.widget.t tVar = this.f1131f;
        if (tVar == null || this.f1132g == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f1126a = tVar.getContext();
        boolean z10 = (this.f1131f.r() & 4) != 0;
        if (z10) {
            this.f1137l = true;
        }
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(this.f1126a);
        K(aVarB.a() || z10);
        I(aVarB.g());
        TypedArray typedArrayObtainStyledAttributes = this.f1126a.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.ActionBar_hideOnContentScroll, false)) {
            J(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            H(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void I(boolean z10) {
        this.f1143r = z10;
        if (z10) {
            this.f1130e.setTabContainer(null);
            this.f1131f.l(this.f1134i);
        } else {
            this.f1131f.l(null);
            this.f1130e.setTabContainer(this.f1134i);
        }
        boolean z11 = C() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f1134i;
        if (scrollingTabContainerView != null) {
            if (z11) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f1129d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f1131f.j(!this.f1143r && z11);
        this.f1129d.setHasNonEmbeddedTabs(!this.f1143r && z11);
    }

    private boolean L() {
        return this.f1130e.isLaidOut();
    }

    private void M() {
        if (this.f1148w) {
            return;
        }
        this.f1148w = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1129d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        N(false);
    }

    private void N(boolean z10) {
        if (x(this.f1146u, this.f1147v, this.f1148w)) {
            if (this.f1149x) {
                return;
            }
            this.f1149x = true;
            A(z10);
            return;
        }
        if (this.f1149x) {
            this.f1149x = false;
            z(z10);
        }
    }

    static boolean x(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            return true;
        }
        return (z10 || z11) ? false : true;
    }

    public void A(boolean z10) {
        View view;
        View view2;
        androidx.appcompat.view.h hVar = this.f1150y;
        if (hVar != null) {
            hVar.a();
        }
        this.f1130e.setVisibility(0);
        if (this.f1144s == 0 && (this.f1151z || z10)) {
            this.f1130e.setTranslationY(0.0f);
            float f11 = -this.f1130e.getHeight();
            if (z10) {
                int[] iArr = {0, 0};
                this.f1130e.getLocationInWindow(iArr);
                f11 -= iArr[1];
            }
            this.f1130e.setTranslationY(f11);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f1130e).translationY(0.0f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.D);
            hVar2.c(viewPropertyAnimatorCompatTranslationY);
            if (this.f1145t && (view2 = this.f1133h) != null) {
                view2.setTranslationY(f11);
                hVar2.c(ViewCompat.animate(this.f1133h).translationY(0.0f));
            }
            hVar2.f(F);
            hVar2.e(250L);
            hVar2.g(this.C);
            this.f1150y = hVar2;
            hVar2.h();
        } else {
            this.f1130e.setAlpha(1.0f);
            this.f1130e.setTranslationY(0.0f);
            if (this.f1145t && (view = this.f1133h) != null) {
                view.setTranslationY(0.0f);
            }
            this.C.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1129d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    public int C() {
        return this.f1131f.d();
    }

    public void F(boolean z10) {
        G(z10 ? 4 : 0, 4);
    }

    public void G(int i11, int i12) {
        int iR = this.f1131f.r();
        if ((i12 & 4) != 0) {
            this.f1137l = true;
        }
        this.f1131f.b((i11 & i12) | ((~i12) & iR));
    }

    public void H(float f11) {
        ViewCompat.setElevation(this.f1130e, f11);
    }

    public void J(boolean z10) {
        if (z10 && !this.f1129d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.A = z10;
        this.f1129d.setHideOnContentScrollEnabled(z10);
    }

    public void K(boolean z10) {
        this.f1131f.h(z10);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.b
    public void a() {
        if (this.f1147v) {
            this.f1147v = false;
            N(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.b
    public void b(int i11) {
        this.f1144s = i11;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.b
    public void c() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.b
    public void d(boolean z10) {
        this.f1145t = z10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.b
    public void e() {
        if (this.f1147v) {
            return;
        }
        this.f1147v = true;
        N(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.b
    public void f() {
        androidx.appcompat.view.h hVar = this.f1150y;
        if (hVar != null) {
            hVar.a();
            this.f1150y = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        androidx.appcompat.widget.t tVar = this.f1131f;
        if (tVar == null || !tVar.a()) {
            return false;
        }
        this.f1131f.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f1141p) {
            return;
        }
        this.f1141p = z10;
        if (this.f1142q.size() <= 0) {
            return;
        }
        android.support.v4.media.session.c.a(this.f1142q.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f1131f.r();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        if (this.f1127b == null) {
            TypedValue typedValue = new TypedValue();
            this.f1126a.getTheme().resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                this.f1127b = new ContextThemeWrapper(this.f1126a, i11);
            } else {
                this.f1127b = this.f1126a;
            }
        }
        return this.f1127b;
    }

    @Override // androidx.appcompat.app.a
    public void l() {
        if (this.f1146u) {
            return;
        }
        this.f1146u = true;
        N(false);
    }

    @Override // androidx.appcompat.app.a
    public void n(Configuration configuration) {
        I(androidx.appcompat.view.a.b(this.f1126a).g());
    }

    @Override // androidx.appcompat.app.a
    public boolean p(int i11, KeyEvent keyEvent) {
        Menu menuE;
        d dVar = this.f1138m;
        if (dVar == null || (menuE = dVar.e()) == null) {
            return false;
        }
        menuE.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuE.performShortcut(i11, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
        if (this.f1137l) {
            return;
        }
        F(z10);
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z10) {
        androidx.appcompat.view.h hVar;
        this.f1151z = z10;
        if (z10 || (hVar = this.f1150y) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public void u(CharSequence charSequence) {
        this.f1131f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b v(androidx.appcompat.view.b.a aVar) {
        d dVar = this.f1138m;
        if (dVar != null) {
            dVar.c();
        }
        this.f1129d.setHideOnContentScrollEnabled(false);
        this.f1132g.killMode();
        d dVar2 = new d(this.f1132g.getContext(), aVar);
        if (!dVar2.t()) {
            return null;
        }
        this.f1138m = dVar2;
        dVar2.k();
        this.f1132g.initForMode(dVar2);
        w(true);
        return dVar2;
    }

    public void w(boolean z10) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatE;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatE2;
        if (z10) {
            M();
        } else {
            D();
        }
        if (!L()) {
            if (z10) {
                this.f1131f.setVisibility(4);
                this.f1132g.setVisibility(0);
                return;
            } else {
                this.f1131f.setVisibility(0);
                this.f1132g.setVisibility(8);
                return;
            }
        }
        if (z10) {
            viewPropertyAnimatorCompatE2 = this.f1131f.e(4, 100L);
            viewPropertyAnimatorCompatE = this.f1132g.setupAnimatorToVisibility(0, 200L);
        } else {
            viewPropertyAnimatorCompatE = this.f1131f.e(0, 200L);
            viewPropertyAnimatorCompatE2 = this.f1132g.setupAnimatorToVisibility(8, 100L);
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.d(viewPropertyAnimatorCompatE2, viewPropertyAnimatorCompatE);
        hVar.h();
    }

    void y() {
        androidx.appcompat.view.b.a aVar = this.f1140o;
        if (aVar != null) {
            aVar.a(this.f1139n);
            this.f1139n = null;
            this.f1140o = null;
        }
    }

    public void z(boolean z10) {
        View view;
        androidx.appcompat.view.h hVar = this.f1150y;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f1144s != 0 || (!this.f1151z && !z10)) {
            this.B.onAnimationEnd(null);
            return;
        }
        this.f1130e.setAlpha(1.0f);
        this.f1130e.setTransitioning(true);
        androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
        float f11 = -this.f1130e.getHeight();
        if (z10) {
            int[] iArr = {0, 0};
            this.f1130e.getLocationInWindow(iArr);
            f11 -= iArr[1];
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f1130e).translationY(f11);
        viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.D);
        hVar2.c(viewPropertyAnimatorCompatTranslationY);
        if (this.f1145t && (view = this.f1133h) != null) {
            hVar2.c(ViewCompat.animate(view).translationY(f11));
        }
        hVar2.f(E);
        hVar2.e(250L);
        hVar2.g(this.B);
        this.f1150y = hVar2;
        hVar2.h();
    }
}

package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import androidx.appcompat.widget.MenuPopupWindow;

/* JADX INFO: loaded from: classes.dex */
final class p extends j implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, l, View.OnKeyListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f1521v = R$layout.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f1523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f1524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f1525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1526f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f1527g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f1528h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final MenuPopupWindow f1529i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private PopupWindow.OnDismissListener f1532l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f1533m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    View f1534n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private l.a f1535o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ViewTreeObserver f1536p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f1537q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f1538r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1539s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f1541u;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f1530j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View.OnAttachStateChangeListener f1531k = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1540t = 0;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!p.this.a() || p.this.f1529i.A()) {
                return;
            }
            View view = p.this.f1534n;
            if (view == null || !view.isShown()) {
                p.this.dismiss();
            } else {
                p.this.f1529i.show();
            }
        }
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = p.this.f1536p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    p.this.f1536p = view.getViewTreeObserver();
                }
                p pVar = p.this;
                pVar.f1536p.removeGlobalOnLayoutListener(pVar.f1530j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public p(Context context, f fVar, View view, int i11, int i12, boolean z10) {
        this.f1522b = context;
        this.f1523c = fVar;
        this.f1525e = z10;
        this.f1524d = new e(fVar, LayoutInflater.from(context), z10, f1521v);
        this.f1527g = i11;
        this.f1528h = i12;
        Resources resources = context.getResources();
        this.f1526f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.f1533m = view;
        this.f1529i = new MenuPopupWindow(context, null, i11, i12);
        fVar.c(this, context);
    }

    private boolean A() {
        View view;
        if (a()) {
            return true;
        }
        if (this.f1537q || (view = this.f1533m) == null) {
            return false;
        }
        this.f1534n = view;
        this.f1529i.J(this);
        this.f1529i.K(this);
        this.f1529i.I(true);
        View view2 = this.f1534n;
        boolean z10 = this.f1536p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f1536p = viewTreeObserver;
        if (z10) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1530j);
        }
        view2.addOnAttachStateChangeListener(this.f1531k);
        this.f1529i.C(view2);
        this.f1529i.F(this.f1540t);
        if (!this.f1538r) {
            this.f1539s = j.p(this.f1524d, null, this.f1522b, this.f1526f);
            this.f1538r = true;
        }
        this.f1529i.E(this.f1539s);
        this.f1529i.H(2);
        this.f1529i.G(n());
        this.f1529i.show();
        ListView listViewO = this.f1529i.o();
        listViewO.setOnKeyListener(this);
        if (this.f1541u && this.f1523c.z() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1522b).inflate(R$layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewO, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f1523c.z());
            }
            frameLayout.setEnabled(false);
            listViewO.addHeaderView(frameLayout, null, false);
        }
        this.f1529i.m(this.f1524d);
        this.f1529i.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a() {
        return !this.f1537q && this.f1529i.a();
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(f fVar, boolean z10) {
        if (fVar != this.f1523c) {
            return;
        }
        dismiss();
        l.a aVar = this.f1535o;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void d(l.a aVar) {
        this.f1535o = aVar;
    }

    @Override // androidx.appcompat.view.menu.o
    public void dismiss() {
        if (a()) {
            this.f1529i.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void e(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean f(q qVar) {
        if (qVar.hasVisibleItems()) {
            k kVar = new k(this.f1522b, qVar, this.f1534n, this.f1525e, this.f1527g, this.f1528h);
            kVar.j(this.f1535o);
            kVar.g(j.y(qVar));
            kVar.i(this.f1532l);
            this.f1532l = null;
            this.f1523c.e(false);
            int iC = this.f1529i.c();
            int iL = this.f1529i.l();
            if ((Gravity.getAbsoluteGravity(this.f1540t, this.f1533m.getLayoutDirection()) & 7) == 5) {
                iC += this.f1533m.getWidth();
            }
            if (kVar.n(iC, iL)) {
                l.a aVar = this.f1535o;
                if (aVar == null) {
                    return true;
                }
                aVar.c(qVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public Parcelable g() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.l
    public void h(boolean z10) {
        this.f1538r = false;
        e eVar = this.f1524d;
        if (eVar != null) {
            eVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.j
    public void l(f fVar) {
    }

    @Override // androidx.appcompat.view.menu.o
    public ListView o() {
        return this.f1529i.o();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f1537q = true;
        this.f1523c.close();
        ViewTreeObserver viewTreeObserver = this.f1536p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1536p = this.f1534n.getViewTreeObserver();
            }
            this.f1536p.removeGlobalOnLayoutListener(this.f1530j);
            this.f1536p = null;
        }
        this.f1534n.removeOnAttachStateChangeListener(this.f1531k);
        PopupWindow.OnDismissListener onDismissListener = this.f1532l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i11, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i11 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.j
    public void q(View view) {
        this.f1533m = view;
    }

    @Override // androidx.appcompat.view.menu.j
    public void s(boolean z10) {
        this.f1524d.d(z10);
    }

    @Override // androidx.appcompat.view.menu.o
    public void show() {
        if (!A()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.j
    public void t(int i11) {
        this.f1540t = i11;
    }

    @Override // androidx.appcompat.view.menu.j
    public void u(int i11) {
        this.f1529i.e(i11);
    }

    @Override // androidx.appcompat.view.menu.j
    public void v(PopupWindow.OnDismissListener onDismissListener) {
        this.f1532l = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.j
    public void w(boolean z10) {
        this.f1541u = z10;
    }

    @Override // androidx.appcompat.view.menu.j
    public void x(int i11) {
        this.f1529i.i(i11);
    }
}

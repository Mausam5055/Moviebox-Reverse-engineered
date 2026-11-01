package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.appcompat.widget.a0;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class CascadingMenuPopup extends j implements l, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int B = R$layout.abc_cascading_menu_item_layout;
    boolean A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f1341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Handler f1342g;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f1350o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    View f1351p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f1353r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1354s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1355t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1356u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1358w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private l.a f1359x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ViewTreeObserver f1360y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private PopupWindow.OnDismissListener f1361z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f1343h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final List f1344i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f1345j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View.OnAttachStateChangeListener f1346k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a0 f1347l = new a0() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.a0
        public void d(final f fVar, final MenuItem menuItem) {
            CascadingMenuPopup.this.f1342g.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.f1344i.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    i11 = -1;
                    break;
                } else if (fVar == ((c) CascadingMenuPopup.this.f1344i.get(i11)).f1366b) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 == -1) {
                return;
            }
            int i12 = i11 + 1;
            final c cVar = i12 < CascadingMenuPopup.this.f1344i.size() ? (c) CascadingMenuPopup.this.f1344i.get(i12) : null;
            CascadingMenuPopup.this.f1342g.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public void run() {
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        CascadingMenuPopup.this.A = true;
                        cVar2.f1366b.e(false);
                        CascadingMenuPopup.this.A = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        fVar.O(menuItem, 4);
                    }
                }
            }, fVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.a0
        public void n(f fVar, MenuItem menuItem) {
            CascadingMenuPopup.this.f1342g.removeCallbacksAndMessages(fVar);
        }
    };

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f1348m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f1349n = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f1357v = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1352q = E();

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.a() || CascadingMenuPopup.this.f1344i.size() <= 0 || ((c) CascadingMenuPopup.this.f1344i.get(0)).f1365a.A()) {
                return;
            }
            View view = CascadingMenuPopup.this.f1351p;
            if (view == null || !view.isShown()) {
                CascadingMenuPopup.this.dismiss();
                return;
            }
            Iterator it = CascadingMenuPopup.this.f1344i.iterator();
            while (it.hasNext()) {
                ((c) it.next()).f1365a.show();
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
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.f1360y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.f1360y = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.f1360y.removeGlobalOnLayoutListener(cascadingMenuPopup.f1345j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f1365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final f f1366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f1367c;

        public c(MenuPopupWindow menuPopupWindow, f fVar, int i11) {
            this.f1365a = menuPopupWindow;
            this.f1366b = fVar;
            this.f1367c = i11;
        }

        public ListView a() {
            return this.f1365a.o();
        }
    }

    public CascadingMenuPopup(Context context, View view, int i11, int i12, boolean z10) {
        this.f1337b = context;
        this.f1350o = view;
        this.f1339d = i11;
        this.f1340e = i12;
        this.f1341f = z10;
        Resources resources = context.getResources();
        this.f1338c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.f1342g = new Handler();
    }

    private MenuPopupWindow A() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f1337b, null, this.f1339d, this.f1340e);
        menuPopupWindow.T(this.f1347l);
        menuPopupWindow.K(this);
        menuPopupWindow.J(this);
        menuPopupWindow.C(this.f1350o);
        menuPopupWindow.F(this.f1349n);
        menuPopupWindow.I(true);
        menuPopupWindow.H(2);
        return menuPopupWindow;
    }

    private int B(f fVar) {
        int size = this.f1344i.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (fVar == ((c) this.f1344i.get(i11)).f1366b) {
                return i11;
            }
        }
        return -1;
    }

    private MenuItem C(f fVar, f fVar2) {
        int size = fVar.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = fVar.getItem(i11);
            if (item.hasSubMenu() && fVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View D(c cVar, f fVar) {
        e eVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemC = C(cVar.f1366b, fVar);
        if (menuItemC == null) {
            return null;
        }
        ListView listViewA = cVar.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i11 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            eVar = (e) headerViewListAdapter.getWrappedAdapter();
        } else {
            eVar = (e) adapter;
            headersCount = 0;
        }
        int count = eVar.getCount();
        while (true) {
            if (i11 >= count) {
                i11 = -1;
                break;
            }
            if (menuItemC == eVar.getItem(i11)) {
                break;
            }
            i11++;
        }
        if (i11 != -1 && (firstVisiblePosition = (i11 + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int E() {
        return this.f1350o.getLayoutDirection() == 1 ? 0 : 1;
    }

    private int F(int i11) {
        List list = this.f1344i;
        ListView listViewA = ((c) list.get(list.size() - 1)).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f1351p.getWindowVisibleDisplayFrame(rect);
        if (this.f1352q == 1) {
            return (iArr[0] + listViewA.getWidth()) + i11 > rect.right ? 0 : 1;
        }
        return iArr[0] - i11 < 0 ? 1 : 0;
    }

    private void G(f fVar) {
        c cVar;
        View viewD;
        int i11;
        int i12;
        int i13;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1337b);
        e eVar = new e(fVar, layoutInflaterFrom, this.f1341f, B);
        if (!a() && this.f1357v) {
            eVar.d(true);
        } else if (a()) {
            eVar.d(j.y(fVar));
        }
        int iP = j.p(eVar, null, this.f1337b, this.f1338c);
        MenuPopupWindow menuPopupWindowA = A();
        menuPopupWindowA.m(eVar);
        menuPopupWindowA.E(iP);
        menuPopupWindowA.F(this.f1349n);
        if (this.f1344i.size() > 0) {
            List list = this.f1344i;
            cVar = (c) list.get(list.size() - 1);
            viewD = D(cVar, fVar);
        } else {
            cVar = null;
            viewD = null;
        }
        if (viewD != null) {
            menuPopupWindowA.U(false);
            menuPopupWindowA.R(null);
            int iF = F(iP);
            boolean z10 = iF == 1;
            this.f1352q = iF;
            if (Build.VERSION.SDK_INT >= 26) {
                menuPopupWindowA.C(viewD);
                i12 = 0;
                i11 = 0;
            } else {
                int[] iArr = new int[2];
                this.f1350o.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewD.getLocationOnScreen(iArr2);
                if ((this.f1349n & 7) == 5) {
                    iArr[0] = iArr[0] + this.f1350o.getWidth();
                    iArr2[0] = iArr2[0] + viewD.getWidth();
                }
                i11 = iArr2[0] - iArr[0];
                i12 = iArr2[1] - iArr[1];
            }
            if ((this.f1349n & 5) == 5) {
                if (z10) {
                    i13 = i11 + iP;
                } else {
                    iP = viewD.getWidth();
                    i13 = i11 - iP;
                }
            } else if (z10) {
                iP = viewD.getWidth();
                i13 = i11 + iP;
            } else {
                i13 = i11 - iP;
            }
            menuPopupWindowA.e(i13);
            menuPopupWindowA.M(true);
            menuPopupWindowA.i(i12);
        } else {
            if (this.f1353r) {
                menuPopupWindowA.e(this.f1355t);
            }
            if (this.f1354s) {
                menuPopupWindowA.i(this.f1356u);
            }
            menuPopupWindowA.G(n());
        }
        this.f1344i.add(new c(menuPopupWindowA, fVar, this.f1352q));
        menuPopupWindowA.show();
        ListView listViewO = menuPopupWindowA.o();
        listViewO.setOnKeyListener(this);
        if (cVar == null && this.f1358w && fVar.z() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R$layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewO, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(fVar.z());
            listViewO.addHeaderView(frameLayout, null, false);
            menuPopupWindowA.show();
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a() {
        return this.f1344i.size() > 0 && ((c) this.f1344i.get(0)).f1365a.a();
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(f fVar, boolean z10) {
        int iB = B(fVar);
        if (iB < 0) {
            return;
        }
        int i11 = iB + 1;
        if (i11 < this.f1344i.size()) {
            ((c) this.f1344i.get(i11)).f1366b.e(false);
        }
        c cVar = (c) this.f1344i.remove(iB);
        cVar.f1366b.R(this);
        if (this.A) {
            cVar.f1365a.S(null);
            cVar.f1365a.D(0);
        }
        cVar.f1365a.dismiss();
        int size = this.f1344i.size();
        if (size > 0) {
            this.f1352q = ((c) this.f1344i.get(size - 1)).f1367c;
        } else {
            this.f1352q = E();
        }
        if (size != 0) {
            if (z10) {
                ((c) this.f1344i.get(0)).f1366b.e(false);
                return;
            }
            return;
        }
        dismiss();
        l.a aVar = this.f1359x;
        if (aVar != null) {
            aVar.b(fVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f1360y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f1360y.removeGlobalOnLayoutListener(this.f1345j);
            }
            this.f1360y = null;
        }
        this.f1351p.removeOnAttachStateChangeListener(this.f1346k);
        this.f1361z.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.l
    public void d(l.a aVar) {
        this.f1359x = aVar;
    }

    @Override // androidx.appcompat.view.menu.o
    public void dismiss() {
        int size = this.f1344i.size();
        if (size > 0) {
            c[] cVarArr = (c[]) this.f1344i.toArray(new c[size]);
            for (int i11 = size - 1; i11 >= 0; i11--) {
                c cVar = cVarArr[i11];
                if (cVar.f1365a.a()) {
                    cVar.f1365a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void e(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean f(q qVar) {
        for (c cVar : this.f1344i) {
            if (qVar == cVar.f1366b) {
                cVar.a().requestFocus();
                return true;
            }
        }
        if (!qVar.hasVisibleItems()) {
            return false;
        }
        l(qVar);
        l.a aVar = this.f1359x;
        if (aVar != null) {
            aVar.c(qVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.l
    public Parcelable g() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.l
    public void h(boolean z10) {
        Iterator it = this.f1344i.iterator();
        while (it.hasNext()) {
            j.z(((c) it.next()).a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.j
    public void l(f fVar) {
        fVar.c(this, this.f1337b);
        if (a()) {
            G(fVar);
        } else {
            this.f1343h.add(fVar);
        }
    }

    @Override // androidx.appcompat.view.menu.j
    protected boolean m() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.o
    public ListView o() {
        if (this.f1344i.isEmpty()) {
            return null;
        }
        List list = this.f1344i;
        return ((c) list.get(list.size() - 1)).a();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        c cVar;
        int size = this.f1344i.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                cVar = null;
                break;
            }
            cVar = (c) this.f1344i.get(i11);
            if (!cVar.f1365a.a()) {
                break;
            } else {
                i11++;
            }
        }
        if (cVar != null) {
            cVar.f1366b.e(false);
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
        if (this.f1350o != view) {
            this.f1350o = view;
            this.f1349n = GravityCompat.getAbsoluteGravity(this.f1348m, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.j
    public void s(boolean z10) {
        this.f1357v = z10;
    }

    @Override // androidx.appcompat.view.menu.o
    public void show() {
        if (a()) {
            return;
        }
        Iterator it = this.f1343h.iterator();
        while (it.hasNext()) {
            G((f) it.next());
        }
        this.f1343h.clear();
        View view = this.f1350o;
        this.f1351p = view;
        if (view != null) {
            boolean z10 = this.f1360y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f1360y = viewTreeObserver;
            if (z10) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f1345j);
            }
            this.f1351p.addOnAttachStateChangeListener(this.f1346k);
        }
    }

    @Override // androidx.appcompat.view.menu.j
    public void t(int i11) {
        if (this.f1348m != i11) {
            this.f1348m = i11;
            this.f1349n = GravityCompat.getAbsoluteGravity(i11, this.f1350o.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.j
    public void u(int i11) {
        this.f1353r = true;
        this.f1355t = i11;
    }

    @Override // androidx.appcompat.view.menu.j
    public void v(PopupWindow.OnDismissListener onDismissListener) {
        this.f1361z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.j
    public void w(boolean z10) {
        this.f1358w = z10;
    }

    @Override // androidx.appcompat.view.menu.j
    public void x(int i11) {
        this.f1354s = true;
        this.f1356u = i11;
    }
}

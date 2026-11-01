package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class j implements o, l, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Rect f1506a;

    j() {
    }

    protected static int p(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i11) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i12 = 0;
        int i13 = 0;
        View view = null;
        for (int i14 = 0; i14 < count; i14++) {
            int itemViewType = listAdapter.getItemViewType(i14);
            if (itemViewType != i13) {
                view = null;
                i13 = itemViewType;
            }
            if (viewGroup == null) {
                viewGroup = new FrameLayout(context);
            }
            view = listAdapter.getView(i14, view, viewGroup);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i11) {
                return i11;
            }
            if (measuredWidth > i12) {
                i12 = measuredWidth;
            }
        }
        return i12;
    }

    protected static boolean y(f fVar) {
        int size = fVar.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = fVar.getItem(i11);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    protected static e z(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (e) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (e) listAdapter;
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean c(f fVar, h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean j(f fVar, h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void k(Context context, f fVar) {
    }

    public abstract void l(f fVar);

    protected boolean m() {
        return true;
    }

    public Rect n() {
        return this.f1506a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        z(listAdapter).f1433a.P((MenuItem) listAdapter.getItem(i11), this, m() ? 0 : 4);
    }

    public abstract void q(View view);

    public void r(Rect rect) {
        this.f1506a = rect;
    }

    public abstract void s(boolean z10);

    public abstract void t(int i11);

    public abstract void u(int i11);

    public abstract void v(PopupWindow.OnDismissListener onDismissListener);

    public abstract void w(boolean z10);

    public abstract void x(int i11);
}

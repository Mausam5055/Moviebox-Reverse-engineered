package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R$layout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class d implements l, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f1421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LayoutInflater f1422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    f f1423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ExpandedMenuView f1424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private l.a f1428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    a f1429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1430j;

    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1431a = -1;

        public a() {
            a();
        }

        void a() {
            h hVarX = d.this.f1423c.x();
            if (hVarX != null) {
                ArrayList arrayListB = d.this.f1423c.B();
                int size = arrayListB.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (((h) arrayListB.get(i11)) == hVarX) {
                        this.f1431a = i11;
                        return;
                    }
                }
            }
            this.f1431a = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h getItem(int i11) {
            ArrayList arrayListB = d.this.f1423c.B();
            int i12 = i11 + d.this.f1425e;
            int i13 = this.f1431a;
            if (i13 >= 0 && i12 >= i13) {
                i12++;
            }
            return (h) arrayListB.get(i12);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = d.this.f1423c.B().size() - d.this.f1425e;
            return this.f1431a < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // android.widget.Adapter
        public View getView(int i11, View view, ViewGroup viewGroup) {
            if (view == null) {
                d dVar = d.this;
                view = dVar.f1422b.inflate(dVar.f1427g, viewGroup, false);
            }
            ((m.a) view).initialize(getItem(i11), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public d(int i11, int i12) {
        this.f1427g = i11;
        this.f1426f = i12;
    }

    public d(Context context, int i11) {
        this(i11, 0);
        this.f1421a = context;
        this.f1422b = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.f1429i == null) {
            this.f1429i = new a();
        }
        return this.f1429i;
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(f fVar, boolean z10) {
        l.a aVar = this.f1428h;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean c(f fVar, h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void d(l.a aVar) {
        this.f1428h = aVar;
    }

    @Override // androidx.appcompat.view.menu.l
    public void e(Parcelable parcelable) {
        m((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean f(q qVar) {
        if (!qVar.hasVisibleItems()) {
            return false;
        }
        new g(qVar).d(null);
        l.a aVar = this.f1428h;
        if (aVar == null) {
            return true;
        }
        aVar.c(qVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.l
    public Parcelable g() {
        if (this.f1424d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        n(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.l
    public int getId() {
        return this.f1430j;
    }

    @Override // androidx.appcompat.view.menu.l
    public void h(boolean z10) {
        a aVar = this.f1429i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean j(f fVar, h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void k(Context context, f fVar) {
        if (this.f1426f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f1426f);
            this.f1421a = contextThemeWrapper;
            this.f1422b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f1421a != null) {
            this.f1421a = context;
            if (this.f1422b == null) {
                this.f1422b = LayoutInflater.from(context);
            }
        }
        this.f1423c = fVar;
        a aVar = this.f1429i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public m l(ViewGroup viewGroup) {
        if (this.f1424d == null) {
            this.f1424d = (ExpandedMenuView) this.f1422b.inflate(R$layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f1429i == null) {
                this.f1429i = new a();
            }
            this.f1424d.setAdapter((ListAdapter) this.f1429i);
            this.f1424d.setOnItemClickListener(this);
        }
        return this.f1424d;
    }

    public void m(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f1424d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void n(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f1424d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
        this.f1423c.P(this.f1429i.getItem(i11), this, 0);
    }
}

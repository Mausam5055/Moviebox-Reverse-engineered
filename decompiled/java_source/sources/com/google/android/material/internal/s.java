package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class s implements androidx.appcompat.view.menu.l {
    private int A;
    int B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NavigationMenuView f29230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LinearLayout f29231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.appcompat.view.menu.l.a f29232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    androidx.appcompat.view.menu.f f29233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    c f29235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    LayoutInflater f29236g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ColorStateList f29238i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ColorStateList f29241l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ColorStateList f29242m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Drawable f29243n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    RippleDrawable f29244o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f29245p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f29246q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f29247r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f29248s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f29249t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f29250u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f29251v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f29252w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f29253x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f29255z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f29237h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f29239j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f29240k = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f29254y = true;
    private int C = -1;
    final View.OnClickListener D = new a();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z10 = true;
            s.this.a0(true);
            androidx.appcompat.view.menu.h itemData = ((NavigationMenuItemView) view).getItemData();
            s sVar = s.this;
            boolean zP = sVar.f29233d.P(itemData, sVar, 0);
            if (itemData != null && itemData.isCheckable() && zP) {
                s.this.f29235f.s(itemData);
            } else {
                z10 = false;
            }
            s.this.a0(false);
            if (z10) {
                s.this.h(false);
            }
        }
    }

    private static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    private class c extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ArrayList f29257a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.appcompat.view.menu.h f29258b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f29259c;

        class a extends AccessibilityDelegateCompat {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f29261a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f29262b;

            a(int i11, boolean z10) {
                this.f29261a = i11;
                this.f29262b = z10;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(c.this.h(this.f29261a), 1, 1, 1, this.f29262b, view.isSelected()));
            }
        }

        c() {
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int h(int i11) {
            int i12 = i11;
            for (int i13 = 0; i13 < i11; i13++) {
                if (s.this.f29235f.getItemViewType(i13) == 2 || s.this.f29235f.getItemViewType(i13) == 3) {
                    i12--;
                }
            }
            return i12;
        }

        private void i(int i11, int i12) {
            while (i11 < i12) {
                ((g) this.f29257a.get(i11)).f29267b = true;
                i11++;
            }
        }

        private void p() {
            if (this.f29259c) {
                return;
            }
            boolean z10 = true;
            this.f29259c = true;
            this.f29257a.clear();
            this.f29257a.add(new d());
            int size = s.this.f29233d.G().size();
            int i11 = -1;
            int i12 = 0;
            boolean z11 = false;
            int size2 = 0;
            while (i12 < size) {
                androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) s.this.f29233d.G().get(i12);
                if (hVar.isChecked()) {
                    s(hVar);
                }
                if (hVar.isCheckable()) {
                    hVar.t(false);
                }
                if (hVar.hasSubMenu()) {
                    SubMenu subMenu = hVar.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i12 != 0) {
                            this.f29257a.add(new f(s.this.B, 0));
                        }
                        this.f29257a.add(new g(hVar));
                        int size3 = this.f29257a.size();
                        int size4 = subMenu.size();
                        int i13 = 0;
                        boolean z12 = false;
                        while (i13 < size4) {
                            androidx.appcompat.view.menu.h hVar2 = (androidx.appcompat.view.menu.h) subMenu.getItem(i13);
                            if (hVar2.isVisible()) {
                                if (!z12 && hVar2.getIcon() != null) {
                                    z12 = z10;
                                }
                                if (hVar2.isCheckable()) {
                                    hVar2.t(false);
                                }
                                if (hVar.isChecked()) {
                                    s(hVar);
                                }
                                this.f29257a.add(new g(hVar2));
                            }
                            i13++;
                            z10 = true;
                        }
                        if (z12) {
                            i(size3, this.f29257a.size());
                        }
                    }
                } else {
                    int groupId = hVar.getGroupId();
                    if (groupId != i11) {
                        size2 = this.f29257a.size();
                        z11 = hVar.getIcon() != null;
                        if (i12 != 0) {
                            size2++;
                            ArrayList arrayList = this.f29257a;
                            int i14 = s.this.B;
                            arrayList.add(new f(i14, i14));
                        }
                    } else if (!z11 && hVar.getIcon() != null) {
                        i(size2, this.f29257a.size());
                        z11 = true;
                    }
                    g gVar = new g(hVar);
                    gVar.f29267b = z11;
                    this.f29257a.add(gVar);
                    i11 = groupId;
                }
                i12++;
                z10 = true;
            }
            this.f29259c = false;
        }

        private void r(View view, int i11, boolean z10) {
            ViewCompat.setAccessibilityDelegate(view, new a(i11, z10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f29257a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i11) {
            e eVar = (e) this.f29257a.get(i11);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        public Bundle j() {
            Bundle bundle = new Bundle();
            androidx.appcompat.view.menu.h hVar = this.f29258b;
            if (hVar != null) {
                bundle.putInt("android:menu:checked", hVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f29257a.size();
            for (int i11 = 0; i11 < size; i11++) {
                e eVar = (e) this.f29257a.get(i11);
                if (eVar instanceof g) {
                    androidx.appcompat.view.menu.h hVarA = ((g) eVar).a();
                    View actionView = hVarA != null ? hVarA.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(hVarA.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        public androidx.appcompat.view.menu.h k() {
            return this.f29258b;
        }

        int l() {
            int i11 = 0;
            for (int i12 = 0; i12 < s.this.f29235f.getItemCount(); i12++) {
                int itemViewType = s.this.f29235f.getItemViewType(i12);
                if (itemViewType == 0 || itemViewType == 1) {
                    i11++;
                }
            }
            return i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(l lVar, int i11) {
            int itemViewType = getItemViewType(i11);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) this.f29257a.get(i11);
                    lVar.itemView.setPadding(s.this.f29249t, fVar.b(), s.this.f29250u, fVar.a());
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) this.f29257a.get(i11)).a().getTitle());
                androidx.core.widget.m.q(textView, s.this.f29237h);
                textView.setPadding(s.this.f29251v, textView.getPaddingTop(), s.this.f29252w, textView.getPaddingBottom());
                ColorStateList colorStateList = s.this.f29238i;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                r(textView, i11, true);
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(s.this.f29242m);
            navigationMenuItemView.setTextAppearance(s.this.f29239j);
            ColorStateList colorStateList2 = s.this.f29241l;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = s.this.f29243n;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            RippleDrawable rippleDrawable = s.this.f29244o;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            g gVar = (g) this.f29257a.get(i11);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.f29267b);
            s sVar = s.this;
            int i12 = sVar.f29245p;
            int i13 = sVar.f29246q;
            navigationMenuItemView.setPadding(i12, i13, i12, i13);
            navigationMenuItemView.setIconPadding(s.this.f29247r);
            s sVar2 = s.this;
            if (sVar2.f29253x) {
                navigationMenuItemView.setIconSize(sVar2.f29248s);
            }
            navigationMenuItemView.setMaxLines(s.this.f29255z);
            navigationMenuItemView.initialize(gVar.a(), s.this.f29240k);
            r(navigationMenuItemView, i11, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public l onCreateViewHolder(ViewGroup viewGroup, int i11) {
            if (i11 == 0) {
                s sVar = s.this;
                return new i(sVar.f29236g, viewGroup, sVar.D);
            }
            if (i11 == 1) {
                return new k(s.this.f29236g, viewGroup);
            }
            if (i11 == 2) {
                return new j(s.this.f29236g, viewGroup);
            }
            if (i11 != 3) {
                return null;
            }
            return new b(s.this.f29231b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void onViewRecycled(l lVar) {
            if (lVar instanceof i) {
                ((NavigationMenuItemView) lVar.itemView).recycle();
            }
        }

        public void q(Bundle bundle) {
            androidx.appcompat.view.menu.h hVarA;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            androidx.appcompat.view.menu.h hVarA2;
            int i11 = bundle.getInt("android:menu:checked", 0);
            if (i11 != 0) {
                this.f29259c = true;
                int size = this.f29257a.size();
                for (int i12 = 0; i12 < size; i12++) {
                    e eVar = (e) this.f29257a.get(i12);
                    if ((eVar instanceof g) && (hVarA2 = ((g) eVar).a()) != null && hVarA2.getItemId() == i11) {
                        s(hVarA2);
                        break;
                    }
                }
                this.f29259c = false;
                p();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f29257a.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    e eVar2 = (e) this.f29257a.get(i13);
                    if ((eVar2 instanceof g) && (hVarA = ((g) eVar2).a()) != null && (actionView = hVarA.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(hVarA.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void s(androidx.appcompat.view.menu.h hVar) {
            if (this.f29258b == hVar || !hVar.isCheckable()) {
                return;
            }
            androidx.appcompat.view.menu.h hVar2 = this.f29258b;
            if (hVar2 != null) {
                hVar2.setChecked(false);
            }
            this.f29258b = hVar;
            hVar.setChecked(true);
        }

        public void t(boolean z10) {
            this.f29259c = z10;
        }

        public void u() {
            p();
            notifyDataSetChanged();
        }
    }

    private static class d implements e {
        d() {
        }
    }

    private interface e {
    }

    private static class f implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f29264a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f29265b;

        public f(int i11, int i12) {
            this.f29264a = i11;
            this.f29265b = i12;
        }

        public int a() {
            return this.f29265b;
        }

        public int b() {
            return this.f29264a;
        }
    }

    private static class g implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.appcompat.view.menu.h f29266a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f29267b;

        g(androidx.appcompat.view.menu.h hVar) {
            this.f29266a = hVar;
        }

        public androidx.appcompat.view.menu.h a() {
            return this.f29266a;
        }
    }

    private class h extends androidx.recyclerview.widget.o {
        h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.o, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(s.this.f29235f.l(), 1, false));
        }
    }

    private static class i extends l {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R$layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    private static class j extends l {
        public j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    private static class k extends l {
        public k(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    private static abstract class l extends RecyclerView.b0 {
        public l(View view) {
            super(view);
        }
    }

    private boolean C() {
        return q() > 0;
    }

    private void b0() {
        int i11 = (C() || !this.f29254y) ? 0 : this.A;
        NavigationMenuView navigationMenuView = this.f29230a;
        navigationMenuView.setPadding(0, i11, 0, navigationMenuView.getPaddingBottom());
    }

    public int A() {
        return this.f29252w;
    }

    public int B() {
        return this.f29251v;
    }

    public View D(int i11) {
        View viewInflate = this.f29236g.inflate(i11, (ViewGroup) this.f29231b, false);
        l(viewInflate);
        return viewInflate;
    }

    public void E(View view) {
        this.f29231b.removeView(view);
        if (C()) {
            return;
        }
        NavigationMenuView navigationMenuView = this.f29230a;
        navigationMenuView.setPadding(0, this.A, 0, navigationMenuView.getPaddingBottom());
    }

    public void F(boolean z10) {
        if (this.f29254y != z10) {
            this.f29254y = z10;
            b0();
        }
    }

    public void G(androidx.appcompat.view.menu.h hVar) {
        this.f29235f.s(hVar);
    }

    public void H(int i11) {
        this.f29250u = i11;
        h(false);
    }

    public void I(int i11) {
        this.f29249t = i11;
        h(false);
    }

    public void J(int i11) {
        this.f29234e = i11;
    }

    public void K(Drawable drawable) {
        this.f29243n = drawable;
        h(false);
    }

    public void L(RippleDrawable rippleDrawable) {
        this.f29244o = rippleDrawable;
        h(false);
    }

    public void M(int i11) {
        this.f29245p = i11;
        h(false);
    }

    public void N(int i11) {
        this.f29247r = i11;
        h(false);
    }

    public void O(int i11) {
        if (this.f29248s != i11) {
            this.f29248s = i11;
            this.f29253x = true;
            h(false);
        }
    }

    public void P(ColorStateList colorStateList) {
        this.f29242m = colorStateList;
        h(false);
    }

    public void Q(int i11) {
        this.f29255z = i11;
        h(false);
    }

    public void R(int i11) {
        this.f29239j = i11;
        h(false);
    }

    public void S(boolean z10) {
        this.f29240k = z10;
        h(false);
    }

    public void T(ColorStateList colorStateList) {
        this.f29241l = colorStateList;
        h(false);
    }

    public void U(int i11) {
        this.f29246q = i11;
        h(false);
    }

    public void V(int i11) {
        this.C = i11;
        NavigationMenuView navigationMenuView = this.f29230a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i11);
        }
    }

    public void W(ColorStateList colorStateList) {
        this.f29238i = colorStateList;
        h(false);
    }

    public void X(int i11) {
        this.f29252w = i11;
        h(false);
    }

    public void Y(int i11) {
        this.f29251v = i11;
        h(false);
    }

    public void Z(int i11) {
        this.f29237h = i11;
        h(false);
    }

    public void a0(boolean z10) {
        c cVar = this.f29235f;
        if (cVar != null) {
            cVar.t(z10);
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        androidx.appcompat.view.menu.l.a aVar = this.f29232c;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean c(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void e(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f29230a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f29235f.q(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f29231b.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean f(androidx.appcompat.view.menu.q qVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public Parcelable g() {
        Bundle bundle = new Bundle();
        if (this.f29230a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f29230a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f29235f;
        if (cVar != null) {
            bundle.putBundle("android:menu:adapter", cVar.j());
        }
        if (this.f29231b != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f29231b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.l
    public int getId() {
        return this.f29234e;
    }

    @Override // androidx.appcompat.view.menu.l
    public void h(boolean z10) {
        c cVar = this.f29235f;
        if (cVar != null) {
            cVar.u();
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean j(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void k(Context context, androidx.appcompat.view.menu.f fVar) {
        this.f29236g = LayoutInflater.from(context);
        this.f29233d = fVar;
        this.B = context.getResources().getDimensionPixelOffset(R$dimen.design_navigation_separator_vertical_padding);
    }

    public void l(View view) {
        this.f29231b.addView(view);
        NavigationMenuView navigationMenuView = this.f29230a;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void m(WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.A != systemWindowInsetTop) {
            this.A = systemWindowInsetTop;
            b0();
        }
        NavigationMenuView navigationMenuView = this.f29230a;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f29231b, windowInsetsCompat);
    }

    public androidx.appcompat.view.menu.h n() {
        return this.f29235f.k();
    }

    public int o() {
        return this.f29250u;
    }

    public int p() {
        return this.f29249t;
    }

    public int q() {
        return this.f29231b.getChildCount();
    }

    public View r(int i11) {
        return this.f29231b.getChildAt(i11);
    }

    public Drawable s() {
        return this.f29243n;
    }

    public int t() {
        return this.f29245p;
    }

    public int u() {
        return this.f29247r;
    }

    public int v() {
        return this.f29255z;
    }

    public ColorStateList w() {
        return this.f29241l;
    }

    public ColorStateList x() {
        return this.f29242m;
    }

    public int y() {
        return this.f29246q;
    }

    public androidx.appcompat.view.menu.m z(ViewGroup viewGroup) {
        if (this.f29230a == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f29236g.inflate(R$layout.design_navigation_menu, viewGroup, false);
            this.f29230a = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.f29230a));
            if (this.f29235f == null) {
                c cVar = new c();
                this.f29235f = cVar;
                cVar.setHasStableIds(true);
            }
            int i11 = this.C;
            if (i11 != -1) {
                this.f29230a.setOverScrollMode(i11);
            }
            LinearLayout linearLayout = (LinearLayout) this.f29236g.inflate(R$layout.design_navigation_item_header, (ViewGroup) this.f29230a, false);
            this.f29231b = linearLayout;
            ViewCompat.setImportantForAccessibility(linearLayout, 2);
            this.f29230a.setAdapter(this.f29235f);
        }
        return this.f29230a;
    }
}

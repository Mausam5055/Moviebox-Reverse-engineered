package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.core.view.ActionProvider;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements ActionProvider.SubUiVisibilityListener {
    OpenOverflowRunnable A;
    private b B;
    final e C;
    int D;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    c f1606k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Drawable f1607l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1608m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1609n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f1610o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f1611p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1612q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1613r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1614s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f1615t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f1616u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f1617v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1618w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final SparseBooleanArray f1619x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    d f1620y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    a f1621z;

    private class OpenOverflowRunnable implements Runnable {
        private d mPopup;

        public OpenOverflowRunnable(d dVar) {
            this.mPopup = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1410c != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1410c.d();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1416i;
            if (view != null && view.getWindowToken() != null && this.mPopup.m()) {
                ActionMenuPresenter.this.f1620y = this.mPopup;
            }
            ActionMenuPresenter.this.A = null;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int openSubMenuId;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.openSubMenuId);
        }
    }

    private class a extends androidx.appcompat.view.menu.k {
        public a(Context context, androidx.appcompat.view.menu.q qVar, View view) {
            super(context, qVar, view, false, R$attr.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.h) qVar.getItem()).l()) {
                View view2 = ActionMenuPresenter.this.f1606k;
                f(view2 == null ? (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1416i : view2);
            }
            j(ActionMenuPresenter.this.C);
        }

        @Override // androidx.appcompat.view.menu.k
        protected void e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f1621z = null;
            actionMenuPresenter.D = 0;
            super.e();
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.o a() {
            a aVar = ActionMenuPresenter.this.f1621z;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    private class c extends AppCompatImageView implements ActionMenuView.a {

        class a extends ForwardingListener {

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ ActionMenuPresenter f1625j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
                this.f1625j = actionMenuPresenter;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public androidx.appcompat.view.menu.o b() {
                d dVar = ActionMenuPresenter.this.f1620y;
                if (dVar == null) {
                    return null;
                }
                return dVar.c();
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public boolean c() {
                ActionMenuPresenter.this.N();
                return true;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public boolean d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.A != null) {
                    return false;
                }
                actionMenuPresenter.D();
                return true;
            }
        }

        public c(Context context) {
            super(context, null, R$attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            o0.a(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.N();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i11, int i12, int i13, int i14) {
            boolean frame = super.setFrame(i11, i12, i13, i14);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                a1.a.l(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class d extends androidx.appcompat.view.menu.k {
        public d(Context context, androidx.appcompat.view.menu.f fVar, View view, boolean z10) {
            super(context, fVar, view, z10, R$attr.actionOverflowMenuStyle);
            h(GravityCompat.END);
            j(ActionMenuPresenter.this.C);
        }

        @Override // androidx.appcompat.view.menu.k
        protected void e() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1410c != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1410c.close();
            }
            ActionMenuPresenter.this.f1620y = null;
            super.e();
        }
    }

    private class e implements androidx.appcompat.view.menu.l.a {
        e() {
        }

        @Override // androidx.appcompat.view.menu.l.a
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            if (fVar instanceof androidx.appcompat.view.menu.q) {
                fVar.F().e(false);
            }
            androidx.appcompat.view.menu.l.a aVarO = ActionMenuPresenter.this.o();
            if (aVarO != null) {
                aVarO.b(fVar, z10);
            }
        }

        @Override // androidx.appcompat.view.menu.l.a
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            if (fVar == ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1410c) {
                return false;
            }
            ActionMenuPresenter.this.D = ((androidx.appcompat.view.menu.q) fVar).getItem().getItemId();
            androidx.appcompat.view.menu.l.a aVarO = ActionMenuPresenter.this.o();
            if (aVarO != null) {
                return aVarO.c(fVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R$layout.abc_action_menu_layout, R$layout.abc_action_menu_item_layout);
        this.f1619x = new SparseBooleanArray();
        this.C = new e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View B(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f1416i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof androidx.appcompat.view.menu.m.a) && ((androidx.appcompat.view.menu.m.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean A() {
        return D() | E();
    }

    public Drawable C() {
        c cVar = this.f1606k;
        if (cVar != null) {
            return cVar.getDrawable();
        }
        if (this.f1608m) {
            return this.f1607l;
        }
        return null;
    }

    public boolean D() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.A;
        if (openOverflowRunnable != null && (obj = this.f1416i) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.A = null;
            return true;
        }
        d dVar = this.f1620y;
        if (dVar == null) {
            return false;
        }
        dVar.b();
        return true;
    }

    public boolean E() {
        a aVar = this.f1621z;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    public boolean F() {
        return this.A != null || G();
    }

    public boolean G() {
        d dVar = this.f1620y;
        return dVar != null && dVar.d();
    }

    public boolean H() {
        return this.f1609n;
    }

    public void I(Configuration configuration) {
        if (!this.f1614s) {
            this.f1613r = androidx.appcompat.view.a.b(this.f1409b).d();
        }
        androidx.appcompat.view.menu.f fVar = this.f1410c;
        if (fVar != null) {
            fVar.N(true);
        }
    }

    public void J(boolean z10) {
        this.f1617v = z10;
    }

    public void K(ActionMenuView actionMenuView) {
        this.f1416i = actionMenuView;
        actionMenuView.initialize(this.f1410c);
    }

    public void L(Drawable drawable) {
        c cVar = this.f1606k;
        if (cVar != null) {
            cVar.setImageDrawable(drawable);
        } else {
            this.f1608m = true;
            this.f1607l = drawable;
        }
    }

    public void M(boolean z10) {
        this.f1609n = z10;
        this.f1610o = true;
    }

    public boolean N() {
        androidx.appcompat.view.menu.f fVar;
        if (!this.f1609n || G() || (fVar = this.f1410c) == null || this.f1416i == null || this.A != null || fVar.B().isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new d(this.f1409b, this.f1410c, this.f1606k, true));
        this.A = openOverflowRunnable;
        ((View) this.f1416i).post(openOverflowRunnable);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.l
    public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        A();
        super.b(fVar, z10);
    }

    @Override // androidx.appcompat.view.menu.l
    public void e(Parcelable parcelable) {
        int i11;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof SavedState) && (i11 = ((SavedState) parcelable).openSubMenuId) > 0 && (menuItemFindItem = this.f1410c.findItem(i11)) != null) {
            f((androidx.appcompat.view.menu.q) menuItemFindItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.l
    public boolean f(androidx.appcompat.view.menu.q qVar) {
        boolean z10 = false;
        if (!qVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.q qVar2 = qVar;
        while (qVar2.j0() != this.f1410c) {
            qVar2 = (androidx.appcompat.view.menu.q) qVar2.j0();
        }
        View viewB = B(qVar2.getItem());
        if (viewB == null) {
            return false;
        }
        this.D = qVar.getItem().getItemId();
        int size = qVar.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = qVar.getItem(i11);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
        }
        a aVar = new a(this.f1409b, qVar, viewB);
        this.f1621z = aVar;
        aVar.g(z10);
        this.f1621z.k();
        super.f(qVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.l
    public Parcelable g() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.D;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.l
    public void h(boolean z10) {
        super.h(z10);
        ((View) this.f1416i).requestLayout();
        androidx.appcompat.view.menu.f fVar = this.f1410c;
        boolean z11 = false;
        if (fVar != null) {
            ArrayList arrayListU = fVar.u();
            int size = arrayListU.size();
            for (int i11 = 0; i11 < size; i11++) {
                ActionProvider actionProviderA = ((androidx.appcompat.view.menu.h) arrayListU.get(i11)).a();
                if (actionProviderA != null) {
                    actionProviderA.setSubUiVisibilityListener(this);
                }
            }
        }
        androidx.appcompat.view.menu.f fVar2 = this.f1410c;
        ArrayList arrayListB = fVar2 != null ? fVar2.B() : null;
        if (this.f1609n && arrayListB != null) {
            int size2 = arrayListB.size();
            if (size2 == 1) {
                z11 = !((androidx.appcompat.view.menu.h) arrayListB.get(0)).isActionViewExpanded();
            } else if (size2 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f1606k == null) {
                this.f1606k = new c(this.f1408a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1606k.getParent();
            if (viewGroup != this.f1416i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1606k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f1416i;
                actionMenuView.addView(this.f1606k, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            c cVar = this.f1606k;
            if (cVar != null) {
                Object parent = cVar.getParent();
                Object obj = this.f1416i;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f1606k);
                }
            }
        }
        ((ActionMenuView) this.f1416i).setOverflowReserved(this.f1609n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.appcompat.view.menu.h] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.l
    public boolean i() {
        ArrayList arrayListG;
        int size;
        int i11;
        int iG;
        ?? r11;
        ActionMenuPresenter actionMenuPresenter = this;
        androidx.appcompat.view.menu.f fVar = actionMenuPresenter.f1410c;
        View view = null;
        ?? r12 = 0;
        if (fVar != null) {
            arrayListG = fVar.G();
            size = arrayListG.size();
        } else {
            arrayListG = null;
            size = 0;
        }
        int i12 = actionMenuPresenter.f1613r;
        int i13 = actionMenuPresenter.f1612q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f1416i;
        boolean z10 = false;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) arrayListG.get(i16);
            if (hVar.o()) {
                i14++;
            } else if (hVar.n()) {
                i15++;
            } else {
                z10 = true;
            }
            if (actionMenuPresenter.f1617v && hVar.isActionViewExpanded()) {
                i12 = 0;
            }
        }
        if (actionMenuPresenter.f1609n && (z10 || i15 + i14 > i12)) {
            i12--;
        }
        int i17 = i12 - i14;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.f1619x;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.f1615t) {
            int i18 = actionMenuPresenter.f1618w;
            iG = i13 / i18;
            i11 = i18 + ((i13 % i18) / iG);
        } else {
            i11 = 0;
            iG = 0;
        }
        int i19 = 0;
        int i20 = 0;
        ?? r13 = actionMenuPresenter;
        while (i19 < size) {
            ?? r15 = (androidx.appcompat.view.menu.h) arrayListG.get(i19);
            if (r15.o()) {
                View viewP = r13.p(r15, view, viewGroup);
                if (r13.f1615t) {
                    iG -= ActionMenuView.g(viewP, i11, iG, iMakeMeasureSpec, r12);
                } else {
                    viewP.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewP.getMeasuredWidth();
                i13 -= measuredWidth;
                if (i20 == 0) {
                    i20 = measuredWidth;
                }
                int groupId = r15.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                r15.u(true);
                r11 = r12;
            } else if (r15.n()) {
                int groupId2 = r15.getGroupId();
                boolean z11 = sparseBooleanArray.get(groupId2);
                boolean z12 = (i17 > 0 || z11) && i13 > 0 && (!r13.f1615t || iG > 0);
                boolean z13 = z12;
                if (z12) {
                    View viewP2 = r13.p(r15, null, viewGroup);
                    if (r13.f1615t) {
                        int iG2 = ActionMenuView.g(viewP2, i11, iG, iMakeMeasureSpec, 0);
                        iG -= iG2;
                        if (iG2 == 0) {
                            z13 = false;
                        }
                    } else {
                        viewP2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z14 = z13;
                    int measuredWidth2 = viewP2.getMeasuredWidth();
                    i13 -= measuredWidth2;
                    if (i20 == 0) {
                        i20 = measuredWidth2;
                    }
                    z12 = z14 & (!r13.f1615t ? i13 + i20 <= 0 : i13 < 0);
                }
                if (z12 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z11) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i21 = 0; i21 < i19; i21++) {
                        androidx.appcompat.view.menu.h hVar2 = (androidx.appcompat.view.menu.h) arrayListG.get(i21);
                        if (hVar2.getGroupId() == groupId2) {
                            if (hVar2.l()) {
                                i17++;
                            }
                            hVar2.u(false);
                        }
                    }
                }
                if (z12) {
                    i17--;
                }
                r15.u(z12);
                r11 = 0;
            } else {
                r11 = r12;
                r15.u(r11);
            }
            i19++;
            r12 = r11;
            size = size;
            view = null;
            r13 = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.l
    public void k(Context context, androidx.appcompat.view.menu.f fVar) {
        super.k(context, fVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        if (!this.f1610o) {
            this.f1609n = aVarB.h();
        }
        if (!this.f1616u) {
            this.f1611p = aVarB.c();
        }
        if (!this.f1614s) {
            this.f1613r = aVarB.d();
        }
        int measuredWidth = this.f1611p;
        if (this.f1609n) {
            if (this.f1606k == null) {
                c cVar = new c(this.f1408a);
                this.f1606k = cVar;
                if (this.f1608m) {
                    cVar.setImageDrawable(this.f1607l);
                    this.f1607l = null;
                    this.f1608m = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1606k.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f1606k.getMeasuredWidth();
        } else {
            this.f1606k = null;
        }
        this.f1612q = measuredWidth;
        this.f1618w = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.b
    public void l(androidx.appcompat.view.menu.h hVar, androidx.appcompat.view.menu.m.a aVar) {
        aVar.initialize(hVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f1416i);
        if (this.B == null) {
            this.B = new b();
        }
        actionMenuItemView.setPopupCallback(this.B);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean n(ViewGroup viewGroup, int i11) {
        if (viewGroup.getChildAt(i11) == this.f1606k) {
            return false;
        }
        return super.n(viewGroup, i11);
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z10) {
        if (z10) {
            super.f(null);
            return;
        }
        androidx.appcompat.view.menu.f fVar = this.f1410c;
        if (fVar != null) {
            fVar.e(false);
        }
    }

    @Override // androidx.appcompat.view.menu.b
    public View p(androidx.appcompat.view.menu.h hVar, View view, ViewGroup viewGroup) {
        View actionView = hVar.getActionView();
        if (actionView == null || hVar.j()) {
            actionView = super.p(hVar, view, viewGroup);
        }
        actionView.setVisibility(hVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.m q(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.m mVar = this.f1416i;
        androidx.appcompat.view.menu.m mVarQ = super.q(viewGroup);
        if (mVar != mVarQ) {
            ((ActionMenuView) mVarQ).setPresenter(this);
        }
        return mVarQ;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean s(int i11, androidx.appcompat.view.menu.h hVar) {
        return hVar.l();
    }
}

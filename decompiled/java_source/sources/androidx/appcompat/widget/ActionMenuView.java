package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements androidx.appcompat.view.menu.f.b, androidx.appcompat.view.menu.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.appcompat.view.menu.f f1629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ActionMenuPresenter f1633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.appcompat.view.menu.l.a f1634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    androidx.appcompat.view.menu.f.a f1635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1636h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f1637i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1638j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1639k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    e f1640l;

    public interface a {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    private static class b implements androidx.appcompat.view.menu.l.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.l.a
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.l.a
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            return false;
        }
    }

    public static class c extends LinearLayoutCompat.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1643c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1644d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1645e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1646f;

        public c(int i11, int i12) {
            super(i11, i12);
            this.f1641a = false;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super((ViewGroup.LayoutParams) cVar);
            this.f1641a = cVar.f1641a;
        }
    }

    private class d implements androidx.appcompat.view.menu.f.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            e eVar = ActionMenuView.this.f1640l;
            return eVar != null && eVar.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void b(androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.f.a aVar = ActionMenuView.this.f1635g;
            if (aVar != null) {
                aVar.b(fVar);
            }
        }
    }

    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(@NonNull Context context) {
        this(context, null);
    }

    public ActionMenuView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f11 = context.getResources().getDisplayMetrics().density;
        this.f1638j = (int) (56.0f * f11);
        this.f1639k = (int) (f11 * 4.0f);
        this.f1630b = context;
        this.f1631c = 0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    static int g(View view, int i11, int i12, int i13, int i14) {
        int i15;
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i13) - i14, View.MeasureSpec.getMode(i13));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z10 = false;
        boolean z11 = actionMenuItemView != null && actionMenuItemView.hasText();
        if (i12 > 0) {
            i15 = 2;
            if (!z11 || i12 >= 2) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i12 * i11, Integer.MIN_VALUE), iMakeMeasureSpec);
                int measuredWidth = view.getMeasuredWidth();
                int i16 = measuredWidth / i11;
                if (measuredWidth % i11 != 0) {
                    i16++;
                }
                if (!z11 || i16 >= 2) {
                    i15 = i16;
                }
            } else {
                i15 = 0;
            }
        } else {
            i15 = 0;
        }
        if (!cVar.f1641a && z11) {
            z10 = true;
        }
        cVar.f1644d = z10;
        cVar.f1642b = i15;
        view.measure(View.MeasureSpec.makeMeasureSpec(i11 * i15, 1073741824), iMakeMeasureSpec);
        return i15;
    }

    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v14 */
    private void h(int i11, int i12) {
        boolean z10;
        int i13;
        int i14;
        boolean z11;
        ?? r14;
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i12, paddingTop, -2);
        int i15 = size - paddingLeft;
        int i16 = this.f1638j;
        int i17 = i15 / i16;
        int i18 = i15 % i16;
        if (i17 == 0) {
            setMeasuredDimension(i15, 0);
            return;
        }
        int i19 = i16 + (i18 / i17);
        int childCount = getChildCount();
        int iMax = 0;
        int i20 = 0;
        boolean z12 = false;
        int i21 = 0;
        int iMax2 = 0;
        int i22 = 0;
        long j11 = 0;
        while (i20 < childCount) {
            View childAt = getChildAt(i20);
            int i23 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z13 = childAt instanceof ActionMenuItemView;
                int i24 = i21 + 1;
                if (z13) {
                    int i25 = this.f1639k;
                    r14 = 0;
                    childAt.setPadding(i25, 0, i25, 0);
                } else {
                    r14 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f1646f = r14;
                cVar.f1643c = r14;
                cVar.f1642b = r14;
                cVar.f1644d = r14;
                ((LinearLayout.LayoutParams) cVar).leftMargin = r14;
                ((LinearLayout.LayoutParams) cVar).rightMargin = r14;
                cVar.f1645e = z13 && ((ActionMenuItemView) childAt).hasText();
                int iG = g(childAt, i19, cVar.f1641a ? 1 : i17, childMeasureSpec, paddingTop);
                iMax2 = Math.max(iMax2, iG);
                if (cVar.f1644d) {
                    i22++;
                }
                if (cVar.f1641a) {
                    z12 = true;
                }
                i17 -= iG;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iG == 1) {
                    j11 |= (long) (1 << i20);
                    iMax = iMax;
                }
                i21 = i24;
            }
            i20++;
            size2 = i23;
        }
        int i26 = size2;
        boolean z14 = z12 && i21 == 2;
        boolean z15 = false;
        while (true) {
            if (i22 <= 0 || i17 <= 0) {
                z10 = z15;
                i13 = iMax;
                break;
            }
            int i27 = Integer.MAX_VALUE;
            int i28 = 0;
            int i29 = 0;
            long j12 = 0;
            while (i29 < childCount) {
                boolean z16 = z15;
                c cVar2 = (c) getChildAt(i29).getLayoutParams();
                int i30 = iMax;
                if (cVar2.f1644d) {
                    int i31 = cVar2.f1642b;
                    if (i31 < i27) {
                        j12 = 1 << i29;
                        i27 = i31;
                        i28 = 1;
                    } else if (i31 == i27) {
                        i28++;
                        j12 |= 1 << i29;
                    }
                }
                i29++;
                iMax = i30;
                z15 = z16;
            }
            z10 = z15;
            i13 = iMax;
            j11 |= j12;
            if (i28 > i17) {
                break;
            }
            int i32 = i27 + 1;
            int i33 = 0;
            while (i33 < childCount) {
                View childAt2 = getChildAt(i33);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i34 = i15;
                int i35 = mode;
                long j13 = 1 << i33;
                if ((j12 & j13) == 0) {
                    if (cVar3.f1642b == i32) {
                        j11 |= j13;
                    }
                    z14 = z14;
                } else {
                    if (z14 && cVar3.f1645e && i17 == 1) {
                        int i36 = this.f1639k;
                        childAt2.setPadding(i36 + i19, 0, i36, 0);
                    }
                    cVar3.f1642b++;
                    cVar3.f1646f = true;
                    i17--;
                }
                i33++;
                mode = i35;
                i15 = i34;
                z14 = z14;
            }
            iMax = i13;
            z15 = true;
        }
        boolean z17 = !z12 && i21 == 1;
        if (i17 <= 0 || j11 == 0 || (i17 >= i21 - 1 && !z17 && iMax2 <= 1)) {
            i14 = 0;
            z11 = z10;
        } else {
            float fBitCount = Long.bitCount(j11);
            if (z17) {
                i14 = 0;
            } else {
                i14 = 0;
                if ((j11 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f1645e) {
                    fBitCount -= 0.5f;
                }
                int i37 = childCount - 1;
                if ((j11 & ((long) (1 << i37))) != 0 && !((c) getChildAt(i37).getLayoutParams()).f1645e) {
                    fBitCount -= 0.5f;
                }
            }
            int i38 = fBitCount > 0.0f ? (int) ((i17 * i19) / fBitCount) : i14;
            z11 = z10;
            for (int i39 = i14; i39 < childCount; i39++) {
                if ((j11 & ((long) (1 << i39))) != 0) {
                    View childAt3 = getChildAt(i39);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f1643c = i38;
                        cVar4.f1646f = true;
                        if (i39 == 0 && !cVar4.f1645e) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = (-i38) / 2;
                        }
                        z11 = true;
                    } else if (cVar4.f1641a) {
                        cVar4.f1643c = i38;
                        cVar4.f1646f = true;
                        ((LinearLayout.LayoutParams) cVar4).rightMargin = (-i38) / 2;
                        z11 = true;
                    } else {
                        if (i39 != 0) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = i38 / 2;
                        }
                        if (i39 != childCount - 1) {
                            ((LinearLayout.LayoutParams) cVar4).rightMargin = i38 / 2;
                        }
                    }
                }
            }
        }
        if (z11) {
            for (int i40 = i14; i40 < childCount; i40++) {
                View childAt4 = getChildAt(i40);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f1646f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f1642b * i19) + cVar5.f1643c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i15, mode != 1073741824 ? i13 : i26);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.f1633e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) cVar).gravity = 16;
        }
        return cVar;
    }

    protected boolean f(int i11) {
        boolean zNeedsDividerAfter = false;
        if (i11 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i11 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i11);
        if (i11 < getChildCount() && (childAt instanceof a)) {
            zNeedsDividerAfter = ((a) childAt).needsDividerAfter();
        }
        return (i11 <= 0 || !(childAt2 instanceof a)) ? zNeedsDividerAfter : zNeedsDividerAfter | ((a) childAt2).needsDividerBefore();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public c generateOverflowButtonLayoutParams() {
        c cVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        cVarGenerateDefaultLayoutParams.f1641a = true;
        return cVarGenerateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.f1629a == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(context);
            this.f1629a = fVar;
            fVar.W(new d());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f1633e = actionMenuPresenter;
            actionMenuPresenter.M(true);
            ActionMenuPresenter actionMenuPresenter2 = this.f1633e;
            androidx.appcompat.view.menu.l.a bVar = this.f1634f;
            if (bVar == null) {
                bVar = new b();
            }
            actionMenuPresenter2.d(bVar);
            this.f1629a.c(this.f1633e, this.f1630b);
            this.f1633e.K(this);
        }
        return this.f1629a;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.f1633e.C();
    }

    public int getPopupTheme() {
        return this.f1631c;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1633e;
        return actionMenuPresenter != null && actionMenuPresenter.D();
    }

    @Override // androidx.appcompat.view.menu.m
    public void initialize(androidx.appcompat.view.menu.f fVar) {
        this.f1629a = fVar;
    }

    @Override // androidx.appcompat.view.menu.f.b
    public boolean invokeItem(androidx.appcompat.view.menu.h hVar) {
        return this.f1629a.O(hVar, 0);
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.f1633e;
        return actionMenuPresenter != null && actionMenuPresenter.F();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f1633e;
        return actionMenuPresenter != null && actionMenuPresenter.G();
    }

    public boolean isOverflowReserved() {
        return this.f1632d;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f1633e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.h(false);
            if (this.f1633e.G()) {
                this.f1633e.D();
                this.f1633e.N();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int width;
        int paddingLeft;
        if (!this.f1636h) {
            super.onLayout(z10, i11, i12, i13, i14);
            return;
        }
        int childCount = getChildCount();
        int i15 = (i14 - i12) / 2;
        int dividerWidth = getDividerWidth();
        int i16 = i13 - i11;
        int paddingRight = (i16 - getPaddingRight()) - getPaddingLeft();
        boolean zB = u0.b(this);
        int i17 = 0;
        int i18 = 0;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f1641a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (f(i19)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i20 = i15 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i20, width, measuredHeight + i20);
                    paddingRight -= measuredWidth;
                    i17 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    f(i19);
                    i18++;
                }
            }
        }
        if (childCount == 1 && i17 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i21 = (i16 / 2) - (measuredWidth2 / 2);
            int i22 = i15 - (measuredHeight2 / 2);
            childAt2.layout(i21, i22, measuredWidth2 + i21, measuredHeight2 + i22);
            return;
        }
        int i23 = i18 - (i17 ^ 1);
        int iMax = Math.max(0, i23 > 0 ? paddingRight / i23 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i24 = 0; i24 < childCount; i24++) {
                View childAt3 = getChildAt(i24);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f1641a) {
                    int i25 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i26 = i15 - (measuredHeight3 / 2);
                    childAt3.layout(i25 - measuredWidth3, i26, i25, measuredHeight3 + i26);
                    width2 = i25 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i27 = 0; i27 < childCount; i27++) {
            View childAt4 = getChildAt(i27);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f1641a) {
                int i28 = paddingLeft2 + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i29 = i15 - (measuredHeight4 / 2);
                childAt4.layout(i28, i29, i28 + measuredWidth4, measuredHeight4 + i29);
                paddingLeft2 = i28 + measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + iMax;
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i11, int i12) {
        androidx.appcompat.view.menu.f fVar;
        boolean z10 = this.f1636h;
        boolean z11 = View.MeasureSpec.getMode(i11) == 1073741824;
        this.f1636h = z11;
        if (z10 != z11) {
            this.f1637i = 0;
        }
        int size = View.MeasureSpec.getSize(i11);
        if (this.f1636h && (fVar = this.f1629a) != null && size != this.f1637i) {
            this.f1637i = size;
            fVar.N(true);
        }
        int childCount = getChildCount();
        if (this.f1636h && childCount > 0) {
            h(i11, i12);
            return;
        }
        for (int i13 = 0; i13 < childCount; i13++) {
            c cVar = (c) getChildAt(i13).getLayoutParams();
            ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
            ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i11, i12);
    }

    public androidx.appcompat.view.menu.f peekMenu() {
        return this.f1629a;
    }

    public void setExpandedActionViewsExclusive(boolean z10) {
        this.f1633e.J(z10);
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2) {
        this.f1634f = aVar;
        this.f1635g = aVar2;
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.f1640l = eVar;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.f1633e.L(drawable);
    }

    public void setOverflowReserved(boolean z10) {
        this.f1632d = z10;
    }

    public void setPopupTheme(int i11) {
        if (this.f1631c != i11) {
            this.f1631c = i11;
            if (i11 == 0) {
                this.f1630b = getContext();
            } else {
                this.f1630b = new ContextThemeWrapper(getContext(), i11);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f1633e = actionMenuPresenter;
        actionMenuPresenter.K(this);
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1633e;
        return actionMenuPresenter != null && actionMenuPresenter.N();
    }
}

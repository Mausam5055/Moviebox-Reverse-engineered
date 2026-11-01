package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CharSequence f1565i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f1566j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f1567k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f1568l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f1569m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private LinearLayout f1570n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f1571o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TextView f1572p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1573q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1574r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1575s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1576t;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.appcompat.view.b f1577a;

        a(androidx.appcompat.view.b bVar) {
            this.f1577a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1577a.c();
        }
    }

    public ActionBarContextView(@NonNull Context context) {
        this(context, null);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.actionModeStyle);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.ActionMode, i11, 0);
        setBackground(j0VarV.g(R$styleable.ActionMode_background));
        this.f1573q = j0VarV.n(R$styleable.ActionMode_titleTextStyle, 0);
        this.f1574r = j0VarV.n(R$styleable.ActionMode_subtitleTextStyle, 0);
        this.f1548e = j0VarV.m(R$styleable.ActionMode_height, 0);
        this.f1576t = j0VarV.n(R$styleable.ActionMode_closeItemLayout, R$layout.abc_action_mode_close_item_material);
        j0VarV.x();
    }

    private void f() {
        if (this.f1570n == null) {
            LayoutInflater.from(getContext()).inflate(R$layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1570n = linearLayout;
            this.f1571o = (TextView) linearLayout.findViewById(R$id.action_bar_title);
            this.f1572p = (TextView) this.f1570n.findViewById(R$id.action_bar_subtitle);
            if (this.f1573q != 0) {
                this.f1571o.setTextAppearance(getContext(), this.f1573q);
            }
            if (this.f1574r != 0) {
                this.f1572p.setTextAppearance(getContext(), this.f1574r);
            }
        }
        this.f1571o.setText(this.f1565i);
        this.f1572p.setText(this.f1566j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f1565i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f1566j);
        this.f1572p.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f1570n.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f1570n.getParent() == null) {
            addView(this.f1570n);
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void animateToVisibility(int i11) {
        super.animateToVisibility(i11);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean canShowOverflowMenu() {
        return super.canShowOverflowMenu();
    }

    public void closeMode() {
        if (this.f1567k == null) {
            killMode();
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void dismissPopupMenus() {
        super.dismissPopupMenus();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f1566j;
    }

    public CharSequence getTitle() {
        return this.f1565i;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.D();
        }
        return false;
    }

    public void initForMode(androidx.appcompat.view.b bVar) {
        View view = this.f1567k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f1576t, (ViewGroup) this, false);
            this.f1567k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f1567k);
        }
        View viewFindViewById = this.f1567k.findViewById(R$id.action_mode_close_button);
        this.f1568l = viewFindViewById;
        viewFindViewById.setOnClickListener(new a(bVar));
        androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) bVar.e();
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f1547d = actionMenuPresenter2;
        actionMenuPresenter2.M(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        fVar.c(this.f1547d, this.f1545b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f1547d.q(this);
        this.f1546c = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f1546c, layoutParams);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowMenuShowPending() {
        return super.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.G();
        }
        return false;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowReserved() {
        return super.isOverflowReserved();
    }

    public boolean isTitleOptional() {
        return this.f1575s;
    }

    public void killMode() {
        removeAllViews();
        this.f1569m = null;
        this.f1546c = null;
        this.f1547d = null;
        View view = this.f1568l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.D();
            this.f1547d.E();
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        boolean zB = u0.b(this);
        int paddingRight = zB ? (i13 - i11) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i14 - i12) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1567k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1567k.getLayoutParams();
            int i15 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i16 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iD = AbsActionBarView.d(paddingRight, i15, zB);
            paddingRight = AbsActionBarView.d(iD + e(this.f1567k, iD, paddingTop, paddingTop2, zB), i16, zB);
        }
        int iE = paddingRight;
        LinearLayout linearLayout = this.f1570n;
        if (linearLayout != null && this.f1569m == null && linearLayout.getVisibility() != 8) {
            iE += e(this.f1570n, iE, paddingTop, paddingTop2, zB);
        }
        int i17 = iE;
        View view2 = this.f1569m;
        if (view2 != null) {
            e(view2, i17, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i13 - i11) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1546c;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        if (View.MeasureSpec.getMode(i11) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i12) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i11);
        int size2 = this.f1548e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i12);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f1567k;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1567k.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1546c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f1546c, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.f1570n;
        if (linearLayout != null && this.f1569m == null) {
            if (this.f1575s) {
                this.f1570n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f1570n.getMeasuredWidth();
                boolean z10 = measuredWidth <= paddingLeft;
                if (z10) {
                    paddingLeft -= measuredWidth;
                }
                this.f1570n.setVisibility(z10 ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.f1569m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i13 = layoutParams.width;
            int i14 = i13 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i13 >= 0) {
                paddingLeft = Math.min(i13, paddingLeft);
            }
            int i15 = layoutParams.height;
            int i16 = i15 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i15 >= 0) {
                iMin = Math.min(i15, iMin);
            }
            this.f1569m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i14), View.MeasureSpec.makeMeasureSpec(iMin, i16));
        }
        if (this.f1548e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            int measuredHeight = getChildAt(i18).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i17) {
                i17 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i17);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void postShowOverflowMenu() {
        super.postShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i11) {
        this.f1548e = i11;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1569m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1569m = view;
        if (view != null && (linearLayout = this.f1570n) != null) {
            removeView(linearLayout);
            this.f1570n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1566j = charSequence;
        f();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1565i = charSequence;
        f();
        ViewCompat.setAccessibilityPaneTitle(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.f1575s) {
            requestLayout();
        }
        this.f1575s = z10;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i11) {
        super.setVisibility(i11);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i11, long j11) {
        return super.setupAnimatorToVisibility(i11, j11);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f1547d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.N();
        }
        return false;
    }
}

package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f1556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f1557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f1558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Drawable f1559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Drawable f1560f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Drawable f1561g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f1562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f1563i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1564j;

    private static class a {
        public static void a(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new androidx.appcompat.widget.a(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBar);
        this.f1559e = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_background);
        this.f1560f = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundStacked);
        this.f1564j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_height, -1);
        boolean z10 = true;
        if (getId() == R$id.split_action_bar) {
            this.f1562h = true;
            this.f1561g = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f1562h ? this.f1559e != null || this.f1560f != null : this.f1561g != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1559e;
        if (drawable != null && drawable.isStateful()) {
            this.f1559e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1560f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1560f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1561g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f1561g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f1556b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1559e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1560f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1561g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1557c = findViewById(R$id.action_bar);
        this.f1558d = findViewById(R$id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1555a || super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048 A[PHI: r0
  0x0048: PHI (r0v8 boolean) = (r0v1 boolean), (r0v1 boolean), (r0v0 boolean) binds: [B:31:0x00a5, B:33:0x00a9, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        Drawable drawable;
        super.onLayout(z10, i11, i12, i13, i14);
        View view = this.f1556b;
        boolean z11 = true;
        boolean z12 = false;
        boolean z13 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i15 = layoutParams.bottomMargin;
            view.layout(i11, measuredHeight2 - i15, i13, measuredHeight - i15);
        }
        if (this.f1562h) {
            Drawable drawable2 = this.f1561g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z11 = z12;
            }
        } else {
            if (this.f1559e != null) {
                if (this.f1557c.getVisibility() == 0) {
                    this.f1559e.setBounds(this.f1557c.getLeft(), this.f1557c.getTop(), this.f1557c.getRight(), this.f1557c.getBottom());
                } else {
                    View view2 = this.f1558d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f1559e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f1559e.setBounds(this.f1558d.getLeft(), this.f1558d.getTop(), this.f1558d.getRight(), this.f1558d.getBottom());
                    }
                }
                z12 = true;
            }
            this.f1563i = z13;
            if (!z13 || (drawable = this.f1560f) == null) {
                z11 = z12;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z11) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i11, int i12) {
        int iA;
        int i13;
        if (this.f1557c == null && View.MeasureSpec.getMode(i12) == Integer.MIN_VALUE && (i13 = this.f1564j) >= 0) {
            i12 = View.MeasureSpec.makeMeasureSpec(Math.min(i13, View.MeasureSpec.getSize(i12)), Integer.MIN_VALUE);
        }
        super.onMeasure(i11, i12);
        if (this.f1557c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i12);
        View view = this.f1556b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (b(this.f1557c)) {
            iA = !b(this.f1558d) ? a(this.f1558d) : 0;
        } else {
            iA = a(this.f1557c);
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(iA + a(this.f1556b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i12) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1559e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1559e);
        }
        this.f1559e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f1557c;
            if (view != null) {
                this.f1559e.setBounds(view.getLeft(), this.f1557c.getTop(), this.f1557c.getRight(), this.f1557c.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.f1562h ? !(this.f1559e != null || this.f1560f != null) : this.f1561g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1561g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1561g);
        }
        this.f1561g = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1562h && (drawable2 = this.f1561g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f1562h ? !(this.f1559e != null || this.f1560f != null) : this.f1561g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1560f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1560f);
        }
        this.f1560f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1563i && (drawable2 = this.f1560f) != null) {
                drawable2.setBounds(this.f1556b.getLeft(), this.f1556b.getTop(), this.f1556b.getRight(), this.f1556b.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.f1562h ? !(this.f1559e != null || this.f1560f != null) : this.f1561g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1556b;
        if (view != null) {
            removeView(view);
        }
        this.f1556b = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        this.f1555a = z10;
        setDescendantFocusability(z10 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        boolean z10 = i11 == 0;
        Drawable drawable = this.f1559e;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f1560f;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f1561g;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i11) {
        if (i11 != 0) {
            return super.startActionModeForChild(view, callback, i11);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f1559e && !this.f1562h) || (drawable == this.f1560f && this.f1563i) || ((drawable == this.f1561g && this.f1562h) || super.verifyDrawable(drawable));
    }
}

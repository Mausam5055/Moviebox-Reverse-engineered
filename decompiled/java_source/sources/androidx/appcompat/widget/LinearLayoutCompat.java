package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$styleable;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    public static class a extends LinearLayout.LayoutParams {
        public a(int i11, int i12) {
            super(i11, i12);
        }

        public a(int i11, int i12, float f11) {
            super(i11, i12, f11);
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.LinearLayoutCompat, i11, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.LinearLayoutCompat, attributeSet, j0VarV.r(), i11, 0);
        int iK = j0VarV.k(R$styleable.LinearLayoutCompat_android_orientation, -1);
        if (iK >= 0) {
            setOrientation(iK);
        }
        int iK2 = j0VarV.k(R$styleable.LinearLayoutCompat_android_gravity, -1);
        if (iK2 >= 0) {
            setGravity(iK2);
        }
        boolean zA = j0VarV.a(R$styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!zA) {
            setBaselineAligned(zA);
        }
        this.mWeightSum = j0VarV.i(R$styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = j0VarV.k(R$styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = j0VarV.a(R$styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(j0VarV.g(R$styleable.LinearLayoutCompat_divider));
        this.mShowDividers = j0VarV.k(R$styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = j0VarV.f(R$styleable.LinearLayoutCompat_dividerPadding, 0);
        j0VarV.x();
    }

    private void a(int i11, int i12) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i13 = 0; i13 < i11; i13++) {
            View virtualChildAt = getVirtualChildAt(i13);
            if (virtualChildAt.getVisibility() != 8) {
                a aVar = (a) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                    int i14 = ((LinearLayout.LayoutParams) aVar).width;
                    ((LinearLayout.LayoutParams) aVar).width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i12, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) aVar).width = i14;
                }
            }
        }
    }

    private void b(int i11, int i12) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i13 = 0; i13 < i11; i13++) {
            View virtualChildAt = getVirtualChildAt(i13);
            if (virtualChildAt.getVisibility() != 8) {
                a aVar = (a) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).width == -1) {
                    int i14 = ((LinearLayout.LayoutParams) aVar).height;
                    ((LinearLayout.LayoutParams) aVar).height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i12, 0);
                    ((LinearLayout.LayoutParams) aVar).height = i14;
                }
            }
        }
    }

    private void c(View view, int i11, int i12, int i13, int i14) {
        view.layout(i11, i12, i13 + i11, i14 + i12);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i11;
        int virtualChildCount = getVirtualChildCount();
        boolean zB = u0.b(this);
        for (int i12 = 0; i12 < virtualChildCount; i12++) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i12)) {
                a aVar = (a) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zB ? virtualChildAt.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin : (virtualChildAt.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                a aVar2 = (a) virtualChildAt2.getLayoutParams();
                if (zB) {
                    left = virtualChildAt2.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i11 = this.mDividerWidth;
                    right = left - i11;
                } else {
                    right = virtualChildAt2.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (zB) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i11 = this.mDividerWidth;
                right = left - i11;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i11 = 0; i11 < virtualChildCount; i11++) {
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i11)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayout.LayoutParams) ((a) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LinearLayout.LayoutParams) ((a) virtualChildAt2.getLayoutParams())).bottomMargin);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i11) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i11, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i11);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i11) {
        this.mDivider.setBounds(i11, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i11, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public a generateDefaultLayoutParams() {
        int i11 = this.mOrientation;
        if (i11 == 0) {
            return new a(-2, -2);
        }
        if (i11 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof a) {
            return new a((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new a((ViewGroup.MarginLayoutParams) layoutParams) : new a(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i11;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i12 = this.mBaselineAlignedChildIndex;
        if (childCount <= i12) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i12);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i11 = this.mGravity & 112) != 48) {
            if (i11 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i11 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i11) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i11) {
        return getChildAt(i11);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int i11) {
        if (i11 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i11 == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            if (getChildAt(i12).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:35:0x00be  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:48:0x0100  */
    void layoutHorizontal(int i11, int i12, int i13, int i14) {
        int paddingLeft;
        int i15;
        int i16;
        boolean z10;
        int baseline;
        int i17;
        int i18;
        int measuredHeight;
        boolean zB = u0.b(this);
        int paddingTop = getPaddingTop();
        int i19 = i14 - i12;
        int paddingBottom = i19 - getPaddingBottom();
        int paddingBottom2 = (i19 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i20 = this.mGravity;
        int i21 = i20 & 112;
        boolean z11 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i20, getLayoutDirection());
        boolean z12 = true;
        if (absoluteGravity != 1) {
            paddingLeft = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i13) - i11) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft() + (((i13 - i11) - this.mTotalLength) / 2);
        }
        if (zB) {
            i15 = virtualChildCount - 1;
            i16 = -1;
        } else {
            i15 = 0;
            i16 = 1;
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            int i22 = i15 + (i16 * childrenSkipCount);
            View virtualChildAt = getVirtualChildAt(i22);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i22);
                z10 = z12;
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    a aVar = (a) virtualChildAt.getLayoutParams();
                    int i23 = childrenSkipCount;
                    if (z11) {
                        virtualChildCount = virtualChildCount;
                        baseline = ((LinearLayout.LayoutParams) aVar).height != -1 ? virtualChildAt.getBaseline() : -1;
                        i17 = ((LinearLayout.LayoutParams) aVar).gravity;
                        if (i17 < 0) {
                            i17 = i21;
                        }
                        i18 = i17 & 112;
                        i21 = i21;
                        if (i18 != 16) {
                            if (i18 != 48) {
                                measuredHeight = ((LinearLayout.LayoutParams) aVar).topMargin + paddingTop;
                                if (baseline != -1) {
                                    z10 = true;
                                    measuredHeight += iArr[1] - baseline;
                                }
                            } else if (i18 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                measuredHeight = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                            }
                            z10 = true;
                        } else {
                            z10 = true;
                            measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((LinearLayout.LayoutParams) aVar).topMargin) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        }
                        if (hasDividerBeforeChildAt(i22)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i24 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                        paddingTop = paddingTop;
                        c(virtualChildAt, i24 + getLocationOffset(virtualChildAt), measuredHeight, measuredWidth, measuredHeight2);
                        int nextLocationOffset = i24 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount = i23 + getChildrenSkipCount(virtualChildAt, i22);
                        paddingLeft = nextLocationOffset;
                    } else {
                        virtualChildCount = virtualChildCount;
                    }
                    i17 = ((LinearLayout.LayoutParams) aVar).gravity;
                    if (i17 < 0) {
                        i17 = i21;
                    }
                    i18 = i17 & 112;
                    i21 = i21;
                    if (i18 != 16) {
                        if (i18 != 48) {
                            measuredHeight = ((LinearLayout.LayoutParams) aVar).topMargin + paddingTop;
                            if (baseline != -1) {
                                z10 = true;
                                measuredHeight += iArr[1] - baseline;
                            }
                        } else if (i18 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        z10 = true;
                    } else {
                        z10 = true;
                        measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((LinearLayout.LayoutParams) aVar).topMargin) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                    }
                    if (hasDividerBeforeChildAt(i22)) {
                        paddingLeft += this.mDividerWidth;
                    }
                    int i25 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    paddingTop = paddingTop;
                    c(virtualChildAt, i25 + getLocationOffset(virtualChildAt), measuredHeight, measuredWidth, measuredHeight2);
                    int nextLocationOffset2 = i25 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount = i23 + getChildrenSkipCount(virtualChildAt, i22);
                    paddingLeft = nextLocationOffset2;
                } else {
                    z10 = true;
                }
                childrenSkipCount++;
                virtualChildCount = virtualChildCount;
                i21 = i21;
                z12 = z10;
                paddingTop = paddingTop;
            }
            childrenSkipCount++;
            virtualChildCount = virtualChildCount;
            i21 = i21;
            z12 = z10;
            paddingTop = paddingTop;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a1  */
    void layoutVertical(int i11, int i12, int i13, int i14) {
        int paddingTop;
        int i15;
        int i16;
        int i17;
        int i18;
        int paddingLeft = getPaddingLeft();
        int i19 = i13 - i11;
        int paddingRight = i19 - getPaddingRight();
        int paddingRight2 = (i19 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i20 = this.mGravity;
        int i21 = i20 & 112;
        int i22 = i20 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i21 != 16) {
            paddingTop = i21 != 80 ? getPaddingTop() : ((getPaddingTop() + i14) - i12) - this.mTotalLength;
        } else {
            paddingTop = getPaddingTop() + (((i14 - i12) - this.mTotalLength) / 2);
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    a aVar = (a) virtualChildAt.getLayoutParams();
                    int i23 = ((LinearLayout.LayoutParams) aVar).gravity;
                    if (i23 < 0) {
                        i23 = i22;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i23, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i17 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                        } else {
                            i15 = paddingRight - measuredWidth;
                            i16 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                        }
                        int i24 = i17;
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i25 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                        c(virtualChildAt, i24, i25 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                        int nextLocationOffset = i25 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                        paddingTop = nextLocationOffset;
                        i18 = 1;
                    } else {
                        i15 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aVar).leftMargin;
                        i16 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                    }
                    i17 = i15 - i16;
                    int i26 = i17;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i27 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    c(virtualChildAt, i26, i27 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset2 = i27 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    paddingTop = nextLocationOffset2;
                    i18 = 1;
                }
                childrenSkipCount += i18;
            }
            i18 = 1;
            childrenSkipCount += i18;
        }
    }

    void measureChildBeforeLayout(View view, int i11, int i12, int i13, int i14, int i15) {
        measureChildWithMargins(view, i12, i13, i14, i15);
    }

    /* JADX WARN: Code duplicated, block: B:200:0x045b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0175  */
    /* JADX WARN: Code duplicated, block: B:67:0x0197  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e0  */
    void measureHorizontal(int i11, int i12) {
        int[] iArr;
        int iCombineMeasuredStates;
        int i13;
        int iMax;
        int i14;
        int i15;
        int baseline;
        int i16;
        int i17;
        byte b11;
        int i18;
        int i19;
        boolean z10;
        boolean z11;
        View view;
        int i20;
        boolean z12;
        int i21;
        int measuredHeight;
        int childrenSkipCount;
        int baseline2;
        int i22;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z13 = this.mBaselineAligned;
        boolean z14 = this.mUseLargestChild;
        int i23 = 1073741824;
        boolean z15 = mode == 1073741824;
        int childrenSkipCount2 = 0;
        int iMax2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        boolean z16 = false;
        int iCombineMeasuredStates2 = 0;
        boolean z17 = false;
        boolean z18 = true;
        float f11 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (childrenSkipCount2 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
            } else {
                if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    a aVar = (a) virtualChildAt.getLayoutParams();
                    float f12 = ((LinearLayout.LayoutParams) aVar).weight;
                    float f13 = f11 + f12;
                    if (mode == i23 && ((LinearLayout.LayoutParams) aVar).width == 0 && f12 > 0.0f) {
                        if (z15) {
                            this.mTotalLength += ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin;
                        } else {
                            int i24 = this.mTotalLength;
                            this.mTotalLength = Math.max(i24, ((LinearLayout.LayoutParams) aVar).leftMargin + i24 + ((LinearLayout.LayoutParams) aVar).rightMargin);
                        }
                        if (z13) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                            i19 = childrenSkipCount2;
                            z10 = z14;
                            z11 = z13;
                            view = virtualChildAt;
                        } else {
                            i19 = childrenSkipCount2;
                            z10 = z14;
                            z11 = z13;
                            view = virtualChildAt;
                            z16 = true;
                            i20 = 1073741824;
                        }
                        if (mode2 == i20 && ((LinearLayout.LayoutParams) aVar).height == -1) {
                            z12 = true;
                            z17 = true;
                        } else {
                            z12 = false;
                        }
                        i21 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i21;
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, view.getMeasuredState());
                        if (z11 && (baseline2 = view.getBaseline()) != -1) {
                            i22 = ((LinearLayout.LayoutParams) aVar).gravity;
                            if (i22 < 0) {
                                i22 = this.mGravity;
                            }
                            int i25 = (((i22 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i25] = Math.max(iArr2[i25], baseline2);
                            iArr[i25] = Math.max(iArr[i25], measuredHeight - baseline2);
                        }
                        iMax3 = Math.max(iMax3, measuredHeight);
                        if (z18 || ((LinearLayout.LayoutParams) aVar).height != -1) {
                            z18 = false;
                        } else {
                            z18 = true;
                        }
                        if (((LinearLayout.LayoutParams) aVar).weight > 0.0f) {
                            if (!z12) {
                                i21 = measuredHeight;
                            }
                            iMax5 = Math.max(iMax5, i21);
                        } else {
                            int i26 = iMax5;
                            if (!z12) {
                                i21 = measuredHeight;
                            }
                            iMax4 = Math.max(iMax4, i21);
                            iMax5 = i26;
                        }
                        int i27 = i19;
                        childrenSkipCount = getChildrenSkipCount(view, i27) + i27;
                        f11 = f13;
                    } else {
                        if (((LinearLayout.LayoutParams) aVar).width != 0 || f12 <= 0.0f) {
                            b11 = -2;
                            i18 = Integer.MIN_VALUE;
                        } else {
                            b11 = -2;
                            ((LinearLayout.LayoutParams) aVar).width = -2;
                            i18 = 0;
                        }
                        i19 = childrenSkipCount2;
                        int i28 = i18;
                        z10 = z14;
                        z11 = z13;
                        measureChildBeforeLayout(virtualChildAt, i19, i11, f13 == 0.0f ? this.mTotalLength : 0, i12, 0);
                        if (i28 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aVar).width = i28;
                        }
                        int measuredWidth = virtualChildAt.getMeasuredWidth();
                        if (z15) {
                            view = virtualChildAt;
                            this.mTotalLength += ((LinearLayout.LayoutParams) aVar).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(view);
                        } else {
                            view = virtualChildAt;
                            int i29 = this.mTotalLength;
                            this.mTotalLength = Math.max(i29, i29 + measuredWidth + ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(view));
                        }
                        if (z10) {
                            iMax2 = Math.max(measuredWidth, iMax2);
                        }
                    }
                    i20 = 1073741824;
                    if (mode2 == i20) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    i21 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i21;
                    iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, view.getMeasuredState());
                    if (z11) {
                        i22 = ((LinearLayout.LayoutParams) aVar).gravity;
                        if (i22 < 0) {
                            i22 = this.mGravity;
                        }
                        int i210 = (((i22 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i210] = Math.max(iArr2[i210], baseline2);
                        iArr[i210] = Math.max(iArr[i210], measuredHeight - baseline2);
                    }
                    iMax3 = Math.max(iMax3, measuredHeight);
                    if (z18) {
                        z18 = false;
                    } else {
                        z18 = false;
                    }
                    if (((LinearLayout.LayoutParams) aVar).weight > 0.0f) {
                        if (!z12) {
                            i21 = measuredHeight;
                        }
                        iMax5 = Math.max(iMax5, i21);
                    } else {
                        int i211 = iMax5;
                        if (!z12) {
                            i21 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i21);
                        iMax5 = i211;
                    }
                    int i212 = i19;
                    childrenSkipCount = getChildrenSkipCount(view, i212) + i212;
                    f11 = f13;
                }
                int i30 = childrenSkipCount + 1;
                iArr3 = iArr;
                z14 = z10;
                z13 = z11;
                i23 = i20;
                childrenSkipCount2 = i30;
            }
            z10 = z14;
            z11 = z13;
            int i31 = i23;
            childrenSkipCount = childrenSkipCount2;
            i20 = i31;
            int i32 = childrenSkipCount + 1;
            iArr3 = iArr;
            z14 = z10;
            z13 = z11;
            i23 = i20;
            childrenSkipCount2 = i32;
        }
        boolean z19 = z14;
        boolean z20 = z13;
        int i33 = iMax3;
        int i34 = iMax4;
        int i35 = iMax5;
        int i36 = iCombineMeasuredStates2;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int i37 = iArr2[1];
        int iMax6 = (i37 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i33 : Math.max(i33, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i37, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        if (z19 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int childrenSkipCount3 = 0;
            while (childrenSkipCount3 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(childrenSkipCount3);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount3);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount3 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount3);
                } else {
                    a aVar2 = (a) virtualChildAt2.getLayoutParams();
                    if (z15) {
                        this.mTotalLength += ((LinearLayout.LayoutParams) aVar2).leftMargin + iMax2 + ((LinearLayout.LayoutParams) aVar2).rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i38 = this.mTotalLength;
                        this.mTotalLength = Math.max(i38, i38 + iMax2 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    childrenSkipCount3++;
                    iMax6 = iMax6;
                }
                childrenSkipCount3++;
                iMax6 = iMax6;
            }
        }
        int iMax7 = iMax6;
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i11, 0);
        int i39 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z16 || (i39 != 0 && f11 > 0.0f)) {
            float f14 = this.mWeightSum;
            if (f14 > 0.0f) {
                f11 = f14;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i40 = i34;
            int iMax8 = -1;
            iCombineMeasuredStates = i36;
            int i41 = 0;
            while (i41 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i41);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i14 = i39;
                    virtualChildCount = virtualChildCount;
                } else {
                    a aVar3 = (a) virtualChildAt3.getLayoutParams();
                    float f15 = ((LinearLayout.LayoutParams) aVar3).weight;
                    if (f15 > 0.0f) {
                        int i42 = (int) ((i39 * f15) / f11);
                        float f16 = f11 - f15;
                        int i43 = i39 - i42;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin, ((LinearLayout.LayoutParams) aVar3).height);
                        if (((LinearLayout.LayoutParams) aVar3).width == 0) {
                            i17 = 1073741824;
                            if (mode == 1073741824) {
                                if (i42 <= 0) {
                                    i42 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i42, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                            f11 = f16;
                            i14 = i43;
                        } else {
                            i17 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i42;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i17), childMeasureSpec);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        f11 = f16;
                        i14 = i43;
                    } else {
                        i14 = i39;
                    }
                    if (z15) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i44 = this.mTotalLength;
                        this.mTotalLength = Math.max(i44, virtualChildAt3.getMeasuredWidth() + i44 + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z21 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == -1;
                    int i45 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i45;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z21) {
                        i45 = measuredHeight2;
                    }
                    int iMax9 = Math.max(i40, i45);
                    if (z18) {
                        i15 = -1;
                        boolean z22 = ((LinearLayout.LayoutParams) aVar3).height == -1;
                        if (z20 && (baseline = virtualChildAt3.getBaseline()) != i15) {
                            i16 = ((LinearLayout.LayoutParams) aVar3).gravity;
                            if (i16 < 0) {
                                i16 = this.mGravity;
                            }
                            int i46 = (((i16 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i46] = Math.max(iArr2[i46], baseline);
                            iArr[i46] = Math.max(iArr[i46], measuredHeight2 - baseline);
                        }
                        z18 = z22;
                        i40 = iMax9;
                        f11 = f11;
                    } else {
                        i15 = -1;
                    }
                    if (z20) {
                        i16 = ((LinearLayout.LayoutParams) aVar3).gravity;
                        if (i16 < 0) {
                            i16 = this.mGravity;
                        }
                        int i47 = (((i16 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i47] = Math.max(iArr2[i47], baseline);
                        iArr[i47] = Math.max(iArr[i47], measuredHeight2 - baseline);
                    }
                    z18 = z22;
                    i40 = iMax9;
                    f11 = f11;
                }
                i41++;
                i39 = i14;
                virtualChildCount = virtualChildCount;
            }
            i13 = virtualChildCount;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            int i48 = iArr2[1];
            iMax7 = (i48 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i48, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            iMax = i40;
        } else {
            iMax = Math.max(i34, i35);
            if (z19 && mode != 1073741824) {
                for (int i49 = 0; i49 < virtualChildCount; i49++) {
                    View virtualChildAt4 = getVirtualChildAt(i49);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) virtualChildAt4.getLayoutParams())).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i13 = virtualChildCount;
            iCombineMeasuredStates = i36;
        }
        if (z18 || mode2 == 1073741824) {
            iMax = iMax7;
        }
        setMeasuredDimension(iResolveSizeAndState | ((-16777216) & iCombineMeasuredStates), View.resolveSizeAndState(Math.max(iMax + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i12, iCombineMeasuredStates << 16));
        if (z17) {
            a(i13, i11);
        }
    }

    int measureNullChild(int i11) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:152:0x032f  */
    void measureVertical(int i11, int i12) {
        int i13;
        int iCombineMeasuredStates;
        int iMax;
        int i14;
        int i15;
        int i16;
        boolean z10;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int iMax2;
        int i24;
        View view;
        int iMax3;
        boolean z11;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int i25 = this.mBaselineAlignedChildIndex;
        boolean z12 = this.mUseLargestChild;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int iMax4 = 0;
        int i29 = 0;
        int childrenSkipCount = 0;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = true;
        float f11 = 0.0f;
        while (true) {
            int i30 = 8;
            int i31 = iMax4;
            if (childrenSkipCount >= virtualChildCount) {
                int i32 = i26;
                int i33 = i28;
                int i34 = i29;
                int i35 = mode2;
                int iMax5 = i27;
                int i36 = virtualChildCount;
                if (this.mTotalLength > 0) {
                    i13 = i36;
                    if (hasDividerBeforeChildAt(i13)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i13 = i36;
                }
                if (z12 && (i35 == Integer.MIN_VALUE || i35 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < i13) {
                        View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt == null) {
                            this.mTotalLength += measureNullChild(childrenSkipCount2);
                        } else if (virtualChildAt.getVisibility() == i30) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                        } else {
                            a aVar = (a) virtualChildAt.getLayoutParams();
                            int i37 = this.mTotalLength;
                            this.mTotalLength = Math.max(i37, i37 + i33 + ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin + getNextLocationOffset(virtualChildAt));
                        }
                        childrenSkipCount2++;
                        i30 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i12, 0);
                int i38 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z13 || (i38 != 0 && f11 > 0.0f)) {
                    float f12 = this.mWeightSum;
                    if (f12 > 0.0f) {
                        f11 = f12;
                    }
                    this.mTotalLength = 0;
                    int i39 = i38;
                    int i40 = i34;
                    iCombineMeasuredStates = i32;
                    int i41 = 0;
                    while (i41 < i13) {
                        View virtualChildAt2 = getVirtualChildAt(i41);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i14 = i39;
                        } else {
                            a aVar2 = (a) virtualChildAt2.getLayoutParams();
                            float f13 = ((LinearLayout.LayoutParams) aVar2).weight;
                            if (f13 > 0.0f) {
                                int i42 = (int) ((i39 * f13) / f11);
                                float f14 = f11 - f13;
                                i14 = i39 - i42;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, getPaddingLeft() + getPaddingRight() + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin, ((LinearLayout.LayoutParams) aVar2).width);
                                if (((LinearLayout.LayoutParams) aVar2).height == 0) {
                                    i17 = 1073741824;
                                    if (i35 == 1073741824) {
                                        if (i42 <= 0) {
                                            i42 = 0;
                                        }
                                        virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i42, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                    f11 = f14;
                                } else {
                                    i17 = 1073741824;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i42;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i17));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                f11 = f14;
                            } else {
                                i14 = i39;
                            }
                            int i43 = ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i43;
                            iMax5 = Math.max(iMax5, measuredWidth);
                            float f15 = f11;
                            if (mode != 1073741824) {
                                i15 = iCombineMeasuredStates;
                                i16 = -1;
                                if (((LinearLayout.LayoutParams) aVar2).width != -1) {
                                }
                                int iMax6 = Math.max(i40, i43);
                                if (z15 || ((LinearLayout.LayoutParams) aVar2).width != i16) {
                                    z10 = false;
                                } else {
                                    z10 = true;
                                }
                                int i44 = this.mTotalLength;
                                this.mTotalLength = Math.max(i44, virtualChildAt2.getMeasuredHeight() + i44 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + getNextLocationOffset(virtualChildAt2));
                                z15 = z10;
                                iCombineMeasuredStates = i15;
                                i40 = iMax6;
                                f11 = f15;
                            } else {
                                i15 = iCombineMeasuredStates;
                                i16 = -1;
                            }
                            i43 = measuredWidth;
                            int iMax7 = Math.max(i40, i43);
                            if (z15) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            int i45 = this.mTotalLength;
                            this.mTotalLength = Math.max(i45, virtualChildAt2.getMeasuredHeight() + i45 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + getNextLocationOffset(virtualChildAt2));
                            z15 = z10;
                            iCombineMeasuredStates = i15;
                            i40 = iMax7;
                            f11 = f15;
                        }
                        i41++;
                        i39 = i14;
                    }
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    iMax = i40;
                } else {
                    iMax = Math.max(i34, i31);
                    if (z12 && i35 != 1073741824) {
                        for (int i46 = 0; i46 < i13; i46++) {
                            View virtualChildAt3 = getVirtualChildAt(i46);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) virtualChildAt3.getLayoutParams())).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i33, 1073741824));
                            }
                        }
                    }
                    iCombineMeasuredStates = i32;
                }
                if (z15 || mode == 1073741824) {
                    iMax = iMax5;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i11, iCombineMeasuredStates), iResolveSizeAndState);
                if (z14) {
                    b(i13, i12);
                    return;
                }
                return;
            }
            View virtualChildAt4 = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt4 == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
                i21 = mode2;
                iMax4 = i31;
                i23 = virtualChildCount;
            } else {
                int i47 = i26;
                if (virtualChildAt4.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt4, childrenSkipCount);
                    iMax4 = i31;
                    i26 = i47;
                    i23 = virtualChildCount;
                    i21 = mode2;
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    a aVar3 = (a) virtualChildAt4.getLayoutParams();
                    float f16 = ((LinearLayout.LayoutParams) aVar3).weight;
                    float f17 = f11 + f16;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == 0 && f16 > 0.0f) {
                        int i48 = this.mTotalLength;
                        this.mTotalLength = Math.max(i48, ((LinearLayout.LayoutParams) aVar3).topMargin + i48 + ((LinearLayout.LayoutParams) aVar3).bottomMargin);
                        iMax3 = i28;
                        view = virtualChildAt4;
                        iMax2 = i29;
                        z13 = true;
                        i19 = i47;
                        i20 = i27;
                        i21 = mode2;
                        i22 = i31;
                        i23 = virtualChildCount;
                        i24 = childrenSkipCount;
                    } else {
                        int i49 = i27;
                        if (((LinearLayout.LayoutParams) aVar3).height != 0 || f16 <= 0.0f) {
                            i18 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) aVar3).height = -2;
                            i18 = 0;
                        }
                        i19 = i47;
                        int i50 = i18;
                        i20 = i49;
                        int i51 = i28;
                        i21 = mode2;
                        i22 = i31;
                        i23 = virtualChildCount;
                        iMax2 = i29;
                        i24 = childrenSkipCount;
                        measureChildBeforeLayout(virtualChildAt4, childrenSkipCount, i11, 0, i12, f17 == 0.0f ? this.mTotalLength : 0);
                        if (i50 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aVar3).height = i50;
                        }
                        int measuredHeight2 = virtualChildAt4.getMeasuredHeight();
                        int i52 = this.mTotalLength;
                        view = virtualChildAt4;
                        this.mTotalLength = Math.max(i52, i52 + measuredHeight2 + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin + getNextLocationOffset(view));
                        iMax3 = z12 ? Math.max(measuredHeight2, i51) : i51;
                    }
                    if (i25 >= 0 && i25 == i24 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i24 < i25 && ((LinearLayout.LayoutParams) aVar3).weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || ((LinearLayout.LayoutParams) aVar3).width != -1) {
                        z11 = false;
                    } else {
                        z11 = true;
                        z14 = true;
                    }
                    int i53 = ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i53;
                    int iMax8 = Math.max(i20, measuredWidth2);
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i19, view.getMeasuredState());
                    z15 = z15 && ((LinearLayout.LayoutParams) aVar3).width == -1;
                    if (((LinearLayout.LayoutParams) aVar3).weight > 0.0f) {
                        if (!z11) {
                            i53 = measuredWidth2;
                        }
                        iMax4 = Math.max(i22, i53);
                    } else {
                        if (!z11) {
                            i53 = measuredWidth2;
                        }
                        iMax2 = Math.max(iMax2, i53);
                        iMax4 = i22;
                    }
                    int childrenSkipCount3 = getChildrenSkipCount(view, i24) + i24;
                    i28 = iMax3;
                    i27 = iMax8;
                    f11 = f17;
                    i29 = iMax2;
                    childrenSkipCount = childrenSkipCount3;
                    i26 = iCombineMeasuredStates2;
                }
            }
            childrenSkipCount++;
            virtualChildCount = i23;
            mode2 = i21;
        }
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        if (this.mOrientation == 1) {
            layoutVertical(i11, i12, i13, i14);
        } else {
            layoutHorizontal(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.mOrientation == 1) {
            measureVertical(i11, i12);
        } else {
            measureHorizontal(i11, i12);
        }
    }

    public void setBaselineAligned(boolean z10) {
        this.mBaselineAligned = z10;
    }

    public void setBaselineAlignedChildIndex(int i11) {
        if (i11 >= 0 && i11 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i11;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i11) {
        this.mDividerPadding = i11;
    }

    public void setGravity(int i11) {
        if (this.mGravity != i11) {
            if ((8388615 & i11) == 0) {
                i11 |= GravityCompat.START;
            }
            if ((i11 & 112) == 0) {
                i11 |= 48;
            }
            this.mGravity = i11;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i11) {
        int i12 = i11 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i13 = this.mGravity;
        if ((8388615 & i13) != i12) {
            this.mGravity = i12 | ((-8388616) & i13);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z10) {
        this.mUseLargestChild = z10;
    }

    public void setOrientation(int i11) {
        if (this.mOrientation != i11) {
            this.mOrientation = i11;
            requestLayout();
        }
    }

    public void setShowDividers(int i11) {
        if (i11 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i11;
    }

    public void setVerticalGravity(int i11) {
        int i12 = i11 & 112;
        int i13 = this.mGravity;
        if ((i13 & 112) != i12) {
            this.mGravity = i12 | (i13 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f11) {
        this.mWeightSum = Math.max(0.0f, f11);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}

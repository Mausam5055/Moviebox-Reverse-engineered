package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.tn.lib.widget.R$styleable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FlowLayout extends ViewGroup {
    public static final int SPACING_ALIGN = -65537;
    public static final int SPACING_AUTO = -65536;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f40921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f40922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f40923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f40924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f40925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f40926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f40927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f40928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f40929i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f40930j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f40931k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f40932l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List f40933m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List f40934n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f40935o;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40921a = true;
        this.f40922b = 0;
        this.f40923c = 0;
        this.f40924d = -65538;
        this.f40925e = 0.0f;
        this.f40926f = 0.0f;
        this.f40927g = false;
        this.f40928h = Integer.MAX_VALUE;
        this.f40929i = -1;
        this.f40930j = SPACING_AUTO;
        this.f40932l = new ArrayList();
        this.f40933m = new ArrayList();
        this.f40934n = new ArrayList();
        this.f40935o = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.FlowLayout, 0, 0);
        try {
            this.f40921a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FlowLayout_flFlow, true);
            this.f40922b = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flChildSpacing, (int) a(0.0f));
            this.f40923c = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flMinChildSpacing, (int) a(0.0f));
            this.f40924d = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flChildSpacingForLastRow, -65538);
            this.f40925e = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flRowSpacing, (int) a(0.0f));
            this.f40928h = typedArrayObtainStyledAttributes.getInt(R$styleable.FlowLayout_flMaxRows, Integer.MAX_VALUE);
            this.f40927g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FlowLayout_flRtl, false);
            this.f40929i = typedArrayObtainStyledAttributes.getInt(R$styleable.FlowLayout_android_gravity, -1);
            this.f40930j = typedArrayObtainStyledAttributes.getInt(R$styleable.FlowLayout_flRowVerticalGravity, SPACING_AUTO);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private float a(float f11) {
        return TypedValue.applyDimension(1, f11, getResources().getDisplayMetrics());
    }

    private int b(TypedArray typedArray, int i11, int i12) {
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i11, typedValue);
        return typedValue.type == 5 ? typedArray.getDimensionPixelSize(i11, i12) : typedArray.getInt(i11, i12);
    }

    private int c(int i11, int i12, int i13, int i14) {
        if (this.f40922b == -65536 || i14 >= this.f40934n.size() || i14 >= this.f40935o.size() || ((Integer) this.f40935o.get(i14)).intValue() <= 0) {
            return 0;
        }
        if (i11 == 1) {
            return ((i12 - i13) - ((Integer) this.f40934n.get(i14)).intValue()) / 2;
        }
        if (i11 != 5) {
            return 0;
        }
        return (i12 - i13) - ((Integer) this.f40934n.get(i14)).intValue();
    }

    private float d(int i11, int i12, int i13, int i14) {
        if (i11 != -65536) {
            return i11;
        }
        if (i14 > 1) {
            return (i12 - i13) / (i14 - 1);
        }
        return 0.0f;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public int getChildSpacing() {
        return this.f40922b;
    }

    public int getChildSpacingForLastRow() {
        return this.f40924d;
    }

    public int getCountInRow(int i11) {
        return ((Integer) this.f40935o.get(i11)).intValue();
    }

    public int getMaxRows() {
        return this.f40928h;
    }

    public int getMinChildSpacing() {
        return this.f40923c;
    }

    public float getRowSpacing() {
        return this.f40925e;
    }

    public int getRowsCount() {
        return this.f40935o.size();
    }

    public boolean isFlow() {
        return this.f40921a;
    }

    public boolean isRtl() {
        return this.f40927g;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0144  */
    /* JADX WARN: Code duplicated, block: B:44:0x014a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0174  */
    /* JADX WARN: Code duplicated, block: B:50:0x0180  */
    /* JADX WARN: Code duplicated, block: B:51:0x0182  */
    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17;
        int iC;
        int i18;
        int size;
        int i19;
        int i20;
        View childAt;
        int iIntValue;
        int i21;
        int width;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        float f11;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int width2 = this.f40927g ? getWidth() - paddingRight : paddingLeft;
        int i28 = this.f40929i;
        int i29 = i28 & 112;
        int i30 = i28 & 7;
        if (i29 != 16) {
            if (i29 == 80) {
                i15 = (((i14 - i12) - paddingTop) - paddingBottom) - this.f40931k;
            }
            i16 = paddingLeft + paddingRight;
            i17 = i13 - i11;
            iC = width2 + c(i30, i17, i16, 0);
            i18 = this.f40930j & 112;
            size = this.f40935o.size();
            i19 = 0;
            i20 = 0;
            while (i19 < Math.min(size, this.f40928h)) {
                iIntValue = ((Integer) this.f40935o.get(i19)).intValue();
                int iIntValue2 = ((Integer) this.f40933m.get(i19)).intValue();
                float fFloatValue = ((Float) this.f40932l.get(i19)).floatValue();
                i21 = 0;
                while (true) {
                    paddingLeft = paddingLeft;
                    if (i21 >= iIntValue || i20 >= getChildCount()) {
                        break;
                    }
                    int i31 = i20 + 1;
                    View childAt2 = getChildAt(i20);
                    i20 = i31;
                    size = size;
                    if (childAt2.getVisibility() != 8) {
                        int i32 = i21 + 1;
                        ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            int i33 = marginLayoutParams.leftMargin;
                            int i34 = marginLayoutParams.rightMargin;
                            i24 = marginLayoutParams.topMargin;
                            i23 = marginLayoutParams.bottomMargin;
                            int i35 = iIntValue;
                            i26 = i33;
                            i25 = i34;
                            i22 = i35;
                        } else {
                            i22 = iIntValue;
                            i23 = 0;
                            i24 = 0;
                            i25 = 0;
                            i26 = 0;
                        }
                        int measuredWidth = childAt2.getMeasuredWidth();
                        int measuredHeight = childAt2.getMeasuredHeight();
                        int i36 = paddingTop + i24;
                        int i37 = i30;
                        if (i18 == 80) {
                            i27 = ((paddingTop + iIntValue2) - i23) - measuredHeight;
                        } else {
                            if (i18 == 16) {
                                i36 += (((iIntValue2 - i24) - i23) - measuredHeight) / 2;
                            }
                            i27 = i36;
                        }
                        int i38 = i27 + measuredHeight;
                        if (this.f40927g) {
                            int i39 = iC - i25;
                            childAt2.layout(i39 - measuredWidth, i27, i39, i38);
                            f11 = iC - (((measuredWidth + fFloatValue) + i26) + i25);
                        } else {
                            int i40 = iC + i26;
                            childAt2.layout(i40, i27, i40 + measuredWidth, i38);
                            f11 = iC + measuredWidth + fFloatValue + i26 + i25;
                        }
                        iC = (int) f11;
                        i21 = i32;
                        iIntValue = i22;
                        i16 = i16;
                        i18 = i18;
                        i30 = i37;
                    }
                }
                int i41 = i16;
                int i42 = i30;
                int i43 = i18;
                int i44 = size;
                if (this.f40927g) {
                    width = getWidth() - paddingRight;
                } else {
                    width = paddingLeft;
                }
                i19++;
                int iC2 = width + c(i42, i17, i41, i19);
                paddingTop = (int) (paddingTop + iIntValue2 + this.f40926f);
                size = i44;
                i30 = i42;
                i16 = i41;
                i18 = i43;
                iC = iC2;
                paddingLeft = paddingLeft;
            }
            while (i20 < getChildCount()) {
                childAt = getChildAt(i20);
                if (childAt.getVisibility() == 8) {
                    childAt.layout(0, 0, 0, 0);
                }
                i20++;
            }
        }
        i15 = ((((i14 - i12) - paddingTop) - paddingBottom) - this.f40931k) / 2;
        paddingTop += i15;
        i16 = paddingLeft + paddingRight;
        i17 = i13 - i11;
        iC = width2 + c(i30, i17, i16, 0);
        i18 = this.f40930j & 112;
        size = this.f40935o.size();
        i19 = 0;
        i20 = 0;
        while (i19 < Math.min(size, this.f40928h)) {
            iIntValue = ((Integer) this.f40935o.get(i19)).intValue();
            int iIntValue3 = ((Integer) this.f40933m.get(i19)).intValue();
            float fFloatValue2 = ((Float) this.f40932l.get(i19)).floatValue();
            i21 = 0;
            while (true) {
                paddingLeft = paddingLeft;
                if (i21 >= iIntValue) {
                    break;
                }
                break;
                break;
            }
            int i45 = i16;
            int i46 = i30;
            int i47 = i18;
            int i48 = size;
            if (this.f40927g) {
                width = getWidth() - paddingRight;
            } else {
                width = paddingLeft;
            }
            i19++;
            int iC3 = width + c(i46, i17, i45, i19);
            paddingTop = (int) (paddingTop + iIntValue3 + this.f40926f);
            size = i48;
            i30 = i46;
            i16 = i45;
            i18 = i47;
            iC = iC3;
            paddingLeft = paddingLeft;
        }
        while (i20 < getChildCount()) {
            childAt = getChildAt(i20);
            if (childAt.getVisibility() == 8) {
                childAt.layout(0, 0, 0, 0);
            }
            i20++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int i13;
        int iMin;
        int i14;
        int i15;
        View view;
        int i16;
        int i17;
        int measuredWidth;
        int i18;
        int i19;
        super.onMeasure(i11, i12);
        int size = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        int mode2 = View.MeasureSpec.getMode(i12);
        this.f40932l.clear();
        this.f40933m.clear();
        this.f40934n.clear();
        this.f40935o.clear();
        int childCount = getChildCount();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        boolean z10 = mode != 0 && this.f40921a;
        int i20 = this.f40922b;
        int i21 = SPACING_AUTO;
        int i22 = (i20 == -65536 && mode == 0) ? 0 : i20;
        float f11 = i22 == -65536 ? this.f40923c : i22;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int iMax = 0;
        int i26 = 0;
        int i27 = 0;
        int iMax2 = 0;
        while (i25 < childCount) {
            float f12 = f11;
            View childAt = getChildAt(i25);
            int i28 = i23;
            if (childAt.getVisibility() == 8) {
                i25 = i25;
                i18 = i22;
                mode = mode;
                mode2 = mode2;
                childCount = childCount;
                f12 = f12;
                i19 = i28;
                i15 = SPACING_AUTO;
                measuredWidth = i24;
                size = size;
                size2 = size2;
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    view = childAt;
                    i15 = SPACING_AUTO;
                    measureChildWithMargins(childAt, i11, 0, i12, i27);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i16 = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                    i17 = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    i15 = SPACING_AUTO;
                    view = childAt;
                    measureChild(view, i11, i12);
                    i16 = 0;
                    i17 = 0;
                }
                measuredWidth = i16 + view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight() + i17;
                if (!z10 || i26 + measuredWidth <= paddingLeft) {
                    i18 = i22;
                    i19 = i28 + 1;
                    i26 = (int) (i26 + measuredWidth + f12);
                    measuredWidth += i24;
                    iMax2 = Math.max(iMax2, measuredHeight);
                } else {
                    i18 = i22;
                    this.f40932l.add(Float.valueOf(d(i18, paddingLeft, i24, i28)));
                    this.f40935o.add(Integer.valueOf(i28));
                    this.f40933m.add(Integer.valueOf(iMax2));
                    int i29 = (int) f12;
                    this.f40934n.add(Integer.valueOf(i26 - i29));
                    if (this.f40932l.size() <= this.f40928h) {
                        i27 += iMax2;
                    }
                    iMax = Math.max(iMax, i26);
                    i26 = measuredWidth + i29;
                    iMax2 = measuredHeight;
                    i19 = 1;
                }
            }
            i24 = measuredWidth;
            i23 = i19;
            i25++;
            i22 = i18;
            i21 = i15;
            f11 = f12;
            size = size;
            size2 = size2;
            mode = mode;
            childCount = childCount;
            mode2 = mode2;
        }
        int i30 = i23;
        int i31 = size;
        int i32 = mode;
        int i33 = size2;
        int i34 = mode2;
        int i35 = iMax2;
        int i36 = i24;
        float f13 = f11;
        int i37 = i21;
        int i38 = i22;
        int i39 = this.f40924d;
        if (i39 == -65537) {
            if (this.f40932l.size() >= 1) {
                List list = this.f40932l;
                list.add((Float) list.get(list.size() - 1));
            } else {
                this.f40932l.add(Float.valueOf(d(i38, paddingLeft, i36, i30)));
            }
        } else if (i39 != -65538) {
            this.f40932l.add(Float.valueOf(d(i39, paddingLeft, i36, i30)));
        } else {
            this.f40932l.add(Float.valueOf(d(i38, paddingLeft, i36, i30)));
        }
        this.f40935o.add(Integer.valueOf(i30));
        this.f40933m.add(Integer.valueOf(i35));
        this.f40934n.add(Integer.valueOf(i26 - ((int) f13)));
        if (this.f40932l.size() <= this.f40928h) {
            i27 += i35;
        }
        int iMax3 = Math.max(iMax, i26);
        if (i38 == i37) {
            iMin = i31;
            i13 = iMin;
        } else if (i32 == 0) {
            iMin = iMax3 + getPaddingLeft() + getPaddingRight();
            i13 = i31;
        } else {
            i13 = i31;
            iMin = Math.min(iMax3 + getPaddingLeft() + getPaddingRight(), i13);
        }
        int paddingTop = i27 + getPaddingTop() + getPaddingBottom();
        int iMin2 = Math.min(this.f40932l.size(), this.f40928h);
        float f14 = this.f40925e;
        if (f14 == -65536.0f && i34 == 0) {
            f14 = 0.0f;
        }
        if (f14 == -65536.0f) {
            if (iMin2 > 1) {
                this.f40926f = (i33 - paddingTop) / (iMin2 - 1);
            } else {
                this.f40926f = 0.0f;
            }
            paddingTop = i33;
            i14 = paddingTop;
        } else {
            this.f40926f = f14;
            if (iMin2 <= 1) {
                i14 = i33;
            } else if (i34 == 0) {
                paddingTop = (int) (paddingTop + (f14 * (iMin2 - 1)));
                i14 = i33;
            } else {
                int i40 = (int) (paddingTop + (f14 * (iMin2 - 1)));
                i14 = i33;
                paddingTop = Math.min(i40, i14);
            }
        }
        this.f40931k = paddingTop;
        setMeasuredDimension(i32 == 1073741824 ? i13 : iMin, i34 == 1073741824 ? i14 : paddingTop);
    }

    public void setChildSpacing(int i11) {
        this.f40922b = i11;
        requestLayout();
    }

    public void setChildSpacingForLastRow(int i11) {
        this.f40924d = i11;
        requestLayout();
    }

    public void setFlow(boolean z10) {
        this.f40921a = z10;
        requestLayout();
    }

    public void setGravity(int i11) {
        if (this.f40929i != i11) {
            this.f40929i = i11;
            requestLayout();
        }
    }

    public void setMaxRows(int i11) {
        this.f40928h = i11;
        requestLayout();
    }

    public void setMinChildSpacing(int i11) {
        this.f40923c = i11;
        requestLayout();
    }

    public void setRowSpacing(float f11) {
        this.f40925e = f11;
        requestLayout();
    }

    public void setRowVerticalGravity(int i11) {
        if (this.f40930j != i11) {
            this.f40930j = i11;
            requestLayout();
        }
    }

    public void setRtl(boolean z10) {
        this.f40927g = z10;
        requestLayout();
    }
}

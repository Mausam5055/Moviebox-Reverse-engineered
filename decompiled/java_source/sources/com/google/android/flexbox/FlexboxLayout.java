package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FlexboxLayout extends ViewGroup implements a {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f28080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Drawable f28081h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28082i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f28083j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f28084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f28085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f28086m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private SparseIntArray f28087n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f28088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f28089p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c.b f28090q;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public LayoutParams[] newArray(int i11) {
                return new LayoutParams[i11];
            }
        }

        public LayoutParams(int i11, int i12) {
            super(new ViewGroup.LayoutParams(i11, i12));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FlexboxLayout_Layout);
            this.mOrder = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_Layout_layout_order, 1);
            this.mFlexGrow = typedArrayObtainStyledAttributes.getFloat(R$styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.mFlexShrink = typedArrayObtainStyledAttributes.getFloat(R$styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.mAlignSelf = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.mFlexBasisPercent = typedArrayObtainStyledAttributes.getFraction(R$styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.mWrapBefore = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            typedArrayObtainStyledAttributes.recycle();
        }

        protected LayoutParams(Parcel parcel) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = parcel.readInt();
            this.mFlexGrow = parcel.readFloat();
            this.mFlexShrink = parcel.readFloat();
            this.mAlignSelf = parcel.readInt();
            this.mFlexBasisPercent = parcel.readFloat();
            this.mMinWidth = parcel.readInt();
            this.mMinHeight = parcel.readInt();
            this.mMaxWidth = parcel.readInt();
            this.mMaxHeight = parcel.readInt();
            this.mWrapBefore = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = layoutParams.mOrder;
            this.mFlexGrow = layoutParams.mFlexGrow;
            this.mFlexShrink = layoutParams.mFlexShrink;
            this.mAlignSelf = layoutParams.mAlignSelf;
            this.mFlexBasisPercent = layoutParams.mFlexBasisPercent;
            this.mMinWidth = layoutParams.mMinWidth;
            this.mMinHeight = layoutParams.mMinHeight;
            this.mMaxWidth = layoutParams.mMaxWidth;
            this.mMaxHeight = layoutParams.mMaxHeight;
            this.mWrapBefore = layoutParams.mWrapBefore;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.mOrder;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        public void setAlignSelf(int i11) {
            this.mAlignSelf = i11;
        }

        public void setFlexBasisPercent(float f11) {
            this.mFlexBasisPercent = f11;
        }

        public void setFlexGrow(float f11) {
            this.mFlexGrow = f11;
        }

        public void setFlexShrink(float f11) {
            this.mFlexShrink = f11;
        }

        public void setHeight(int i11) {
            ((ViewGroup.MarginLayoutParams) this).height = i11;
        }

        public void setMaxHeight(int i11) {
            this.mMaxHeight = i11;
        }

        public void setMaxWidth(int i11) {
            this.mMaxWidth = i11;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int i11) {
            this.mMinHeight = i11;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i11) {
            this.mMinWidth = i11;
        }

        public void setOrder(int i11) {
            this.mOrder = i11;
        }

        public void setWidth(int i11) {
            ((ViewGroup.MarginLayoutParams) this).width = i11;
        }

        public void setWrapBefore(boolean z10) {
            this.mWrapBefore = z10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.mOrder);
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f28079f = -1;
        this.f28088o = new c(this);
        this.f28089p = new ArrayList();
        this.f28090q = new c.b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FlexboxLayout, i11, 0);
        this.f28074a = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_flexDirection, 0);
        this.f28075b = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_flexWrap, 0);
        this.f28076c = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_justifyContent, 0);
        this.f28077d = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_alignItems, 0);
        this.f28078e = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_alignContent, 0);
        this.f28079f = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDivider, 0);
        if (i12 != 0) {
            this.f28083j = i12;
            this.f28082i = i12;
        }
        int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDividerVertical, 0);
        if (i13 != 0) {
            this.f28083j = i13;
        }
        int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i14 != 0) {
            this.f28082i = i14;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean a(int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (((b) this.f28089p.get(i12)).c() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean b(int i11, int i12) {
        for (int i13 = 1; i13 <= i12; i13++) {
            View reorderedChildAt = getReorderedChildAt(i11 - i13);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void c(Canvas canvas, boolean z10, boolean z11) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f28089p.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f28089p.get(i11);
            for (int i12 = 0; i12 < bVar.f28142h; i12++) {
                int i13 = bVar.f28149o + i12;
                View reorderedChildAt = getReorderedChildAt(i13);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (g(i13, i12)) {
                        f(canvas, z10 ? reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28085l, bVar.f28136b, bVar.f28141g);
                    }
                    if (i12 == bVar.f28142h - 1 && (this.f28083j & 4) > 0) {
                        f(canvas, z10 ? (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28085l : reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, bVar.f28136b, bVar.f28141g);
                    }
                }
            }
            if (h(i11)) {
                e(canvas, paddingLeft, z11 ? bVar.f28138d : bVar.f28136b - this.f28084k, iMax);
            }
            if (i(i11) && (this.f28082i & 4) > 0) {
                e(canvas, paddingLeft, z11 ? bVar.f28136b - this.f28084k : bVar.f28138d, iMax);
            }
        }
    }

    private void d(Canvas canvas, boolean z10, boolean z11) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f28089p.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f28089p.get(i11);
            for (int i12 = 0; i12 < bVar.f28142h; i12++) {
                int i13 = bVar.f28149o + i12;
                View reorderedChildAt = getReorderedChildAt(i13);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (g(i13, i12)) {
                        e(canvas, bVar.f28135a, z11 ? reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28084k, bVar.f28141g);
                    }
                    if (i12 == bVar.f28142h - 1 && (this.f28082i & 4) > 0) {
                        e(canvas, bVar.f28135a, z11 ? (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28084k : reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, bVar.f28141g);
                    }
                }
            }
            if (h(i11)) {
                f(canvas, z10 ? bVar.f28137c : bVar.f28135a - this.f28085l, paddingTop, iMax);
            }
            if (i(i11) && (this.f28083j & 4) > 0) {
                f(canvas, z10 ? bVar.f28135a - this.f28085l : bVar.f28137c, paddingTop, iMax);
            }
        }
    }

    private void e(Canvas canvas, int i11, int i12, int i13) {
        Drawable drawable = this.f28080g;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i11, i12, i13 + i11, this.f28084k + i12);
        this.f28080g.draw(canvas);
    }

    private void f(Canvas canvas, int i11, int i12, int i13) {
        Drawable drawable = this.f28081h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i11, i12, this.f28085l + i11, i13 + i12);
        this.f28081h.draw(canvas);
    }

    private boolean g(int i11, int i12) {
        if (b(i11, i12)) {
            if (isMainAxisDirectionHorizontal()) {
                return (this.f28083j & 1) != 0;
            }
            return (this.f28082i & 1) != 0;
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.f28083j & 2) != 0;
        }
        return (this.f28082i & 2) != 0;
    }

    private boolean h(int i11) {
        if (i11 < 0 || i11 >= this.f28089p.size()) {
            return false;
        }
        if (a(i11)) {
            if (isMainAxisDirectionHorizontal()) {
                return (this.f28082i & 1) != 0;
            }
            return (this.f28083j & 1) != 0;
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.f28082i & 2) != 0;
        }
        return (this.f28083j & 2) != 0;
    }

    private boolean i(int i11) {
        if (i11 < 0 || i11 >= this.f28089p.size()) {
            return false;
        }
        for (int i12 = i11 + 1; i12 < this.f28089p.size(); i12++) {
            if (((b) this.f28089p.get(i12)).c() > 0) {
                return false;
            }
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.f28082i & 4) != 0;
        }
        return (this.f28083j & 4) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00df  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x0108  */
    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
    /* JADX WARN: Code duplicated, block: B:52:0x011b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0123  */
    /* JADX WARN: Code duplicated, block: B:55:0x0128  */
    /* JADX WARN: Code duplicated, block: B:59:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x0133  */
    /* JADX WARN: Code duplicated, block: B:61:0x0166  */
    /* JADX WARN: Code duplicated, block: B:62:0x0190  */
    /* JADX WARN: Code duplicated, block: B:64:0x019d  */
    /* JADX WARN: Code duplicated, block: B:65:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:69:0x0200  */
    /* JADX WARN: Code duplicated, block: B:71:0x020f  */
    private void j(boolean z10, int i11, int i12, int i13, int i14) {
        float measuredWidth;
        float f11;
        float f12;
        float fMax;
        int i15;
        int i16;
        View reorderedChildAt;
        int i17;
        int i18;
        int i19;
        char c11;
        LayoutParams layoutParams;
        float f13;
        float f14;
        float f15;
        int i20;
        char c12;
        int i21;
        LayoutParams layoutParams2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i22 = i13 - i11;
        int paddingBottom = (i14 - i12) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f28089p.size();
        int i23 = 0;
        while (i23 < size) {
            b bVar = (b) this.f28089p.get(i23);
            if (h(i23)) {
                int i24 = this.f28084k;
                paddingBottom -= i24;
                paddingTop += i24;
            }
            int i25 = this.f28076c;
            char c13 = 4;
            int i26 = 1;
            if (i25 == 0) {
                measuredWidth = paddingLeft;
                f11 = i22 - paddingRight;
            } else if (i25 != 1) {
                if (i25 == 2) {
                    int i27 = bVar.f28139e;
                    measuredWidth = paddingLeft + ((i22 - i27) / 2.0f);
                    f11 = (i22 - paddingRight) - ((i22 - i27) / 2.0f);
                } else if (i25 == 3) {
                    measuredWidth = paddingLeft;
                    int iC = bVar.c();
                    f12 = (i22 - bVar.f28139e) / (iC != 1 ? iC - 1 : 1.0f);
                    f11 = i22 - paddingRight;
                } else if (i25 == 4) {
                    int iC2 = bVar.c();
                    f12 = iC2 != 0 ? (i22 - bVar.f28139e) / iC2 : 0.0f;
                    float f16 = f12 / 2.0f;
                    measuredWidth = paddingLeft + f16;
                    f11 = (i22 - paddingRight) - f16;
                } else {
                    if (i25 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f28076c);
                    }
                    int iC3 = bVar.c();
                    f12 = iC3 != 0 ? (i22 - bVar.f28139e) / (iC3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f12;
                    f11 = (i22 - paddingRight) - f12;
                }
                fMax = Math.max(f12, 0.0f);
                i15 = 0;
                while (i15 < bVar.f28142h) {
                    i16 = bVar.f28149o + i15;
                    reorderedChildAt = getReorderedChildAt(i16);
                    if (reorderedChildAt != null) {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        c11 = c13;
                    } else if (reorderedChildAt.getVisibility() == 8) {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        c11 = 4;
                    } else {
                        layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        f13 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        f14 = f11 - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        if (g(i16, i15)) {
                            int i28 = this.f28085l;
                            float f17 = i28;
                            f13 += f17;
                            i20 = i28;
                            f15 = f14 - f17;
                        } else {
                            f15 = f14;
                            i20 = 0;
                        }
                        if (i15 == bVar.f28142h - i26) {
                            c12 = 4;
                            i21 = (this.f28083j & 4) > 0 ? this.f28085l : 0;
                            if (this.f28075b == 2) {
                                i17 = paddingLeft;
                                i18 = i26;
                                i19 = i15;
                                layoutParams2 = layoutParams;
                                c11 = c12;
                                if (z10) {
                                    this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + reorderedChildAt.getMeasuredHeight());
                                } else {
                                    this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingTop, Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                                }
                            } else if (z10) {
                                i18 = i26;
                                i19 = i15;
                                i17 = paddingLeft;
                                layoutParams2 = layoutParams;
                                c11 = c12;
                                this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f15), paddingBottom);
                            } else {
                                i17 = paddingLeft;
                                i18 = i26;
                                i19 = i15;
                                layoutParams2 = layoutParams;
                                c11 = c12;
                                this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                            }
                            measuredWidth = f13 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                            float measuredWidth2 = f15 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                            if (z10) {
                                bVar.d(reorderedChildAt, i21, 0, i20, 0);
                            } else {
                                bVar.d(reorderedChildAt, i20, 0, i21, 0);
                            }
                            f11 = measuredWidth2;
                        } else {
                            c12 = 4;
                        }
                        if (this.f28075b == 2) {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            if (z10) {
                                this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingTop, Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i18 = i26;
                            i19 = i15;
                            i17 = paddingLeft;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f15), paddingBottom);
                        } else {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f13 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth3 = f15 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z10) {
                            bVar.d(reorderedChildAt, i21, 0, i20, 0);
                        } else {
                            bVar.d(reorderedChildAt, i20, 0, i21, 0);
                        }
                        f11 = measuredWidth3;
                    }
                    i15 = i19 + 1;
                    c13 = c11;
                    i26 = i18;
                    paddingLeft = i17;
                }
                int i29 = paddingLeft;
                int i30 = bVar.f28141g;
                paddingTop += i30;
                paddingBottom -= i30;
                i23++;
                paddingLeft = i29;
            } else {
                int i31 = bVar.f28139e;
                f11 = i31 - paddingLeft;
                measuredWidth = (i22 - i31) + paddingRight;
            }
            f12 = 0.0f;
            fMax = Math.max(f12, 0.0f);
            i15 = 0;
            while (i15 < bVar.f28142h) {
                i16 = bVar.f28149o + i15;
                reorderedChildAt = getReorderedChildAt(i16);
                if (reorderedChildAt != null) {
                    i17 = paddingLeft;
                    i18 = i26;
                    i19 = i15;
                    c11 = c13;
                } else if (reorderedChildAt.getVisibility() == 8) {
                    i17 = paddingLeft;
                    i18 = i26;
                    i19 = i15;
                    c11 = 4;
                } else {
                    layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    f13 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    f14 = f11 - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    if (g(i16, i15)) {
                        int i210 = this.f28085l;
                        float f18 = i210;
                        f13 += f18;
                        i20 = i210;
                        f15 = f14 - f18;
                    } else {
                        f15 = f14;
                        i20 = 0;
                    }
                    if (i15 == bVar.f28142h - i26) {
                        c12 = 4;
                        if ((this.f28083j & 4) > 0) {
                        }
                        if (this.f28075b == 2) {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            if (z10) {
                                this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingTop, Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i18 = i26;
                            i19 = i15;
                            i17 = paddingLeft;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f15), paddingBottom);
                        } else {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f13 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth4 = f15 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z10) {
                            bVar.d(reorderedChildAt, i21, 0, i20, 0);
                        } else {
                            bVar.d(reorderedChildAt, i20, 0, i21, 0);
                        }
                        f11 = measuredWidth4;
                    } else {
                        c12 = 4;
                    }
                    if (this.f28075b == 2) {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        layoutParams2 = layoutParams;
                        c11 = c12;
                        if (z10) {
                            this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + reorderedChildAt.getMeasuredHeight());
                        } else {
                            this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingTop, Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                        }
                    } else if (z10) {
                        i18 = i26;
                        i19 = i15;
                        i17 = paddingLeft;
                        layoutParams2 = layoutParams;
                        c11 = c12;
                        this.f28088o.Q(reorderedChildAt, bVar, Math.round(f15) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f15), paddingBottom);
                    } else {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        layoutParams2 = layoutParams;
                        c11 = c12;
                        this.f28088o.Q(reorderedChildAt, bVar, Math.round(f13), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f13) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                    }
                    measuredWidth = f13 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                    float measuredWidth5 = f15 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                    if (z10) {
                        bVar.d(reorderedChildAt, i21, 0, i20, 0);
                    } else {
                        bVar.d(reorderedChildAt, i20, 0, i21, 0);
                    }
                    f11 = measuredWidth5;
                }
                i15 = i19 + 1;
                c13 = c11;
                i26 = i18;
                paddingLeft = i17;
            }
            int i211 = paddingLeft;
            int i32 = bVar.f28141g;
            paddingTop += i32;
            paddingBottom -= i32;
            i23++;
            paddingLeft = i211;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:49:0x0102  */
    /* JADX WARN: Code duplicated, block: B:50:0x010e  */
    /* JADX WARN: Code duplicated, block: B:53:0x011a  */
    /* JADX WARN: Code duplicated, block: B:55:0x0122  */
    /* JADX WARN: Code duplicated, block: B:56:0x0127  */
    /* JADX WARN: Code duplicated, block: B:59:0x012d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x012f  */
    /* JADX WARN: Code duplicated, block: B:61:0x015e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0186  */
    /* JADX WARN: Code duplicated, block: B:64:0x0190  */
    /* JADX WARN: Code duplicated, block: B:65:0x01af  */
    /* JADX WARN: Code duplicated, block: B:68:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:69:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:71:0x0207  */
    private void k(boolean z10, boolean z11, int i11, int i12, int i13, int i14) {
        float f11;
        int i15;
        float f12;
        float f13;
        float fMax;
        int i16;
        int i17;
        View reorderedChildAt;
        int i18;
        boolean z12;
        char c11;
        LayoutParams layoutParams;
        float f14;
        float f15;
        float f16;
        float f17;
        int i19;
        char c12;
        int i20;
        LayoutParams layoutParams2;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i21 = i14 - i12;
        int i22 = (i13 - i11) - paddingRight;
        int size = this.f28089p.size();
        for (int i23 = 0; i23 < size; i23++) {
            b bVar = (b) this.f28089p.get(i23);
            if (h(i23)) {
                int i24 = this.f28085l;
                paddingLeft += i24;
                i22 -= i24;
            }
            int i25 = this.f28076c;
            char c13 = 4;
            boolean z13 = true;
            if (i25 != 0) {
                if (i25 == 1) {
                    int i26 = bVar.f28139e;
                    f11 = (i21 - i26) + paddingBottom;
                    i15 = i26 - paddingTop;
                } else if (i25 == 2) {
                    int i27 = bVar.f28139e;
                    f12 = (i21 - paddingBottom) - ((i21 - i27) / 2.0f);
                    f11 = paddingTop + ((i21 - i27) / 2.0f);
                    f13 = 0.0f;
                } else if (i25 == 3) {
                    f11 = paddingTop;
                    int iC = bVar.c();
                    f13 = (i21 - bVar.f28139e) / (iC != 1 ? iC - 1 : 1.0f);
                    f12 = i21 - paddingBottom;
                } else if (i25 == 4) {
                    int iC2 = bVar.c();
                    f13 = iC2 != 0 ? (i21 - bVar.f28139e) / iC2 : 0.0f;
                    float f18 = f13 / 2.0f;
                    f11 = paddingTop + f18;
                    f12 = (i21 - paddingBottom) - f18;
                } else {
                    if (i25 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f28076c);
                    }
                    int iC3 = bVar.c();
                    f13 = iC3 != 0 ? (i21 - bVar.f28139e) / (iC3 + 1) : 0.0f;
                    f11 = paddingTop + f13;
                    f12 = (i21 - paddingBottom) - f13;
                }
                fMax = Math.max(f13, 0.0f);
                i16 = 0;
                while (i16 < bVar.f28142h) {
                    i17 = bVar.f28149o + i16;
                    reorderedChildAt = getReorderedChildAt(i17);
                    if (reorderedChildAt != null) {
                        i18 = i16;
                        z12 = z13;
                        c11 = c13;
                    } else if (reorderedChildAt.getVisibility() == 8) {
                        i18 = i16;
                        z12 = true;
                        c11 = 4;
                    } else {
                        layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        f14 = f11 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        f15 = f12 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        if (g(i17, i16)) {
                            int i28 = this.f28084k;
                            float f19 = i28;
                            f16 = f14 + f19;
                            i19 = i28;
                            f17 = f15 - f19;
                        } else {
                            f16 = f14;
                            f17 = f15;
                            i19 = 0;
                        }
                        if (i16 == bVar.f28142h - 1) {
                            c12 = 4;
                            i20 = (this.f28082i & 4) > 0 ? this.f28084k : 0;
                            if (z10) {
                                i18 = i16;
                                z12 = true;
                                layoutParams2 = layoutParams;
                                c11 = c12;
                                if (z11) {
                                    this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f17) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f17));
                                } else {
                                    this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                                }
                            } else if (z11) {
                                i18 = i16;
                                z12 = true;
                                layoutParams2 = layoutParams;
                                c11 = c12;
                                this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f17) - reorderedChildAt.getMeasuredHeight(), i22, Math.round(f17));
                            } else {
                                i18 = i16;
                                z12 = true;
                                layoutParams2 = layoutParams;
                                c11 = c12;
                                this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                            }
                            LayoutParams layoutParams3 = layoutParams2;
                            float measuredHeight = f16 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                            float measuredHeight2 = f17 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin);
                            if (z11) {
                                bVar.d(reorderedChildAt, 0, i20, 0, i19);
                            } else {
                                bVar.d(reorderedChildAt, 0, i19, 0, i20);
                            }
                            f11 = measuredHeight;
                            f12 = measuredHeight2;
                        } else {
                            c12 = 4;
                        }
                        if (z10) {
                            i18 = i16;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            if (z11) {
                                this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f17) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f17));
                            } else {
                                this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i18 = i16;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f17) - reorderedChildAt.getMeasuredHeight(), i22, Math.round(f17));
                        } else {
                            i18 = i16;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams4 = layoutParams2;
                        float measuredHeight3 = f16 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin;
                        float measuredHeight4 = f17 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin);
                        if (z11) {
                            bVar.d(reorderedChildAt, 0, i20, 0, i19);
                        } else {
                            bVar.d(reorderedChildAt, 0, i19, 0, i20);
                        }
                        f11 = measuredHeight3;
                        f12 = measuredHeight4;
                    }
                    i16 = i18 + 1;
                    z13 = z12;
                    c13 = c11;
                }
                int i29 = bVar.f28141g;
                paddingLeft += i29;
                i22 -= i29;
            } else {
                f11 = paddingTop;
                i15 = i21 - paddingBottom;
            }
            f12 = i15;
            f13 = 0.0f;
            fMax = Math.max(f13, 0.0f);
            i16 = 0;
            while (i16 < bVar.f28142h) {
                i17 = bVar.f28149o + i16;
                reorderedChildAt = getReorderedChildAt(i17);
                if (reorderedChildAt != null) {
                    i18 = i16;
                    z12 = z13;
                    c11 = c13;
                } else if (reorderedChildAt.getVisibility() == 8) {
                    i18 = i16;
                    z12 = true;
                    c11 = 4;
                } else {
                    layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    f14 = f11 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    f15 = f12 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    if (g(i17, i16)) {
                        int i210 = this.f28084k;
                        float f110 = i210;
                        f16 = f14 + f110;
                        i19 = i210;
                        f17 = f15 - f110;
                    } else {
                        f16 = f14;
                        f17 = f15;
                        i19 = 0;
                    }
                    if (i16 == bVar.f28142h - 1) {
                        c12 = 4;
                        if ((this.f28082i & 4) > 0) {
                        }
                        if (z10) {
                            i18 = i16;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            if (z11) {
                                this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f17) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f17));
                            } else {
                                this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i18 = i16;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f17) - reorderedChildAt.getMeasuredHeight(), i22, Math.round(f17));
                        } else {
                            i18 = i16;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c11 = c12;
                            this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams5 = layoutParams2;
                        float measuredHeight5 = f16 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin;
                        float measuredHeight6 = f17 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin);
                        if (z11) {
                            bVar.d(reorderedChildAt, 0, i20, 0, i19);
                        } else {
                            bVar.d(reorderedChildAt, 0, i19, 0, i20);
                        }
                        f11 = measuredHeight5;
                        f12 = measuredHeight6;
                    } else {
                        c12 = 4;
                    }
                    if (z10) {
                        i18 = i16;
                        z12 = true;
                        layoutParams2 = layoutParams;
                        c11 = c12;
                        if (z11) {
                            this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f17) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f17));
                        } else {
                            this.f28088o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                        }
                    } else if (z11) {
                        i18 = i16;
                        z12 = true;
                        layoutParams2 = layoutParams;
                        c11 = c12;
                        this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f17) - reorderedChildAt.getMeasuredHeight(), i22, Math.round(f17));
                    } else {
                        i18 = i16;
                        z12 = true;
                        layoutParams2 = layoutParams;
                        c11 = c12;
                        this.f28088o.R(reorderedChildAt, bVar, true, i22 - reorderedChildAt.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + reorderedChildAt.getMeasuredHeight());
                    }
                    LayoutParams layoutParams6 = layoutParams2;
                    float measuredHeight7 = f16 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin;
                    float measuredHeight8 = f17 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin);
                    if (z11) {
                        bVar.d(reorderedChildAt, 0, i20, 0, i19);
                    } else {
                        bVar.d(reorderedChildAt, 0, i19, 0, i20);
                    }
                    f11 = measuredHeight7;
                    f12 = measuredHeight8;
                }
                i16 = i18 + 1;
                z13 = z12;
                c13 = c11;
            }
            int i211 = bVar.f28141g;
            paddingLeft += i211;
            i22 -= i211;
        }
    }

    private void l(int i11, int i12) {
        this.f28089p.clear();
        this.f28090q.a();
        this.f28088o.c(this.f28090q, i11, i12);
        this.f28089p = this.f28090q.f28158a;
        this.f28088o.p(i11, i12);
        if (this.f28077d == 3) {
            for (b bVar : this.f28089p) {
                int iMax = Integer.MIN_VALUE;
                for (int i13 = 0; i13 < bVar.f28142h; i13++) {
                    View reorderedChildAt = getReorderedChildAt(bVar.f28149o + i13);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        iMax = this.f28075b != 2 ? Math.max(iMax, reorderedChildAt.getMeasuredHeight() + Math.max(bVar.f28146l - reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(iMax, reorderedChildAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((bVar.f28146l - reorderedChildAt.getMeasuredHeight()) + reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                    }
                }
                bVar.f28141g = iMax;
            }
        }
        this.f28088o.o(i11, i12, getPaddingTop() + getPaddingBottom());
        this.f28088o.X();
        n(this.f28074a, i11, i12, this.f28090q.f28159b);
    }

    private void m(int i11, int i12) {
        this.f28089p.clear();
        this.f28090q.a();
        this.f28088o.f(this.f28090q, i11, i12);
        this.f28089p = this.f28090q.f28158a;
        this.f28088o.p(i11, i12);
        this.f28088o.o(i11, i12, getPaddingLeft() + getPaddingRight());
        this.f28088o.X();
        n(this.f28074a, i11, i12, this.f28090q.f28159b);
    }

    private void n(int i11, int i12, int i13, int i14) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i12);
        int mode2 = View.MeasureSpec.getMode(i13);
        int size2 = View.MeasureSpec.getSize(i13);
        if (i11 == 0 || i11 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i11 != 2 && i11 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + i11);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i14 = View.combineMeasuredStates(i14, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i12, i14);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i12, i14);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: " + mode);
            }
            if (size < largestMainSize) {
                i14 = View.combineMeasuredStates(i14, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i12, i14);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i14 = View.combineMeasuredStates(i14, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i13, i14);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i13, i14);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: " + mode2);
            }
            if (size2 < sumOfCrossSize) {
                i14 = View.combineMeasuredStates(i14, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i13, i14);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void o() {
        if (this.f28080g == null && this.f28081h == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (this.f28087n == null) {
            this.f28087n = new SparseIntArray(getChildCount());
        }
        this.f28086m = this.f28088o.n(view, i11, layoutParams, this.f28087n);
        super.addView(view, i11, layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // com.google.android.flexbox.a
    public int getAlignContent() {
        return this.f28078e;
    }

    @Override // com.google.android.flexbox.a
    public int getAlignItems() {
        return this.f28077d;
    }

    @Override // com.google.android.flexbox.a
    public int getChildHeightMeasureSpec(int i11, int i12, int i13) {
        return ViewGroup.getChildMeasureSpec(i11, i12, i13);
    }

    @Override // com.google.android.flexbox.a
    public int getChildWidthMeasureSpec(int i11, int i12, int i13) {
        return ViewGroup.getChildMeasureSpec(i11, i12, i13);
    }

    @Override // com.google.android.flexbox.a
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override // com.google.android.flexbox.a
    public int getDecorationLengthMainAxis(View view, int i11, int i12) {
        int i13;
        int i14;
        if (isMainAxisDirectionHorizontal()) {
            i13 = g(i11, i12) ? this.f28085l : 0;
            if ((this.f28083j & 4) <= 0) {
                return i13;
            }
            i14 = this.f28085l;
        } else {
            i13 = g(i11, i12) ? this.f28084k : 0;
            if ((this.f28082i & 4) <= 0) {
                return i13;
            }
            i14 = this.f28084k;
        }
        return i13 + i14;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f28080g;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f28081h;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexDirection() {
        return this.f28074a;
    }

    @Override // com.google.android.flexbox.a
    public View getFlexItemAt(int i11) {
        return getChildAt(i11);
    }

    @Override // com.google.android.flexbox.a
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<b> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f28089p.size());
        for (b bVar : this.f28089p) {
            if (bVar.c() != 0) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.a
    public List<b> getFlexLinesInternal() {
        return this.f28089p;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexWrap() {
        return this.f28075b;
    }

    public int getJustifyContent() {
        return this.f28076c;
    }

    @Override // com.google.android.flexbox.a
    public int getLargestMainSize() {
        Iterator it = this.f28089p.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((b) it.next()).f28139e);
        }
        return iMax;
    }

    @Override // com.google.android.flexbox.a
    public int getMaxLine() {
        return this.f28079f;
    }

    public View getReorderedChildAt(int i11) {
        if (i11 < 0) {
            return null;
        }
        int[] iArr = this.f28086m;
        if (i11 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i11]);
    }

    @Override // com.google.android.flexbox.a
    public View getReorderedFlexItemAt(int i11) {
        return getReorderedChildAt(i11);
    }

    public int getShowDividerHorizontal() {
        return this.f28082i;
    }

    public int getShowDividerVertical() {
        return this.f28083j;
    }

    @Override // com.google.android.flexbox.a
    public int getSumOfCrossSize() {
        int size = this.f28089p.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            b bVar = (b) this.f28089p.get(i12);
            if (h(i12)) {
                i11 += isMainAxisDirectionHorizontal() ? this.f28084k : this.f28085l;
            }
            if (i(i12)) {
                i11 += isMainAxisDirectionHorizontal() ? this.f28084k : this.f28085l;
            }
            i11 += bVar.f28141g;
        }
        return i11;
    }

    @Override // com.google.android.flexbox.a
    public boolean isMainAxisDirectionHorizontal() {
        int i11 = this.f28074a;
        return i11 == 0 || i11 == 1;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f28081h == null && this.f28080g == null) {
            return;
        }
        if (this.f28082i == 0 && this.f28083j == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i11 = this.f28074a;
        if (i11 == 0) {
            c(canvas, layoutDirection == 1, this.f28075b == 2);
            return;
        }
        if (i11 == 1) {
            c(canvas, layoutDirection != 1, this.f28075b == 2);
            return;
        }
        if (i11 == 2) {
            boolean z10 = layoutDirection == 1;
            if (this.f28075b == 2) {
                z10 = !z10;
            }
            d(canvas, z10, false);
            return;
        }
        if (i11 != 3) {
            return;
        }
        boolean z11 = layoutDirection == 1;
        if (this.f28075b == 2) {
            z11 = !z11;
        }
        d(canvas, z11, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        boolean z11;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i15 = this.f28074a;
        if (i15 == 0) {
            j(layoutDirection == 1, i11, i12, i13, i14);
            return;
        }
        if (i15 == 1) {
            j(layoutDirection != 1, i11, i12, i13, i14);
            return;
        }
        if (i15 == 2) {
            z11 = layoutDirection == 1;
            k(this.f28075b == 2 ? !z11 : z11, false, i11, i12, i13, i14);
        } else if (i15 == 3) {
            z11 = layoutDirection == 1;
            k(this.f28075b == 2 ? !z11 : z11, true, i11, i12, i13, i14);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.f28074a);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.f28087n == null) {
            this.f28087n = new SparseIntArray(getChildCount());
        }
        if (this.f28088o.O(this.f28087n)) {
            this.f28086m = this.f28088o.m(this.f28087n);
        }
        int i13 = this.f28074a;
        if (i13 == 0 || i13 == 1) {
            l(i11, i12);
            return;
        }
        if (i13 == 2 || i13 == 3) {
            m(i11, i12);
            return;
        }
        throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f28074a);
    }

    @Override // com.google.android.flexbox.a
    public void onNewFlexItemAdded(View view, int i11, int i12, b bVar) {
        if (g(i11, i12)) {
            if (isMainAxisDirectionHorizontal()) {
                int i13 = bVar.f28139e;
                int i14 = this.f28085l;
                bVar.f28139e = i13 + i14;
                bVar.f28140f += i14;
                return;
            }
            int i15 = bVar.f28139e;
            int i16 = this.f28084k;
            bVar.f28139e = i15 + i16;
            bVar.f28140f += i16;
        }
    }

    @Override // com.google.android.flexbox.a
    public void onNewFlexLineAdded(b bVar) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.f28083j & 4) > 0) {
                int i11 = bVar.f28139e;
                int i12 = this.f28085l;
                bVar.f28139e = i11 + i12;
                bVar.f28140f += i12;
                return;
            }
            return;
        }
        if ((this.f28082i & 4) > 0) {
            int i13 = bVar.f28139e;
            int i14 = this.f28084k;
            bVar.f28139e = i13 + i14;
            bVar.f28140f += i14;
        }
    }

    public void setAlignContent(int i11) {
        if (this.f28078e != i11) {
            this.f28078e = i11;
            requestLayout();
        }
    }

    public void setAlignItems(int i11) {
        if (this.f28077d != i11) {
            this.f28077d = i11;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.f28080g) {
            return;
        }
        this.f28080g = drawable;
        if (drawable != null) {
            this.f28084k = drawable.getIntrinsicHeight();
        } else {
            this.f28084k = 0;
        }
        o();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.f28081h) {
            return;
        }
        this.f28081h = drawable;
        if (drawable != null) {
            this.f28085l = drawable.getIntrinsicWidth();
        } else {
            this.f28085l = 0;
        }
        o();
        requestLayout();
    }

    public void setFlexDirection(int i11) {
        if (this.f28074a != i11) {
            this.f28074a = i11;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.a
    public void setFlexLines(List<b> list) {
        this.f28089p = list;
    }

    public void setFlexWrap(int i11) {
        if (this.f28075b != i11) {
            this.f28075b = i11;
            requestLayout();
        }
    }

    public void setJustifyContent(int i11) {
        if (this.f28076c != i11) {
            this.f28076c = i11;
            requestLayout();
        }
    }

    public void setMaxLine(int i11) {
        if (this.f28079f != i11) {
            this.f28079f = i11;
            requestLayout();
        }
    }

    public void setShowDivider(int i11) {
        setShowDividerVertical(i11);
        setShowDividerHorizontal(i11);
    }

    public void setShowDividerHorizontal(int i11) {
        if (i11 != this.f28082i) {
            this.f28082i = i11;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i11) {
        if (i11 != this.f28083j) {
            this.f28083j = i11;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.a
    public void updateViewCache(int i11, View view) {
    }
}

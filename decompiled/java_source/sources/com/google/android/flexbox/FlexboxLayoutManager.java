package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import androidx.recyclerview.widget.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FlexboxLayoutManager extends RecyclerView.m implements com.google.android.flexbox.a, RecyclerView.x.b {
    private static final Rect A = new Rect();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List f28098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.android.flexbox.c f28099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RecyclerView.t f28100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RecyclerView.y f28101k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f28102l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f28103m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private m f28104n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private m f28105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private SavedState f28106p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f28107q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f28108r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f28109s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f28110t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f28111u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private SparseArray f28112v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Context f28113w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View f28114x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f28115y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.google.android.flexbox.c.b f28116z;

    public static class LayoutParams extends RecyclerView.n implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
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
            super(i11, i12);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        protected LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(RecyclerView.n nVar) {
            super(nVar);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.n) layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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
            return 1;
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
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
        }

        public void setWidth(int i11) {
            ((ViewGroup.MarginLayoutParams) this).width = i11;
        }

        public void setWrapBefore(boolean z10) {
            this.mWrapBefore = z10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
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

    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        private int mAnchorOffset;
        private int mAnchorPosition;

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

        private SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean g(int i11) {
            int i12 = this.mAnchorPosition;
            return i12 >= 0 && i12 < i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.mAnchorPosition + ", mAnchorOffset=" + this.mAnchorOffset + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }
    }

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f28117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f28118b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f28119c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f28120d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f28121e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f28122f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f28123g;

        private b() {
            this.f28120d = 0;
        }

        static /* synthetic */ int l(b bVar, int i11) {
            int i12 = bVar.f28120d + i11;
            bVar.f28120d = i12;
            return i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f28096f) {
                this.f28119c = this.f28121e ? FlexboxLayoutManager.this.f28104n.i() : FlexboxLayoutManager.this.f28104n.m();
            } else {
                this.f28119c = this.f28121e ? FlexboxLayoutManager.this.f28104n.i() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f28104n.m();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(View view) {
            m mVar = FlexboxLayoutManager.this.f28092b == 0 ? FlexboxLayoutManager.this.f28105o : FlexboxLayoutManager.this.f28104n;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f28096f) {
                if (this.f28121e) {
                    this.f28119c = mVar.d(view) + mVar.o();
                } else {
                    this.f28119c = mVar.g(view);
                }
            } else if (this.f28121e) {
                this.f28119c = mVar.g(view) + mVar.o();
            } else {
                this.f28119c = mVar.d(view);
            }
            this.f28117a = FlexboxLayoutManager.this.getPosition(view);
            this.f28123g = false;
            int[] iArr = FlexboxLayoutManager.this.f28099i.f28155c;
            int i11 = this.f28117a;
            if (i11 == -1) {
                i11 = 0;
            }
            int i12 = iArr[i11];
            this.f28118b = i12 != -1 ? i12 : 0;
            if (FlexboxLayoutManager.this.f28098h.size() > this.f28118b) {
                this.f28117a = ((com.google.android.flexbox.b) FlexboxLayoutManager.this.f28098h.get(this.f28118b)).f28149o;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t() {
            this.f28117a = -1;
            this.f28118b = -1;
            this.f28119c = Integer.MIN_VALUE;
            this.f28122f = false;
            this.f28123g = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.f28092b == 0) {
                    this.f28121e = FlexboxLayoutManager.this.f28091a == 1;
                    return;
                } else {
                    this.f28121e = FlexboxLayoutManager.this.f28092b == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f28092b == 0) {
                this.f28121e = FlexboxLayoutManager.this.f28091a == 3;
            } else {
                this.f28121e = FlexboxLayoutManager.this.f28092b == 2;
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f28117a + ", mFlexLinePosition=" + this.f28118b + ", mCoordinate=" + this.f28119c + ", mPerpendicularCoordinate=" + this.f28120d + ", mLayoutFromEnd=" + this.f28121e + ", mValid=" + this.f28122f + ", mAssignedFromSavedState=" + this.f28123g + '}';
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f28125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f28126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f28127c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f28128d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f28129e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f28130f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f28131g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f28132h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f28133i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f28134j;

        private c() {
            this.f28132h = 1;
            this.f28133i = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean D(RecyclerView.y yVar, List list) {
            int i11;
            int i12 = this.f28128d;
            return i12 >= 0 && i12 < yVar.b() && (i11 = this.f28127c) >= 0 && i11 < list.size();
        }

        static /* synthetic */ int c(c cVar, int i11) {
            int i12 = cVar.f28129e + i11;
            cVar.f28129e = i12;
            return i12;
        }

        static /* synthetic */ int d(c cVar, int i11) {
            int i12 = cVar.f28129e - i11;
            cVar.f28129e = i12;
            return i12;
        }

        static /* synthetic */ int i(c cVar, int i11) {
            int i12 = cVar.f28125a - i11;
            cVar.f28125a = i12;
            return i12;
        }

        static /* synthetic */ int l(c cVar) {
            int i11 = cVar.f28127c;
            cVar.f28127c = i11 + 1;
            return i11;
        }

        static /* synthetic */ int m(c cVar) {
            int i11 = cVar.f28127c;
            cVar.f28127c = i11 - 1;
            return i11;
        }

        static /* synthetic */ int n(c cVar, int i11) {
            int i12 = cVar.f28127c + i11;
            cVar.f28127c = i12;
            return i12;
        }

        static /* synthetic */ int q(c cVar, int i11) {
            int i12 = cVar.f28130f + i11;
            cVar.f28130f = i12;
            return i12;
        }

        static /* synthetic */ int u(c cVar, int i11) {
            int i12 = cVar.f28128d + i11;
            cVar.f28128d = i12;
            return i12;
        }

        static /* synthetic */ int v(c cVar, int i11) {
            int i12 = cVar.f28128d - i11;
            cVar.f28128d = i12;
            return i12;
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.f28125a + ", mFlexLinePosition=" + this.f28127c + ", mPosition=" + this.f28128d + ", mOffset=" + this.f28129e + ", mScrollingOffset=" + this.f28130f + ", mLastScrollDelta=" + this.f28131g + ", mItemDirection=" + this.f28132h + ", mLayoutDirection=" + this.f28133i + '}';
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    public FlexboxLayoutManager(Context context, int i11, int i12) {
        this.f28095e = -1;
        this.f28098h = new ArrayList();
        this.f28099i = new com.google.android.flexbox.c(this);
        this.f28103m = new b();
        this.f28107q = -1;
        this.f28108r = Integer.MIN_VALUE;
        this.f28109s = Integer.MIN_VALUE;
        this.f28110t = Integer.MIN_VALUE;
        this.f28112v = new SparseArray();
        this.f28115y = -1;
        this.f28116z = new com.google.android.flexbox.c.b();
        c0(i11);
        d0(i12);
        b0(4);
        this.f28113w = context;
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        this.f28095e = -1;
        this.f28098h = new ArrayList();
        this.f28099i = new com.google.android.flexbox.c(this);
        this.f28103m = new b();
        this.f28107q = -1;
        this.f28108r = Integer.MIN_VALUE;
        this.f28109s = Integer.MIN_VALUE;
        this.f28110t = Integer.MIN_VALUE;
        this.f28112v = new SparseArray();
        this.f28115y = -1;
        this.f28116z = new com.google.android.flexbox.c.b();
        RecyclerView.m.d properties = RecyclerView.m.getProperties(context, attributeSet, i11, i12);
        int i13 = properties.f14238a;
        if (i13 != 0) {
            if (i13 == 1) {
                if (properties.f14240c) {
                    c0(3);
                } else {
                    c0(2);
                }
            }
        } else if (properties.f14240c) {
            c0(1);
        } else {
            c0(0);
        }
        d0(1);
        b0(4);
        this.f28113w = context;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    private View A(View view, com.google.android.flexbox.b bVar) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i11 = bVar.f28142h;
        for (int i12 = 1; i12 < i11; i12++) {
            View childAt = getChildAt(i12);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f28096f || zIsMainAxisDirectionHorizontal) {
                    if (this.f28104n.g(view) > this.f28104n.g(childAt)) {
                        view = childAt;
                    }
                } else if (this.f28104n.d(view) < this.f28104n.d(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View B(int i11) {
        View viewE = E(getChildCount() - 1, -1, i11);
        if (viewE == null) {
            return null;
        }
        return C(viewE, (com.google.android.flexbox.b) this.f28098h.get(this.f28099i.f28155c[getPosition(viewE)]));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    private View C(View view, com.google.android.flexbox.b bVar) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - bVar.f28142h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f28096f || zIsMainAxisDirectionHorizontal) {
                    if (this.f28104n.d(view) < this.f28104n.d(childAt)) {
                        view = childAt;
                    }
                } else if (this.f28104n.g(view) > this.f28104n.g(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View D(int i11, int i12, boolean z10) {
        int i13 = i12 > i11 ? 1 : -1;
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (R(childAt, z10)) {
                return childAt;
            }
            i11 += i13;
        }
        return null;
    }

    private View E(int i11, int i12, int i13) {
        int position;
        x();
        ensureLayoutState();
        int iM = this.f28104n.m();
        int i14 = this.f28104n.i();
        int i15 = i12 > i11 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i13) {
                if (((RecyclerView.n) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f28104n.g(childAt) >= iM && this.f28104n.d(childAt) <= i14) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i11 += i15;
        }
        return view != null ? view : view2;
    }

    private int F(int i11, RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iO;
        int i12;
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            int i13 = this.f28104n.i() - i11;
            if (i13 <= 0) {
                return 0;
            }
            iO = -O(-i13, tVar, yVar);
        } else {
            int iM = i11 - this.f28104n.m();
            if (iM <= 0) {
                return 0;
            }
            iO = O(iM, tVar, yVar);
        }
        int i14 = i11 + iO;
        if (!z10 || (i12 = this.f28104n.i() - i14) <= 0) {
            return iO;
        }
        this.f28104n.r(i12);
        return i12 + iO;
    }

    private int G(int i11, RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iO;
        int iM;
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            int iM2 = i11 - this.f28104n.m();
            if (iM2 <= 0) {
                return 0;
            }
            iO = -O(iM2, tVar, yVar);
        } else {
            int i12 = this.f28104n.i() - i11;
            if (i12 <= 0) {
                return 0;
            }
            iO = O(-i12, tVar, yVar);
        }
        int i13 = i11 + iO;
        if (!z10 || (iM = i13 - this.f28104n.m()) <= 0) {
            return iO;
        }
        this.f28104n.r(-iM);
        return iO - iM;
    }

    private int H(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).bottomMargin;
    }

    private View I() {
        return getChildAt(0);
    }

    private int J(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).leftMargin;
    }

    private int K(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).rightMargin;
    }

    private int L(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).topMargin;
    }

    private int O(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (getChildCount() == 0 || i11 == 0) {
            return 0;
        }
        x();
        int i12 = 1;
        this.f28102l.f28134j = true;
        boolean z10 = !isMainAxisDirectionHorizontal() && this.f28096f;
        if (!z10 ? i11 <= 0 : i11 >= 0) {
            i12 = -1;
        }
        int iAbs = Math.abs(i11);
        k0(i12, iAbs);
        int iY = this.f28102l.f28130f + y(tVar, yVar, this.f28102l);
        if (iY < 0) {
            return 0;
        }
        if (z10) {
            if (iAbs > iY) {
                i11 = (-i12) * iY;
            }
        } else if (iAbs > iY) {
            i11 = i12 * iY;
        }
        this.f28104n.r(-i11);
        this.f28102l.f28131g = i11;
        return i11;
    }

    private int P(int i11) {
        int iMin;
        if (getChildCount() == 0 || i11 == 0) {
            return 0;
        }
        x();
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.f28114x;
        int width = zIsMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int width2 = zIsMainAxisDirectionHorizontal ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int iAbs = Math.abs(i11);
            if (i11 < 0) {
                iMin = Math.min((width2 + this.f28103m.f28120d) - width, iAbs);
            } else {
                if (this.f28103m.f28120d + i11 <= 0) {
                    return i11;
                }
                iMin = this.f28103m.f28120d;
            }
        } else {
            if (i11 > 0) {
                return Math.min((width2 - this.f28103m.f28120d) - width, i11);
            }
            if (this.f28103m.f28120d + i11 >= 0) {
                return i11;
            }
            iMin = this.f28103m.f28120d;
        }
        return -iMin;
    }

    private boolean R(View view, boolean z10) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int iJ = J(view);
        int iL = L(view);
        int iK = K(view);
        int iH = H(view);
        boolean z11 = paddingLeft <= iJ && width >= iK;
        boolean z12 = iJ >= width || iK >= paddingLeft;
        boolean z13 = paddingTop <= iL && height >= iH;
        boolean z14 = iL >= height || iH >= paddingTop;
        if (z10) {
            return z11 && z13;
        }
        return z12 && z14;
    }

    private int S(com.google.android.flexbox.b bVar, c cVar) {
        return isMainAxisDirectionHorizontal() ? T(bVar, cVar) : U(bVar, cVar);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00de  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    /* JADX WARN: Code duplicated, block: B:54:0x0152  */
    /* JADX WARN: Code duplicated, block: B:61:0x0195 A[SYNTHETIC] */
    private int T(com.google.android.flexbox.b bVar, c cVar) {
        float f11;
        float f12;
        float f13;
        float measuredWidth;
        float measuredWidth2;
        float fMax;
        int iB;
        int i11;
        int i12;
        View flexItemAt;
        int iY;
        int iX;
        LayoutParams layoutParams;
        float leftDecorationWidth;
        float rightDecorationWidth;
        int topDecorationHeight;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int width = getWidth();
        int i13 = cVar.f28129e;
        if (cVar.f28133i == -1) {
            i13 -= bVar.f28141g;
        }
        int i14 = i13;
        int i15 = cVar.f28128d;
        int i16 = this.f28093c;
        int i17 = 1;
        if (i16 != 0) {
            if (i16 == 1) {
                int i18 = bVar.f28139e;
                float f14 = (width - i18) + paddingRight;
                f13 = 0.0f;
                f12 = i18 - paddingLeft;
                f11 = f14;
            } else if (i16 == 2) {
                int i19 = bVar.f28139e;
                f11 = paddingLeft + ((width - i19) / 2.0f);
                f12 = (width - paddingRight) - ((width - i19) / 2.0f);
            } else if (i16 == 3) {
                f11 = paddingLeft;
                int i20 = bVar.f28142h;
                f13 = (width - bVar.f28139e) / (i20 != 1 ? i20 - 1 : 1.0f);
                f12 = width - paddingRight;
            } else if (i16 == 4) {
                int i21 = bVar.f28142h;
                f13 = i21 != 0 ? (width - bVar.f28139e) / i21 : 0.0f;
                float f15 = f13 / 2.0f;
                f11 = paddingLeft + f15;
                f12 = (width - paddingRight) - f15;
            } else {
                if (i16 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f28093c);
                }
                int i22 = bVar.f28142h;
                f13 = i22 != 0 ? (width - bVar.f28139e) / (i22 + 1) : 0.0f;
                f11 = paddingLeft + f13;
                f12 = (width - paddingRight) - f13;
            }
            measuredWidth = f11 - this.f28103m.f28120d;
            measuredWidth2 = f12 - this.f28103m.f28120d;
            fMax = Math.max(f13, 0.0f);
            iB = bVar.b();
            i11 = 0;
            i12 = i15;
            while (i12 < i15 + iB) {
                flexItemAt = getFlexItemAt(i12);
                if (flexItemAt != null) {
                    if (cVar.f28133i == i17) {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt, i11);
                        i11++;
                    }
                    int i23 = i11;
                    com.google.android.flexbox.c cVar2 = this.f28099i;
                    long j11 = cVar2.f28156d[i12];
                    iY = cVar2.y(j11);
                    iX = this.f28099i.x(j11);
                    layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                        flexItemAt.measure(iY, iX);
                    }
                    leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + getLeftDecorationWidth(flexItemAt);
                    rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt));
                    topDecorationHeight = i14 + getTopDecorationHeight(flexItemAt);
                    if (this.f28096f) {
                        this.f28099i.Q(flexItemAt, bVar, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    } else {
                        this.f28099i.Q(flexItemAt, bVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    }
                    i11 = i23;
                    measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                    measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
                }
                i12++;
                i17 = 1;
            }
            c.n(cVar, this.f28102l.f28133i);
            return bVar.a();
        }
        f11 = paddingLeft;
        f12 = width - paddingRight;
        f13 = 0.0f;
        measuredWidth = f11 - this.f28103m.f28120d;
        measuredWidth2 = f12 - this.f28103m.f28120d;
        fMax = Math.max(f13, 0.0f);
        iB = bVar.b();
        i11 = 0;
        i12 = i15;
        while (i12 < i15 + iB) {
            flexItemAt = getFlexItemAt(i12);
            if (flexItemAt != null) {
                if (cVar.f28133i == i17) {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt);
                } else {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt, i11);
                    i11++;
                }
                int i24 = i11;
                com.google.android.flexbox.c cVar3 = this.f28099i;
                long j12 = cVar3.f28156d[i12];
                iY = cVar3.y(j12);
                iX = this.f28099i.x(j12);
                layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                    flexItemAt.measure(iY, iX);
                }
                leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + getLeftDecorationWidth(flexItemAt);
                rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt));
                topDecorationHeight = i14 + getTopDecorationHeight(flexItemAt);
                if (this.f28096f) {
                    this.f28099i.Q(flexItemAt, bVar, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                } else {
                    this.f28099i.Q(flexItemAt, bVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                }
                i11 = i24;
                measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
            }
            i12++;
            i17 = 1;
        }
        c.n(cVar, this.f28102l.f28133i);
        return bVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:45:0x0103  */
    /* JADX WARN: Code duplicated, block: B:48:0x0121  */
    /* JADX WARN: Code duplicated, block: B:50:0x012c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0147  */
    /* JADX WARN: Code duplicated, block: B:55:0x014b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0175  */
    /* JADX WARN: Code duplicated, block: B:57:0x019b  */
    /* JADX WARN: Code duplicated, block: B:59:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:60:0x01c3  */
    private int U(com.google.android.flexbox.b bVar, c cVar) {
        float f11;
        float f12;
        float f13;
        float measuredHeight;
        float measuredHeight2;
        float fMax;
        int iB;
        int i11;
        int i12;
        View flexItemAt;
        float f14;
        int iY;
        int iX;
        LayoutParams layoutParams;
        float topDecorationHeight;
        float bottomDecorationHeight;
        int leftDecorationWidth;
        int rightDecorationWidth;
        boolean z10;
        boolean z11;
        View view;
        int i13;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i14 = cVar.f28129e;
        int i15 = cVar.f28129e;
        if (cVar.f28133i == -1) {
            int i16 = bVar.f28141g;
            i14 -= i16;
            i15 += i16;
        }
        int i17 = i14;
        int i18 = i15;
        int i19 = cVar.f28128d;
        int i20 = this.f28093c;
        boolean z12 = true;
        if (i20 != 0) {
            if (i20 == 1) {
                int i21 = bVar.f28139e;
                float f15 = (height - i21) + paddingBottom;
                f13 = 0.0f;
                f12 = i21 - paddingTop;
                f11 = f15;
            } else if (i20 == 2) {
                int i22 = bVar.f28139e;
                f11 = paddingTop + ((height - i22) / 2.0f);
                f12 = (height - paddingBottom) - ((height - i22) / 2.0f);
            } else if (i20 == 3) {
                f11 = paddingTop;
                int i23 = bVar.f28142h;
                f13 = (height - bVar.f28139e) / (i23 != 1 ? i23 - 1 : 1.0f);
                f12 = height - paddingBottom;
            } else if (i20 == 4) {
                int i24 = bVar.f28142h;
                f13 = i24 != 0 ? (height - bVar.f28139e) / i24 : 0.0f;
                float f16 = f13 / 2.0f;
                f11 = paddingTop + f16;
                f12 = (height - paddingBottom) - f16;
            } else {
                if (i20 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f28093c);
                }
                int i25 = bVar.f28142h;
                f13 = i25 != 0 ? (height - bVar.f28139e) / (i25 + 1) : 0.0f;
                f11 = paddingTop + f13;
                f12 = (height - paddingBottom) - f13;
            }
            measuredHeight = f11 - this.f28103m.f28120d;
            measuredHeight2 = f12 - this.f28103m.f28120d;
            fMax = Math.max(f13, 0.0f);
            iB = bVar.b();
            i11 = 0;
            i12 = i19;
            while (i12 < i19 + iB) {
                flexItemAt = getFlexItemAt(i12);
                if (flexItemAt == null) {
                    i13 = i12;
                    z11 = z12;
                    f14 = fMax;
                } else {
                    com.google.android.flexbox.c cVar2 = this.f28099i;
                    f14 = fMax;
                    long j11 = cVar2.f28156d[i12];
                    iY = cVar2.y(j11);
                    iX = this.f28099i.x(j11);
                    layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                        flexItemAt.measure(iY, iX);
                    }
                    topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getTopDecorationHeight(flexItemAt);
                    bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getBottomDecorationHeight(flexItemAt));
                    if (cVar.f28133i == 1) {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt, i11);
                        i11++;
                    }
                    int i26 = i11;
                    leftDecorationWidth = i17 + getLeftDecorationWidth(flexItemAt);
                    rightDecorationWidth = i18 - getRightDecorationWidth(flexItemAt);
                    z10 = this.f28096f;
                    if (z10) {
                        z11 = true;
                        view = flexItemAt;
                        i13 = i12;
                        if (this.f28097g) {
                            this.f28099i.R(view, bVar, z10, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                        } else {
                            this.f28099i.R(view, bVar, z10, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    } else if (this.f28097g) {
                        z11 = true;
                        view = flexItemAt;
                        i13 = i12;
                        this.f28099i.R(flexItemAt, bVar, z10, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                    } else {
                        z11 = true;
                        view = flexItemAt;
                        i13 = i12;
                        this.f28099i.R(view, bVar, z10, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                    View view2 = view;
                    measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getBottomDecorationHeight(view2) + f14;
                    i11 = i26;
                    measuredHeight2 = bottomDecorationHeight - (((view2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + getTopDecorationHeight(view2)) + f14);
                }
                i12 = i13 + 1;
                fMax = f14;
                z12 = z11;
            }
            c.n(cVar, this.f28102l.f28133i);
            return bVar.a();
        }
        f11 = paddingTop;
        f12 = height - paddingBottom;
        f13 = 0.0f;
        measuredHeight = f11 - this.f28103m.f28120d;
        measuredHeight2 = f12 - this.f28103m.f28120d;
        fMax = Math.max(f13, 0.0f);
        iB = bVar.b();
        i11 = 0;
        i12 = i19;
        while (i12 < i19 + iB) {
            flexItemAt = getFlexItemAt(i12);
            if (flexItemAt == null) {
                i13 = i12;
                z11 = z12;
                f14 = fMax;
            } else {
                com.google.android.flexbox.c cVar3 = this.f28099i;
                f14 = fMax;
                long j12 = cVar3.f28156d[i12];
                iY = cVar3.y(j12);
                iX = this.f28099i.x(j12);
                layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                    flexItemAt.measure(iY, iX);
                }
                topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getTopDecorationHeight(flexItemAt);
                bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getBottomDecorationHeight(flexItemAt));
                if (cVar.f28133i == 1) {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt);
                } else {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt, i11);
                    i11++;
                }
                int i27 = i11;
                leftDecorationWidth = i17 + getLeftDecorationWidth(flexItemAt);
                rightDecorationWidth = i18 - getRightDecorationWidth(flexItemAt);
                z10 = this.f28096f;
                if (z10) {
                    z11 = true;
                    view = flexItemAt;
                    i13 = i12;
                    if (this.f28097g) {
                        this.f28099i.R(view, bVar, z10, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                    } else {
                        this.f28099i.R(view, bVar, z10, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                } else if (this.f28097g) {
                    z11 = true;
                    view = flexItemAt;
                    i13 = i12;
                    this.f28099i.R(flexItemAt, bVar, z10, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                } else {
                    z11 = true;
                    view = flexItemAt;
                    i13 = i12;
                    this.f28099i.R(view, bVar, z10, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                }
                View view3 = view;
                measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getBottomDecorationHeight(view3) + f14;
                i11 = i27;
                measuredHeight2 = bottomDecorationHeight - (((view3.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + getTopDecorationHeight(view3)) + f14);
            }
            i12 = i13 + 1;
            fMax = f14;
            z12 = z11;
        }
        c.n(cVar, this.f28102l.f28133i);
        return bVar.a();
    }

    private void V(RecyclerView.t tVar, c cVar) {
        if (cVar.f28134j) {
            if (cVar.f28133i == -1) {
                X(tVar, cVar);
            } else {
                Y(tVar, cVar);
            }
        }
    }

    private void W(RecyclerView.t tVar, int i11, int i12) {
        while (i12 >= i11) {
            removeAndRecycleViewAt(i12, tVar);
            i12--;
        }
    }

    private void X(RecyclerView.t tVar, c cVar) {
        int childCount;
        int i11;
        View childAt;
        int i12;
        if (cVar.f28130f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt((i11 = childCount - 1))) == null || (i12 = this.f28099i.f28155c[getPosition(childAt)]) == -1) {
            return;
        }
        com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f28098h.get(i12);
        for (int i13 = i11; i13 >= 0; i13--) {
            View childAt2 = getChildAt(i13);
            if (childAt2 != null) {
                if (!r(childAt2, cVar.f28130f)) {
                    break;
                }
                if (bVar.f28149o != getPosition(childAt2)) {
                    continue;
                } else if (i12 <= 0) {
                    childCount = i13;
                    break;
                } else {
                    i12 += cVar.f28133i;
                    bVar = (com.google.android.flexbox.b) this.f28098h.get(i12);
                    childCount = i13;
                }
            }
        }
        W(tVar, childCount, i11);
    }

    private void Y(RecyclerView.t tVar, c cVar) {
        int childCount;
        View childAt;
        if (cVar.f28130f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i11 = this.f28099i.f28155c[getPosition(childAt)];
        int i12 = -1;
        if (i11 == -1) {
            return;
        }
        com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f28098h.get(i11);
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2 != null) {
                if (!s(childAt2, cVar.f28130f)) {
                    break;
                }
                if (bVar.f28150p != getPosition(childAt2)) {
                    continue;
                } else if (i11 >= this.f28098h.size() - 1) {
                    i12 = i13;
                    break;
                } else {
                    i11 += cVar.f28133i;
                    bVar = (com.google.android.flexbox.b) this.f28098h.get(i11);
                    i12 = i13;
                }
            }
        }
        W(tVar, 0, i12);
    }

    private void Z() {
        int heightMode = isMainAxisDirectionHorizontal() ? getHeightMode() : getWidthMode();
        this.f28102l.f28126b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    private void a0() {
        int layoutDirection = getLayoutDirection();
        int i11 = this.f28091a;
        if (i11 == 0) {
            this.f28096f = layoutDirection == 1;
            this.f28097g = this.f28092b == 2;
            return;
        }
        if (i11 == 1) {
            this.f28096f = layoutDirection != 1;
            this.f28097g = this.f28092b == 2;
            return;
        }
        if (i11 == 2) {
            boolean z10 = layoutDirection == 1;
            this.f28096f = z10;
            if (this.f28092b == 2) {
                this.f28096f = !z10;
            }
            this.f28097g = false;
            return;
        }
        if (i11 != 3) {
            this.f28096f = false;
            this.f28097g = false;
            return;
        }
        boolean z11 = layoutDirection == 1;
        this.f28096f = z11;
        if (this.f28092b == 2) {
            this.f28096f = !z11;
        }
        this.f28097g = true;
    }

    private void ensureLayoutState() {
        if (this.f28102l == null) {
            this.f28102l = new c();
        }
    }

    private boolean f0(RecyclerView.y yVar, b bVar) {
        if (getChildCount() == 0) {
            return false;
        }
        View viewB = bVar.f28121e ? B(yVar.b()) : z(yVar.b());
        if (viewB == null) {
            return false;
        }
        bVar.s(viewB);
        if (yVar.e() || !supportsPredictiveItemAnimations()) {
            return true;
        }
        if (this.f28104n.g(viewB) < this.f28104n.i() && this.f28104n.d(viewB) >= this.f28104n.m()) {
            return true;
        }
        bVar.f28119c = bVar.f28121e ? this.f28104n.i() : this.f28104n.m();
        return true;
    }

    private boolean g0(RecyclerView.y yVar, b bVar, SavedState savedState) {
        int i11;
        View childAt;
        if (!yVar.e() && (i11 = this.f28107q) != -1) {
            if (i11 >= 0 && i11 < yVar.b()) {
                bVar.f28117a = this.f28107q;
                bVar.f28118b = this.f28099i.f28155c[bVar.f28117a];
                SavedState savedState2 = this.f28106p;
                if (savedState2 != null && savedState2.g(yVar.b())) {
                    bVar.f28119c = this.f28104n.m() + savedState.mAnchorOffset;
                    bVar.f28123g = true;
                    bVar.f28118b = -1;
                    return true;
                }
                if (this.f28108r != Integer.MIN_VALUE) {
                    if (isMainAxisDirectionHorizontal() || !this.f28096f) {
                        bVar.f28119c = this.f28104n.m() + this.f28108r;
                    } else {
                        bVar.f28119c = this.f28108r - this.f28104n.j();
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.f28107q);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                        bVar.f28121e = this.f28107q < getPosition(childAt);
                    }
                    bVar.r();
                } else {
                    if (this.f28104n.e(viewFindViewByPosition) > this.f28104n.n()) {
                        bVar.r();
                        return true;
                    }
                    if (this.f28104n.g(viewFindViewByPosition) - this.f28104n.m() < 0) {
                        bVar.f28119c = this.f28104n.m();
                        bVar.f28121e = false;
                        return true;
                    }
                    if (this.f28104n.i() - this.f28104n.d(viewFindViewByPosition) < 0) {
                        bVar.f28119c = this.f28104n.i();
                        bVar.f28121e = true;
                        return true;
                    }
                    bVar.f28119c = bVar.f28121e ? this.f28104n.d(viewFindViewByPosition) + this.f28104n.o() : this.f28104n.g(viewFindViewByPosition);
                }
                return true;
            }
            this.f28107q = -1;
            this.f28108r = Integer.MIN_VALUE;
        }
        return false;
    }

    private void h0(RecyclerView.y yVar, b bVar) {
        if (g0(yVar, bVar, this.f28106p) || f0(yVar, bVar)) {
            return;
        }
        bVar.r();
        bVar.f28117a = 0;
        bVar.f28118b = 0;
    }

    private static boolean i(int i11, int i12, int i13) {
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i12);
        if (i13 > 0 && i11 != i13) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i11;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i11;
        }
        return true;
    }

    private void i0(int i11) {
        if (i11 >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f28099i.t(childCount);
        this.f28099i.u(childCount);
        this.f28099i.s(childCount);
        if (i11 >= this.f28099i.f28155c.length) {
            return;
        }
        this.f28115y = i11;
        View viewI = I();
        if (viewI == null) {
            return;
        }
        this.f28107q = getPosition(viewI);
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            this.f28108r = this.f28104n.g(viewI) - this.f28104n.m();
        } else {
            this.f28108r = this.f28104n.d(viewI) + this.f28104n.j();
        }
    }

    private void j0(int i11) {
        int i12;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z10 = false;
        if (isMainAxisDirectionHorizontal()) {
            int i13 = this.f28109s;
            if (i13 != Integer.MIN_VALUE && i13 != width) {
                z10 = true;
            }
            i12 = this.f28102l.f28126b ? this.f28113w.getResources().getDisplayMetrics().heightPixels : this.f28102l.f28125a;
        } else {
            int i14 = this.f28110t;
            if (i14 != Integer.MIN_VALUE && i14 != height) {
                z10 = true;
            }
            i12 = this.f28102l.f28126b ? this.f28113w.getResources().getDisplayMetrics().widthPixels : this.f28102l.f28125a;
        }
        int i15 = i12;
        this.f28109s = width;
        this.f28110t = height;
        int i16 = this.f28115y;
        if (i16 == -1 && (this.f28107q != -1 || z10)) {
            if (this.f28103m.f28121e) {
                return;
            }
            this.f28098h.clear();
            this.f28116z.a();
            if (isMainAxisDirectionHorizontal()) {
                this.f28099i.e(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i15, this.f28103m.f28117a, this.f28098h);
            } else {
                this.f28099i.h(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i15, this.f28103m.f28117a, this.f28098h);
            }
            this.f28098h = this.f28116z.f28158a;
            this.f28099i.p(iMakeMeasureSpec, iMakeMeasureSpec2);
            this.f28099i.X();
            b bVar = this.f28103m;
            bVar.f28118b = this.f28099i.f28155c[bVar.f28117a];
            this.f28102l.f28127c = this.f28103m.f28118b;
            return;
        }
        int iMin = i16 != -1 ? Math.min(i16, this.f28103m.f28117a) : this.f28103m.f28117a;
        this.f28116z.a();
        if (isMainAxisDirectionHorizontal()) {
            if (this.f28098h.size() > 0) {
                this.f28099i.j(this.f28098h, iMin);
                this.f28099i.b(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i15, iMin, this.f28103m.f28117a, this.f28098h);
            } else {
                this.f28099i.s(i11);
                this.f28099i.d(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i15, 0, this.f28098h);
            }
        } else if (this.f28098h.size() > 0) {
            this.f28099i.j(this.f28098h, iMin);
            this.f28099i.b(this.f28116z, iMakeMeasureSpec2, iMakeMeasureSpec, i15, iMin, this.f28103m.f28117a, this.f28098h);
        } else {
            this.f28099i.s(i11);
            this.f28099i.g(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i15, 0, this.f28098h);
        }
        this.f28098h = this.f28116z.f28158a;
        this.f28099i.q(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
        this.f28099i.Y(iMin);
    }

    private void k0(int i11, int i12) {
        this.f28102l.f28133i = i11;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z10 = !zIsMainAxisDirectionHorizontal && this.f28096f;
        if (i11 == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f28102l.f28129e = this.f28104n.d(childAt);
            int position = getPosition(childAt);
            View viewC = C(childAt, (com.google.android.flexbox.b) this.f28098h.get(this.f28099i.f28155c[position]));
            this.f28102l.f28132h = 1;
            c cVar = this.f28102l;
            cVar.f28128d = position + cVar.f28132h;
            if (this.f28099i.f28155c.length <= this.f28102l.f28128d) {
                this.f28102l.f28127c = -1;
            } else {
                c cVar2 = this.f28102l;
                cVar2.f28127c = this.f28099i.f28155c[cVar2.f28128d];
            }
            if (z10) {
                this.f28102l.f28129e = this.f28104n.g(viewC);
                this.f28102l.f28130f = (-this.f28104n.g(viewC)) + this.f28104n.m();
                c cVar3 = this.f28102l;
                cVar3.f28130f = Math.max(cVar3.f28130f, 0);
            } else {
                this.f28102l.f28129e = this.f28104n.d(viewC);
                this.f28102l.f28130f = this.f28104n.d(viewC) - this.f28104n.i();
            }
            if ((this.f28102l.f28127c == -1 || this.f28102l.f28127c > this.f28098h.size() - 1) && this.f28102l.f28128d <= getFlexItemCount()) {
                int i13 = i12 - this.f28102l.f28130f;
                this.f28116z.a();
                if (i13 > 0) {
                    if (zIsMainAxisDirectionHorizontal) {
                        this.f28099i.d(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i13, this.f28102l.f28128d, this.f28098h);
                    } else {
                        this.f28099i.g(this.f28116z, iMakeMeasureSpec, iMakeMeasureSpec2, i13, this.f28102l.f28128d, this.f28098h);
                    }
                    this.f28099i.q(iMakeMeasureSpec, iMakeMeasureSpec2, this.f28102l.f28128d);
                    this.f28099i.Y(this.f28102l.f28128d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f28102l.f28129e = this.f28104n.g(childAt2);
            int position2 = getPosition(childAt2);
            View viewA = A(childAt2, (com.google.android.flexbox.b) this.f28098h.get(this.f28099i.f28155c[position2]));
            this.f28102l.f28132h = 1;
            int i14 = this.f28099i.f28155c[position2];
            if (i14 == -1) {
                i14 = 0;
            }
            if (i14 > 0) {
                this.f28102l.f28128d = position2 - ((com.google.android.flexbox.b) this.f28098h.get(i14 - 1)).b();
            } else {
                this.f28102l.f28128d = -1;
            }
            this.f28102l.f28127c = i14 > 0 ? i14 - 1 : 0;
            if (z10) {
                this.f28102l.f28129e = this.f28104n.d(viewA);
                this.f28102l.f28130f = this.f28104n.d(viewA) - this.f28104n.i();
                c cVar4 = this.f28102l;
                cVar4.f28130f = Math.max(cVar4.f28130f, 0);
            } else {
                this.f28102l.f28129e = this.f28104n.g(viewA);
                this.f28102l.f28130f = (-this.f28104n.g(viewA)) + this.f28104n.m();
            }
        }
        c cVar5 = this.f28102l;
        cVar5.f28125a = i12 - cVar5.f28130f;
    }

    private void l0(b bVar, boolean z10, boolean z11) {
        if (z11) {
            Z();
        } else {
            this.f28102l.f28126b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            this.f28102l.f28125a = this.f28104n.i() - bVar.f28119c;
        } else {
            this.f28102l.f28125a = bVar.f28119c - getPaddingRight();
        }
        this.f28102l.f28128d = bVar.f28117a;
        this.f28102l.f28132h = 1;
        this.f28102l.f28133i = 1;
        this.f28102l.f28129e = bVar.f28119c;
        this.f28102l.f28130f = Integer.MIN_VALUE;
        this.f28102l.f28127c = bVar.f28118b;
        if (!z10 || this.f28098h.size() <= 1 || bVar.f28118b < 0 || bVar.f28118b >= this.f28098h.size() - 1) {
            return;
        }
        com.google.android.flexbox.b bVar2 = (com.google.android.flexbox.b) this.f28098h.get(bVar.f28118b);
        c.l(this.f28102l);
        c.u(this.f28102l, bVar2.b());
    }

    private void m0(b bVar, boolean z10, boolean z11) {
        if (z11) {
            Z();
        } else {
            this.f28102l.f28126b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            this.f28102l.f28125a = bVar.f28119c - this.f28104n.m();
        } else {
            this.f28102l.f28125a = (this.f28114x.getWidth() - bVar.f28119c) - this.f28104n.m();
        }
        this.f28102l.f28128d = bVar.f28117a;
        this.f28102l.f28132h = 1;
        this.f28102l.f28133i = -1;
        this.f28102l.f28129e = bVar.f28119c;
        this.f28102l.f28130f = Integer.MIN_VALUE;
        this.f28102l.f28127c = bVar.f28118b;
        if (!z10 || bVar.f28118b <= 0 || this.f28098h.size() <= bVar.f28118b) {
            return;
        }
        com.google.android.flexbox.b bVar2 = (com.google.android.flexbox.b) this.f28098h.get(bVar.f28118b);
        c.m(this.f28102l);
        c.v(this.f28102l, bVar2.b());
    }

    private boolean r(View view, int i11) {
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            return this.f28104n.g(view) >= this.f28104n.h() - i11;
        }
        return this.f28104n.d(view) <= i11;
    }

    private boolean s(View view, int i11) {
        if (isMainAxisDirectionHorizontal() || !this.f28096f) {
            return this.f28104n.d(view) <= i11;
        }
        return this.f28104n.h() - this.f28104n.g(view) <= i11;
    }

    private boolean shouldMeasureChild(View view, int i11, int i12, RecyclerView.n nVar) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && i(view.getWidth(), i11, ((ViewGroup.MarginLayoutParams) nVar).width) && i(view.getHeight(), i12, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
    }

    private void t() {
        this.f28098h.clear();
        this.f28103m.t();
        this.f28103m.f28120d = 0;
    }

    private int u(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        int iB = yVar.b();
        x();
        View viewZ = z(iB);
        View viewB = B(iB);
        if (yVar.b() == 0 || viewZ == null || viewB == null) {
            return 0;
        }
        return Math.min(this.f28104n.n(), this.f28104n.d(viewB) - this.f28104n.g(viewZ));
    }

    private int v(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        int iB = yVar.b();
        View viewZ = z(iB);
        View viewB = B(iB);
        if (yVar.b() != 0 && viewZ != null && viewB != null) {
            int position = getPosition(viewZ);
            int position2 = getPosition(viewB);
            int iAbs = Math.abs(this.f28104n.d(viewB) - this.f28104n.g(viewZ));
            int[] iArr = this.f28099i.f28155c;
            int i11 = iArr[position];
            if (i11 != 0 && i11 != -1) {
                return Math.round((i11 * (iAbs / ((iArr[position2] - i11) + 1))) + (this.f28104n.m() - this.f28104n.g(viewZ)));
            }
        }
        return 0;
    }

    private int w(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        int iB = yVar.b();
        View viewZ = z(iB);
        View viewB = B(iB);
        if (yVar.b() == 0 || viewZ == null || viewB == null) {
            return 0;
        }
        return (int) ((Math.abs(this.f28104n.d(viewB) - this.f28104n.g(viewZ)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition()) + 1)) * yVar.b());
    }

    private void x() {
        if (this.f28104n != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.f28092b == 0) {
                this.f28104n = m.a(this);
                this.f28105o = m.c(this);
                return;
            } else {
                this.f28104n = m.c(this);
                this.f28105o = m.a(this);
                return;
            }
        }
        if (this.f28092b == 0) {
            this.f28104n = m.c(this);
            this.f28105o = m.a(this);
        } else {
            this.f28104n = m.a(this);
            this.f28105o = m.c(this);
        }
    }

    private int y(RecyclerView.t tVar, RecyclerView.y yVar, c cVar) {
        if (cVar.f28130f != Integer.MIN_VALUE) {
            if (cVar.f28125a < 0) {
                c.q(cVar, cVar.f28125a);
            }
            V(tVar, cVar);
        }
        int i11 = cVar.f28125a;
        int iA = cVar.f28125a;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iS = 0;
        while (true) {
            if ((iA <= 0 && !this.f28102l.f28126b) || !cVar.D(yVar, this.f28098h)) {
                break;
            }
            com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f28098h.get(cVar.f28127c);
            cVar.f28128d = bVar.f28149o;
            iS += S(bVar, cVar);
            if (zIsMainAxisDirectionHorizontal || !this.f28096f) {
                c.c(cVar, bVar.a() * cVar.f28133i);
            } else {
                c.d(cVar, bVar.a() * cVar.f28133i);
            }
            iA -= bVar.a();
        }
        c.i(cVar, iS);
        if (cVar.f28130f != Integer.MIN_VALUE) {
            c.q(cVar, iS);
            if (cVar.f28125a < 0) {
                c.q(cVar, cVar.f28125a);
            }
            V(tVar, cVar);
        }
        return i11 - cVar.f28125a;
    }

    private View z(int i11) {
        View viewE = E(0, getChildCount(), i11);
        if (viewE == null) {
            return null;
        }
        int i12 = this.f28099i.f28155c[getPosition(viewE)];
        if (i12 == -1) {
            return null;
        }
        return A(viewE, (com.google.android.flexbox.b) this.f28098h.get(i12));
    }

    public List M() {
        ArrayList arrayList = new ArrayList(this.f28098h.size());
        int size = this.f28098h.size();
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f28098h.get(i11);
            if (bVar.b() != 0) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    int N(int i11) {
        return this.f28099i.f28155c[i11];
    }

    boolean Q() {
        return this.f28096f;
    }

    public void b0(int i11) {
        int i12 = this.f28094d;
        if (i12 != i11) {
            if (i12 == 4 || i11 == 4) {
                removeAllViews();
                t();
            }
            this.f28094d = i11;
            requestLayout();
        }
    }

    public void c0(int i11) {
        if (this.f28091a != i11) {
            removeAllViews();
            this.f28091a = i11;
            this.f28104n = null;
            this.f28105o = null;
            t();
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollHorizontally() {
        if (this.f28092b == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            int width = getWidth();
            View view = this.f28114x;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollVertically() {
        if (this.f28092b == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            return true;
        }
        int height = getHeight();
        View view = this.f28114x;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean checkLayoutParams(RecyclerView.n nVar) {
        return nVar instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollExtent(RecyclerView.y yVar) {
        return u(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollOffset(RecyclerView.y yVar) {
        return v(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollRange(RecyclerView.y yVar) {
        return w(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public PointF computeScrollVectorForPosition(int i11) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i12 = i11 < getPosition(childAt) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(0.0f, i12) : new PointF(i12, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollExtent(RecyclerView.y yVar) {
        return u(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollOffset(RecyclerView.y yVar) {
        return v(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollRange(RecyclerView.y yVar) {
        return w(yVar);
    }

    public void d0(int i11) {
        if (i11 == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        }
        int i12 = this.f28092b;
        if (i12 != i11) {
            if (i12 == 0 || i11 == 0) {
                removeAllViews();
                t();
            }
            this.f28092b = i11;
            this.f28104n = null;
            this.f28105o = null;
            requestLayout();
        }
    }

    public void e0(int i11) {
        if (this.f28093c != i11) {
            this.f28093c = i11;
            requestLayout();
        }
    }

    public int findFirstVisibleItemPosition() {
        View viewD = D(0, getChildCount(), false);
        if (viewD == null) {
            return -1;
        }
        return getPosition(viewD);
    }

    public int findLastVisibleItemPosition() {
        View viewD = D(getChildCount() - 1, -1, false);
        if (viewD == null) {
            return -1;
        }
        return getPosition(viewD);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // com.google.android.flexbox.a
    public int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.a
    public int getAlignItems() {
        return this.f28094d;
    }

    @Override // com.google.android.flexbox.a
    public int getChildHeightMeasureSpec(int i11, int i12, int i13) {
        return RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), i12, i13, canScrollVertically());
    }

    @Override // com.google.android.flexbox.a
    public int getChildWidthMeasureSpec(int i11, int i12, int i13) {
        return RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), i12, i13, canScrollHorizontally());
    }

    @Override // com.google.android.flexbox.a
    public int getDecorationLengthCrossAxis(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (isMainAxisDirectionHorizontal()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // com.google.android.flexbox.a
    public int getDecorationLengthMainAxis(View view, int i11, int i12) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (isMainAxisDirectionHorizontal()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexDirection() {
        return this.f28091a;
    }

    @Override // com.google.android.flexbox.a
    public View getFlexItemAt(int i11) {
        View view = (View) this.f28112v.get(i11);
        return view != null ? view : this.f28100j.o(i11);
    }

    @Override // com.google.android.flexbox.a
    public int getFlexItemCount() {
        return this.f28101k.b();
    }

    @Override // com.google.android.flexbox.a
    public List getFlexLinesInternal() {
        return this.f28098h;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexWrap() {
        return this.f28092b;
    }

    @Override // com.google.android.flexbox.a
    public int getLargestMainSize() {
        if (this.f28098h.size() == 0) {
            return 0;
        }
        int size = this.f28098h.size();
        int iMax = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < size; i11++) {
            iMax = Math.max(iMax, ((com.google.android.flexbox.b) this.f28098h.get(i11)).f28139e);
        }
        return iMax;
    }

    @Override // com.google.android.flexbox.a
    public int getMaxLine() {
        return this.f28095e;
    }

    @Override // com.google.android.flexbox.a
    public View getReorderedFlexItemAt(int i11) {
        return getFlexItemAt(i11);
    }

    @Override // com.google.android.flexbox.a
    public int getSumOfCrossSize() {
        int size = this.f28098h.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += ((com.google.android.flexbox.b) this.f28098h.get(i12)).f28141g;
        }
        return i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // com.google.android.flexbox.a
    public boolean isMainAxisDirectionHorizontal() {
        int i11 = this.f28091a;
        return i11 == 0 || i11 == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f28114x = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        if (this.f28111u) {
            removeAndRecycleAllViews(tVar);
            tVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsAdded(RecyclerView recyclerView, int i11, int i12) {
        super.onItemsAdded(recyclerView, i11, i12);
        i0(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsMoved(RecyclerView recyclerView, int i11, int i12, int i13) {
        super.onItemsMoved(recyclerView, i11, i12, i13);
        i0(Math.min(i11, i12));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsRemoved(RecyclerView recyclerView, int i11, int i12) {
        super.onItemsRemoved(recyclerView, i11, i12);
        i0(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsUpdated(RecyclerView recyclerView, int i11, int i12) {
        super.onItemsUpdated(recyclerView, i11, i12);
        i0(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsUpdated(RecyclerView recyclerView, int i11, int i12, Object obj) {
        super.onItemsUpdated(recyclerView, i11, i12, obj);
        i0(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.y yVar) {
        int i11;
        int i12;
        this.f28100j = tVar;
        this.f28101k = yVar;
        int iB = yVar.b();
        if (iB == 0 && yVar.e()) {
            return;
        }
        a0();
        x();
        ensureLayoutState();
        this.f28099i.t(iB);
        this.f28099i.u(iB);
        this.f28099i.s(iB);
        this.f28102l.f28134j = false;
        SavedState savedState = this.f28106p;
        if (savedState != null && savedState.g(iB)) {
            this.f28107q = this.f28106p.mAnchorPosition;
        }
        if (!this.f28103m.f28122f || this.f28107q != -1 || this.f28106p != null) {
            this.f28103m.t();
            h0(yVar, this.f28103m);
            this.f28103m.f28122f = true;
        }
        detachAndScrapAttachedViews(tVar);
        if (this.f28103m.f28121e) {
            m0(this.f28103m, false, true);
        } else {
            l0(this.f28103m, false, true);
        }
        j0(iB);
        y(tVar, yVar, this.f28102l);
        if (this.f28103m.f28121e) {
            i12 = this.f28102l.f28129e;
            l0(this.f28103m, true, false);
            y(tVar, yVar, this.f28102l);
            i11 = this.f28102l.f28129e;
        } else {
            i11 = this.f28102l.f28129e;
            m0(this.f28103m, true, false);
            y(tVar, yVar, this.f28102l);
            i12 = this.f28102l.f28129e;
        }
        if (getChildCount() > 0) {
            if (this.f28103m.f28121e) {
                G(i12 + F(i11, tVar, yVar, true), tVar, yVar, false);
            } else {
                F(i11 + G(i12, tVar, yVar, true), tVar, yVar, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutCompleted(RecyclerView.y yVar) {
        super.onLayoutCompleted(yVar);
        this.f28106p = null;
        this.f28107q = -1;
        this.f28108r = Integer.MIN_VALUE;
        this.f28115y = -1;
        this.f28103m.t();
        this.f28112v.clear();
    }

    @Override // com.google.android.flexbox.a
    public void onNewFlexItemAdded(View view, int i11, int i12, com.google.android.flexbox.b bVar) {
        calculateItemDecorationsForChild(view, A);
        if (isMainAxisDirectionHorizontal()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            bVar.f28139e += leftDecorationWidth;
            bVar.f28140f += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            bVar.f28139e += topDecorationHeight;
            bVar.f28140f += topDecorationHeight;
        }
    }

    @Override // com.google.android.flexbox.a
    public void onNewFlexLineAdded(com.google.android.flexbox.b bVar) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f28106p = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public Parcelable onSaveInstanceState() {
        if (this.f28106p != null) {
            return new SavedState(this.f28106p);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            View viewI = I();
            savedState.mAnchorPosition = getPosition(viewI);
            savedState.mAnchorOffset = this.f28104n.g(viewI) - this.f28104n.m();
        } else {
            savedState.h();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int scrollHorizontallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (!isMainAxisDirectionHorizontal() || this.f28092b == 0) {
            int iO = O(i11, tVar, yVar);
            this.f28112v.clear();
            return iO;
        }
        int iP = P(i11);
        b.l(this.f28103m, iP);
        this.f28105o.r(-iP);
        return iP;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void scrollToPosition(int i11) {
        this.f28107q = i11;
        this.f28108r = Integer.MIN_VALUE;
        SavedState savedState = this.f28106p;
        if (savedState != null) {
            savedState.h();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int scrollVerticallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (isMainAxisDirectionHorizontal() || (this.f28092b == 0 && !isMainAxisDirectionHorizontal())) {
            int iO = O(i11, tVar, yVar);
            this.f28112v.clear();
            return iO;
        }
        int iP = P(i11);
        b.l(this.f28103m, iP);
        this.f28105o.r(-iP);
        return iP;
    }

    @Override // com.google.android.flexbox.a
    public void setFlexLines(List list) {
        this.f28098h = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.y yVar, int i11) {
        h hVar = new h(recyclerView.getContext());
        hVar.p(i11);
        startSmoothScroll(hVar);
    }

    @Override // com.google.android.flexbox.a
    public void updateViewCache(int i11, View view) {
        this.f28112v.put(i11, view);
    }
}

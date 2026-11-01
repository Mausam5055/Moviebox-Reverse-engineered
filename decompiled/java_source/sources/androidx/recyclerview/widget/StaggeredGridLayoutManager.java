package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.m implements RecyclerView.x.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c[] f14292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    m f14293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    m f14294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f14295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f14296f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g f14297g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BitSet f14300j;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f14305o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f14306p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private SavedState f14307q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f14308r;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int[] f14313w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14291a = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f14298h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f14299i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f14301k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f14302l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    LazySpanLookup f14303m = new LazySpanLookup();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f14304n = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Rect f14309s = new Rect();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final a f14310t = new a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f14311u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f14312v = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Runnable f14314x = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.q();
        }
    };

    /* JADX INFO: loaded from: classes2.dex */
    static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f14315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List f14316b;

        @SuppressLint({"BanParcelableUsage"})
        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f14317a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f14318b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int[] f14319c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            boolean f14320d;

            class a implements Parcelable.Creator {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i11) {
                    return new FullSpanItem[i11];
                }
            }

            FullSpanItem() {
            }

            FullSpanItem(Parcel parcel) {
                this.f14317a = parcel.readInt();
                this.f14318b = parcel.readInt();
                this.f14320d = parcel.readInt() == 1;
                int i11 = parcel.readInt();
                if (i11 > 0) {
                    int[] iArr = new int[i11];
                    this.f14319c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            int a(int i11) {
                int[] iArr = this.f14319c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i11];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f14317a + ", mGapDir=" + this.f14318b + ", mHasUnwantedGapAfter=" + this.f14320d + ", mGapPerSpan=" + Arrays.toString(this.f14319c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i11) {
                parcel.writeInt(this.f14317a);
                parcel.writeInt(this.f14318b);
                parcel.writeInt(this.f14320d ? 1 : 0);
                int[] iArr = this.f14319c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f14319c);
                }
            }
        }

        LazySpanLookup() {
        }

        private int i(int i11) {
            if (this.f14316b == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i11);
            if (fullSpanItemF != null) {
                this.f14316b.remove(fullSpanItemF);
            }
            int size = this.f14316b.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    i12 = -1;
                    break;
                }
                if (((FullSpanItem) this.f14316b.get(i12)).f14317a >= i11) {
                    break;
                }
                i12++;
            }
            if (i12 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = (FullSpanItem) this.f14316b.get(i12);
            this.f14316b.remove(i12);
            return fullSpanItem.f14317a;
        }

        private void l(int i11, int i12) {
            List list = this.f14316b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14316b.get(size);
                int i13 = fullSpanItem.f14317a;
                if (i13 >= i11) {
                    fullSpanItem.f14317a = i13 + i12;
                }
            }
        }

        private void m(int i11, int i12) {
            List list = this.f14316b;
            if (list == null) {
                return;
            }
            int i13 = i11 + i12;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14316b.get(size);
                int i14 = fullSpanItem.f14317a;
                if (i14 >= i11) {
                    if (i14 < i13) {
                        this.f14316b.remove(size);
                    } else {
                        fullSpanItem.f14317a = i14 - i12;
                    }
                }
            }
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f14316b == null) {
                this.f14316b = new ArrayList();
            }
            int size = this.f14316b.size();
            for (int i11 = 0; i11 < size; i11++) {
                FullSpanItem fullSpanItem2 = (FullSpanItem) this.f14316b.get(i11);
                if (fullSpanItem2.f14317a == fullSpanItem.f14317a) {
                    this.f14316b.remove(i11);
                }
                if (fullSpanItem2.f14317a >= fullSpanItem.f14317a) {
                    this.f14316b.add(i11, fullSpanItem);
                    return;
                }
            }
            this.f14316b.add(fullSpanItem);
        }

        void b() {
            int[] iArr = this.f14315a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f14316b = null;
        }

        void c(int i11) {
            int[] iArr = this.f14315a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i11, 10) + 1];
                this.f14315a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i11 >= iArr.length) {
                int[] iArr3 = new int[o(i11)];
                this.f14315a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f14315a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int d(int i11) {
            List list = this.f14316b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((FullSpanItem) this.f14316b.get(size)).f14317a >= i11) {
                        this.f14316b.remove(size);
                    }
                }
            }
            return h(i11);
        }

        public FullSpanItem e(int i11, int i12, int i13, boolean z10) {
            List list = this.f14316b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i14 = 0; i14 < size; i14++) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14316b.get(i14);
                int i15 = fullSpanItem.f14317a;
                if (i15 >= i12) {
                    return null;
                }
                if (i15 >= i11 && (i13 == 0 || fullSpanItem.f14318b == i13 || (z10 && fullSpanItem.f14320d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem f(int i11) {
            List list = this.f14316b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14316b.get(size);
                if (fullSpanItem.f14317a == i11) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        int g(int i11) {
            int[] iArr = this.f14315a;
            if (iArr == null || i11 >= iArr.length) {
                return -1;
            }
            return iArr[i11];
        }

        int h(int i11) {
            int[] iArr = this.f14315a;
            if (iArr == null || i11 >= iArr.length) {
                return -1;
            }
            int i12 = i(i11);
            if (i12 == -1) {
                int[] iArr2 = this.f14315a;
                Arrays.fill(iArr2, i11, iArr2.length, -1);
                return this.f14315a.length;
            }
            int iMin = Math.min(i12 + 1, this.f14315a.length);
            Arrays.fill(this.f14315a, i11, iMin, -1);
            return iMin;
        }

        void j(int i11, int i12) {
            int[] iArr = this.f14315a;
            if (iArr == null || i11 >= iArr.length) {
                return;
            }
            int i13 = i11 + i12;
            c(i13);
            int[] iArr2 = this.f14315a;
            System.arraycopy(iArr2, i11, iArr2, i13, (iArr2.length - i11) - i12);
            Arrays.fill(this.f14315a, i11, i13, -1);
            l(i11, i12);
        }

        void k(int i11, int i12) {
            int[] iArr = this.f14315a;
            if (iArr == null || i11 >= iArr.length) {
                return;
            }
            int i13 = i11 + i12;
            c(i13);
            int[] iArr2 = this.f14315a;
            System.arraycopy(iArr2, i13, iArr2, i11, (iArr2.length - i11) - i12);
            int[] iArr3 = this.f14315a;
            Arrays.fill(iArr3, iArr3.length - i12, iArr3.length, -1);
            m(i11, i12);
        }

        void n(int i11, c cVar) {
            c(i11);
            this.f14315a[i11] = cVar.f14334e;
        }

        int o(int i11) {
            int length = this.f14315a.length;
            while (length <= i11) {
                length *= 2;
            }
            return length;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

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

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            int i11 = parcel.readInt();
            this.mSpanOffsetsSize = i11;
            if (i11 > 0) {
                int[] iArr = new int[i11];
                this.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int i12 = parcel.readInt();
            this.mSpanLookupSize = i12;
            if (i12 > 0) {
                int[] iArr2 = new int[i12];
                this.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f14323c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f14324d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f14325e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f14326f;

        a() {
            c();
        }

        void a() {
            this.f14322b = this.f14323c ? StaggeredGridLayoutManager.this.f14293c.i() : StaggeredGridLayoutManager.this.f14293c.m();
        }

        void b(int i11) {
            if (this.f14323c) {
                this.f14322b = StaggeredGridLayoutManager.this.f14293c.i() - i11;
            } else {
                this.f14322b = StaggeredGridLayoutManager.this.f14293c.m() + i11;
            }
        }

        void c() {
            this.f14321a = -1;
            this.f14322b = Integer.MIN_VALUE;
            this.f14323c = false;
            this.f14324d = false;
            this.f14325e = false;
            int[] iArr = this.f14326f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f14326f;
            if (iArr == null || iArr.length < length) {
                this.f14326f = new int[StaggeredGridLayoutManager.this.f14292b.length];
            }
            for (int i11 = 0; i11 < length; i11++) {
                this.f14326f[i11] = cVarArr[i11].t(Integer.MIN_VALUE);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class b extends RecyclerView.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c f14328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f14329b;

        public b(int i11, int i12) {
            super(i11, i12);
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public final int a() {
            c cVar = this.f14328a;
            if (cVar == null) {
                return -1;
            }
            return cVar.f14334e;
        }

        public boolean b() {
            return this.f14329b;
        }

        public void c(boolean z10) {
            this.f14329b = z10;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList f14330a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14331b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f14332c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f14333d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f14334e;

        c(int i11) {
            this.f14334e = i11;
        }

        void a(View view) {
            b bVarR = r(view);
            bVarR.f14328a = this;
            this.f14330a.add(view);
            this.f14332c = Integer.MIN_VALUE;
            if (this.f14330a.size() == 1) {
                this.f14331b = Integer.MIN_VALUE;
            }
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14333d += StaggeredGridLayoutManager.this.f14293c.e(view);
            }
        }

        void b(boolean z10, int i11) {
            int iP = z10 ? p(Integer.MIN_VALUE) : t(Integer.MIN_VALUE);
            e();
            if (iP == Integer.MIN_VALUE) {
                return;
            }
            if (!z10 || iP >= StaggeredGridLayoutManager.this.f14293c.i()) {
                if (z10 || iP <= StaggeredGridLayoutManager.this.f14293c.m()) {
                    if (i11 != Integer.MIN_VALUE) {
                        iP += i11;
                    }
                    this.f14332c = iP;
                    this.f14331b = iP;
                }
            }
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            ArrayList arrayList = this.f14330a;
            View view = (View) arrayList.get(arrayList.size() - 1);
            b bVarR = r(view);
            this.f14332c = StaggeredGridLayoutManager.this.f14293c.d(view);
            if (bVarR.f14329b && (fullSpanItemF = StaggeredGridLayoutManager.this.f14303m.f(bVarR.getViewLayoutPosition())) != null && fullSpanItemF.f14318b == 1) {
                this.f14332c += fullSpanItemF.a(this.f14334e);
            }
        }

        void d() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = (View) this.f14330a.get(0);
            b bVarR = r(view);
            this.f14331b = StaggeredGridLayoutManager.this.f14293c.g(view);
            if (bVarR.f14329b && (fullSpanItemF = StaggeredGridLayoutManager.this.f14303m.f(bVarR.getViewLayoutPosition())) != null && fullSpanItemF.f14318b == -1) {
                this.f14331b -= fullSpanItemF.a(this.f14334e);
            }
        }

        void e() {
            this.f14330a.clear();
            u();
            this.f14333d = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.f14298h ? l(this.f14330a.size() - 1, -1, true) : l(0, this.f14330a.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.f14298h ? m(this.f14330a.size() - 1, -1, false) : m(0, this.f14330a.size(), false);
        }

        public int h() {
            return StaggeredGridLayoutManager.this.f14298h ? m(0, this.f14330a.size(), true) : m(this.f14330a.size() - 1, -1, true);
        }

        public int i() {
            return StaggeredGridLayoutManager.this.f14298h ? l(0, this.f14330a.size(), true) : l(this.f14330a.size() - 1, -1, true);
        }

        public int j() {
            return StaggeredGridLayoutManager.this.f14298h ? m(0, this.f14330a.size(), false) : m(this.f14330a.size() - 1, -1, false);
        }

        int k(int i11, int i12, boolean z10, boolean z11, boolean z12) {
            int iM = StaggeredGridLayoutManager.this.f14293c.m();
            int i13 = StaggeredGridLayoutManager.this.f14293c.i();
            int i14 = i12 > i11 ? 1 : -1;
            while (i11 != i12) {
                View view = (View) this.f14330a.get(i11);
                int iG = StaggeredGridLayoutManager.this.f14293c.g(view);
                int iD = StaggeredGridLayoutManager.this.f14293c.d(view);
                boolean z13 = false;
                boolean z14 = !z12 ? iG >= i13 : iG > i13;
                if (!z12 ? iD > iM : iD >= iM) {
                    z13 = true;
                }
                if (z14 && z13) {
                    if (z10 && z11) {
                        if (iG >= iM && iD <= i13) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z11) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (iG < iM || iD > i13) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i11 += i14;
            }
            return -1;
        }

        int l(int i11, int i12, boolean z10) {
            return k(i11, i12, false, false, z10);
        }

        int m(int i11, int i12, boolean z10) {
            return k(i11, i12, z10, true, false);
        }

        public int n() {
            return this.f14333d;
        }

        int o() {
            int i11 = this.f14332c;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            c();
            return this.f14332c;
        }

        int p(int i11) {
            int i12 = this.f14332c;
            if (i12 != Integer.MIN_VALUE) {
                return i12;
            }
            if (this.f14330a.size() == 0) {
                return i11;
            }
            c();
            return this.f14332c;
        }

        public View q(int i11, int i12) {
            View view = null;
            if (i12 != -1) {
                int size = this.f14330a.size() - 1;
                while (size >= 0) {
                    View view2 = (View) this.f14330a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f14298h && staggeredGridLayoutManager.getPosition(view2) >= i11) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f14298h && staggeredGridLayoutManager2.getPosition(view2) <= i11) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f14330a.size();
                int i13 = 0;
                while (i13 < size2) {
                    View view3 = (View) this.f14330a.get(i13);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f14298h && staggeredGridLayoutManager3.getPosition(view3) <= i11) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f14298h && staggeredGridLayoutManager4.getPosition(view3) >= i11) || !view3.hasFocusable()) {
                        break;
                    }
                    i13++;
                    view = view3;
                }
            }
            return view;
        }

        b r(View view) {
            return (b) view.getLayoutParams();
        }

        int s() {
            int i11 = this.f14331b;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            d();
            return this.f14331b;
        }

        int t(int i11) {
            int i12 = this.f14331b;
            if (i12 != Integer.MIN_VALUE) {
                return i12;
            }
            if (this.f14330a.size() == 0) {
                return i11;
            }
            d();
            return this.f14331b;
        }

        void u() {
            this.f14331b = Integer.MIN_VALUE;
            this.f14332c = Integer.MIN_VALUE;
        }

        void v(int i11) {
            int i12 = this.f14331b;
            if (i12 != Integer.MIN_VALUE) {
                this.f14331b = i12 + i11;
            }
            int i13 = this.f14332c;
            if (i13 != Integer.MIN_VALUE) {
                this.f14332c = i13 + i11;
            }
        }

        void w() {
            int size = this.f14330a.size();
            View view = (View) this.f14330a.remove(size - 1);
            b bVarR = r(view);
            bVarR.f14328a = null;
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14333d -= StaggeredGridLayoutManager.this.f14293c.e(view);
            }
            if (size == 1) {
                this.f14331b = Integer.MIN_VALUE;
            }
            this.f14332c = Integer.MIN_VALUE;
        }

        void x() {
            View view = (View) this.f14330a.remove(0);
            b bVarR = r(view);
            bVarR.f14328a = null;
            if (this.f14330a.size() == 0) {
                this.f14332c = Integer.MIN_VALUE;
            }
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14333d -= StaggeredGridLayoutManager.this.f14293c.e(view);
            }
            this.f14331b = Integer.MIN_VALUE;
        }

        void y(View view) {
            b bVarR = r(view);
            bVarR.f14328a = this;
            this.f14330a.add(0, view);
            this.f14331b = Integer.MIN_VALUE;
            if (this.f14330a.size() == 1) {
                this.f14332c = Integer.MIN_VALUE;
            }
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14333d += StaggeredGridLayoutManager.this.f14293c.e(view);
            }
        }

        void z(int i11) {
            this.f14331b = i11;
            this.f14332c = i11;
        }
    }

    public StaggeredGridLayoutManager(int i11, int i12) {
        this.f14295e = i12;
        h0(i11);
        this.f14297g = new g();
        x();
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        RecyclerView.m.d properties = RecyclerView.m.getProperties(context, attributeSet, i11, i12);
        setOrientation(properties.f14238a);
        h0(properties.f14239b);
        setReverseLayout(properties.f14240c);
        this.f14297g = new g();
        x();
    }

    private int F(int i11) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i11) {
                return position;
            }
        }
        return 0;
    }

    private void H(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int i11;
        int iL = L(Integer.MIN_VALUE);
        if (iL != Integer.MIN_VALUE && (i11 = this.f14293c.i() - iL) > 0) {
            int i12 = i11 - (-scrollBy(-i11, tVar, yVar));
            if (!z10 || i12 <= 0) {
                return;
            }
            this.f14293c.r(i12);
        }
    }

    private void I(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iM;
        int iO = O(Integer.MAX_VALUE);
        if (iO != Integer.MAX_VALUE && (iM = iO - this.f14293c.m()) > 0) {
            int iScrollBy = iM - scrollBy(iM, tVar, yVar);
            if (!z10 || iScrollBy <= 0) {
                return;
            }
            this.f14293c.r(-iScrollBy);
        }
    }

    private int L(int i11) {
        int iP = this.f14292b[0].p(i11);
        for (int i12 = 1; i12 < this.f14291a; i12++) {
            int iP2 = this.f14292b[i12].p(i11);
            if (iP2 > iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private int M(int i11) {
        int iT = this.f14292b[0].t(i11);
        for (int i12 = 1; i12 < this.f14291a; i12++) {
            int iT2 = this.f14292b[i12].t(i11);
            if (iT2 > iT) {
                iT = iT2;
            }
        }
        return iT;
    }

    private int N(int i11) {
        int iP = this.f14292b[0].p(i11);
        for (int i12 = 1; i12 < this.f14291a; i12++) {
            int iP2 = this.f14292b[i12].p(i11);
            if (iP2 < iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private int O(int i11) {
        int iT = this.f14292b[0].t(i11);
        for (int i12 = 1; i12 < this.f14291a; i12++) {
            int iT2 = this.f14292b[i12].t(i11);
            if (iT2 < iT) {
                iT = iT2;
            }
        }
        return iT;
    }

    private c P(g gVar) {
        int i11;
        int i12;
        int i13;
        if (X(gVar.f14382e)) {
            i12 = this.f14291a - 1;
            i11 = -1;
            i13 = -1;
        } else {
            i11 = this.f14291a;
            i12 = 0;
            i13 = 1;
        }
        c cVar = null;
        if (gVar.f14382e == 1) {
            int iM = this.f14293c.m();
            int i14 = Integer.MAX_VALUE;
            while (i12 != i11) {
                c cVar2 = this.f14292b[i12];
                int iP = cVar2.p(iM);
                if (iP < i14) {
                    cVar = cVar2;
                    i14 = iP;
                }
                i12 += i13;
            }
            return cVar;
        }
        int i15 = this.f14293c.i();
        int i16 = Integer.MIN_VALUE;
        while (i12 != i11) {
            c cVar3 = this.f14292b[i12];
            int iT = cVar3.t(i15);
            if (iT > i16) {
                cVar = cVar3;
                i16 = iT;
            }
            i12 += i13;
        }
        return cVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:21:0x003d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0044 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0045  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:27:0x004e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    private void R(int i11, int i12, int i13) {
        int i14;
        int i15;
        int iK;
        int iK2 = this.f14299i ? K() : J();
        if (i13 == 8) {
            if (i11 < i12) {
                i14 = i12 + 1;
            } else {
                i14 = i11 + 1;
                i15 = i12;
            }
            this.f14303m.h(i15);
            if (i13 != 1) {
                this.f14303m.j(i11, i12);
            } else if (i13 != 2) {
                this.f14303m.k(i11, i12);
            } else if (i13 == 8) {
                this.f14303m.k(i11, 1);
                this.f14303m.j(i12, 1);
            }
            if (i14 <= iK2) {
                return;
            }
            if (this.f14299i) {
                iK = J();
            } else {
                iK = K();
            }
            if (i15 <= iK) {
                requestLayout();
            }
        }
        i14 = i11 + i12;
        i15 = i11;
        this.f14303m.h(i15);
        if (i13 != 1) {
            this.f14303m.j(i11, i12);
        } else if (i13 != 2) {
            this.f14303m.k(i11, i12);
        } else if (i13 == 8) {
            this.f14303m.k(i11, 1);
            this.f14303m.j(i12, 1);
        }
        if (i14 <= iK2) {
            return;
        }
        if (this.f14299i) {
            iK = J();
        } else {
            iK = K();
        }
        if (i15 <= iK) {
            requestLayout();
        }
    }

    private void U(View view, int i11, int i12, boolean z10) {
        calculateItemDecorationsForChild(view, this.f14309s);
        b bVar = (b) view.getLayoutParams();
        int i13 = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
        Rect rect = this.f14309s;
        int iP0 = p0(i11, i13 + rect.left, ((ViewGroup.MarginLayoutParams) bVar).rightMargin + rect.right);
        int i14 = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
        Rect rect2 = this.f14309s;
        int iP1 = p0(i12, i14 + rect2.top, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin + rect2.bottom);
        if (z10 ? shouldReMeasureChild(view, iP0, iP1, bVar) : shouldMeasureChild(view, iP0, iP1, bVar)) {
            view.measure(iP0, iP1);
        }
    }

    private void V(View view, b bVar, boolean z10) {
        if (bVar.f14329b) {
            if (this.f14295e == 1) {
                U(view, this.f14308r, RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) bVar).height, true), z10);
                return;
            } else {
                U(view, RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) bVar).width, true), this.f14308r, z10);
                return;
            }
        }
        if (this.f14295e == 1) {
            U(view, RecyclerView.m.getChildMeasureSpec(this.f14296f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) bVar).width, false), RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) bVar).height, true), z10);
        } else {
            U(view, RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) bVar).width, true), RecyclerView.m.getChildMeasureSpec(this.f14296f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) bVar).height, false), z10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0155  */
    private void W(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        boolean z11;
        SavedState savedState;
        a aVar = this.f14310t;
        if (!(this.f14307q == null && this.f14301k == -1) && yVar.b() == 0) {
            removeAndRecycleAllViews(tVar);
            aVar.c();
            return;
        }
        boolean z12 = (aVar.f14325e && this.f14301k == -1 && this.f14307q == null) ? false : true;
        if (z12) {
            aVar.c();
            if (this.f14307q != null) {
                l(aVar);
            } else {
                e0();
                aVar.f14323c = this.f14299i;
            }
            l0(yVar, aVar);
            aVar.f14325e = true;
        }
        if (this.f14307q == null && this.f14301k == -1 && (aVar.f14323c != this.f14305o || isLayoutRTL() != this.f14306p)) {
            this.f14303m.b();
            aVar.f14324d = true;
        }
        if (getChildCount() > 0 && ((savedState = this.f14307q) == null || savedState.mSpanOffsetsSize < 1)) {
            if (aVar.f14324d) {
                for (int i11 = 0; i11 < this.f14291a; i11++) {
                    this.f14292b[i11].e();
                    int i12 = aVar.f14322b;
                    if (i12 != Integer.MIN_VALUE) {
                        this.f14292b[i11].z(i12);
                    }
                }
            } else if (z12 || this.f14310t.f14326f == null) {
                for (int i13 = 0; i13 < this.f14291a; i13++) {
                    this.f14292b[i13].b(this.f14299i, aVar.f14322b);
                }
                this.f14310t.d(this.f14292b);
            } else {
                for (int i14 = 0; i14 < this.f14291a; i14++) {
                    c cVar = this.f14292b[i14];
                    cVar.e();
                    cVar.z(this.f14310t.f14326f[i14]);
                }
            }
        }
        detachAndScrapAttachedViews(tVar);
        this.f14297g.f14378a = false;
        this.f14311u = false;
        n0(this.f14294d.n());
        m0(aVar.f14321a, yVar);
        if (aVar.f14323c) {
            g0(-1);
            y(tVar, this.f14297g, yVar);
            g0(1);
            g gVar = this.f14297g;
            gVar.f14380c = aVar.f14321a + gVar.f14381d;
            y(tVar, gVar, yVar);
        } else {
            g0(1);
            y(tVar, this.f14297g, yVar);
            g0(-1);
            g gVar2 = this.f14297g;
            gVar2.f14380c = aVar.f14321a + gVar2.f14381d;
            y(tVar, gVar2, yVar);
        }
        d0();
        if (getChildCount() > 0) {
            if (this.f14299i) {
                H(tVar, yVar, true);
                I(tVar, yVar, false);
            } else {
                I(tVar, yVar, true);
                H(tVar, yVar, false);
            }
        }
        if (z10 && !yVar.e() && this.f14304n != 0 && getChildCount() > 0 && (this.f14311u || S() != null)) {
            removeCallbacks(this.f14314x);
            z11 = q();
        }
        if (yVar.e()) {
            this.f14310t.c();
        }
        this.f14305o = aVar.f14323c;
        this.f14306p = isLayoutRTL();
        if (z11) {
            this.f14310t.c();
            W(tVar, yVar, false);
        }
    }

    private boolean X(int i11) {
        if (this.f14295e == 0) {
            return (i11 == -1) != this.f14299i;
        }
        return ((i11 == -1) == this.f14299i) == isLayoutRTL();
    }

    private void Z(View view) {
        for (int i11 = this.f14291a - 1; i11 >= 0; i11--) {
            this.f14292b[i11].y(view);
        }
    }

    private void a0(RecyclerView.t tVar, g gVar) {
        int iMin;
        if (!gVar.f14378a || gVar.f14386i) {
            return;
        }
        if (gVar.f14379b == 0) {
            if (gVar.f14382e == -1) {
                b0(tVar, gVar.f14384g);
                return;
            } else {
                c0(tVar, gVar.f14383f);
                return;
            }
        }
        if (gVar.f14382e == -1) {
            int i11 = gVar.f14383f;
            int iM = i11 - M(i11);
            b0(tVar, iM < 0 ? gVar.f14384g : gVar.f14384g - Math.min(iM, gVar.f14379b));
        } else {
            int iN = N(gVar.f14384g) - gVar.f14384g;
            if (iN < 0) {
                iMin = gVar.f14383f;
            } else {
                iMin = Math.min(iN, gVar.f14379b) + gVar.f14383f;
            }
            c0(tVar, iMin);
        }
    }

    private void b0(RecyclerView.t tVar, int i11) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f14293c.g(childAt) < i11 || this.f14293c.q(childAt) < i11) {
                return;
            }
            b bVar = (b) childAt.getLayoutParams();
            if (bVar.f14329b) {
                for (int i12 = 0; i12 < this.f14291a; i12++) {
                    if (this.f14292b[i12].f14330a.size() == 1) {
                        return;
                    }
                }
                for (int i13 = 0; i13 < this.f14291a; i13++) {
                    this.f14292b[i13].w();
                }
            } else if (bVar.f14328a.f14330a.size() == 1) {
                return;
            } else {
                bVar.f14328a.w();
            }
            removeAndRecycleView(childAt, tVar);
        }
    }

    private void c0(RecyclerView.t tVar, int i11) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f14293c.d(childAt) > i11 || this.f14293c.p(childAt) > i11) {
                return;
            }
            b bVar = (b) childAt.getLayoutParams();
            if (bVar.f14329b) {
                for (int i12 = 0; i12 < this.f14291a; i12++) {
                    if (this.f14292b[i12].f14330a.size() == 1) {
                        return;
                    }
                }
                for (int i13 = 0; i13 < this.f14291a; i13++) {
                    this.f14292b[i13].x();
                }
            } else if (bVar.f14328a.f14330a.size() == 1) {
                return;
            } else {
                bVar.f14328a.x();
            }
            removeAndRecycleView(childAt, tVar);
        }
    }

    private int convertFocusDirectionToLayoutDirection(int i11) {
        if (i11 == 1) {
            return (this.f14295e != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i11 == 2) {
            return (this.f14295e != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i11 == 17) {
            return this.f14295e == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i11 == 33) {
            return this.f14295e == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i11 != 66) {
            return (i11 == 130 && this.f14295e == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f14295e == 0 ? 1 : Integer.MIN_VALUE;
    }

    private void d0() {
        if (this.f14294d.k() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            float fE = this.f14294d.e(childAt);
            if (fE >= fMax) {
                if (((b) childAt.getLayoutParams()).b()) {
                    fE = (fE * 1.0f) / this.f14291a;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i12 = this.f14296f;
        int iRound = Math.round(fMax * this.f14291a);
        if (this.f14294d.k() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.f14294d.n());
        }
        n0(iRound);
        if (this.f14296f == i12) {
            return;
        }
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            b bVar = (b) childAt2.getLayoutParams();
            if (!bVar.f14329b) {
                if (isLayoutRTL() && this.f14295e == 1) {
                    int i14 = this.f14291a;
                    int i15 = bVar.f14328a.f14334e;
                    childAt2.offsetLeftAndRight(((-((i14 - 1) - i15)) * this.f14296f) - ((-((i14 - 1) - i15)) * i12));
                } else {
                    int i16 = bVar.f14328a.f14334e;
                    int i17 = this.f14296f * i16;
                    int i18 = i16 * i12;
                    if (this.f14295e == 1) {
                        childAt2.offsetLeftAndRight(i17 - i18);
                    } else {
                        childAt2.offsetTopAndBottom(i17 - i18);
                    }
                }
            }
        }
    }

    private void e0() {
        if (this.f14295e == 1 || !isLayoutRTL()) {
            this.f14299i = this.f14298h;
        } else {
            this.f14299i = !this.f14298h;
        }
    }

    private void g0(int i11) {
        g gVar = this.f14297g;
        gVar.f14382e = i11;
        gVar.f14381d = this.f14299i != (i11 == -1) ? -1 : 1;
    }

    private void i0(int i11, int i12) {
        for (int i13 = 0; i13 < this.f14291a; i13++) {
            if (!this.f14292b[i13].f14330a.isEmpty()) {
                o0(this.f14292b[i13], i11, i12);
            }
        }
    }

    private boolean j0(RecyclerView.y yVar, a aVar) {
        aVar.f14321a = this.f14305o ? F(yVar.b()) : z(yVar.b());
        aVar.f14322b = Integer.MIN_VALUE;
        return true;
    }

    private void k(View view) {
        for (int i11 = this.f14291a - 1; i11 >= 0; i11--) {
            this.f14292b[i11].a(view);
        }
    }

    private void l(a aVar) {
        SavedState savedState = this.f14307q;
        int i11 = savedState.mSpanOffsetsSize;
        if (i11 > 0) {
            if (i11 == this.f14291a) {
                for (int i12 = 0; i12 < this.f14291a; i12++) {
                    this.f14292b[i12].e();
                    SavedState savedState2 = this.f14307q;
                    int i13 = savedState2.mSpanOffsets[i12];
                    if (i13 != Integer.MIN_VALUE) {
                        i13 += savedState2.mAnchorLayoutFromEnd ? this.f14293c.i() : this.f14293c.m();
                    }
                    this.f14292b[i12].z(i13);
                }
            } else {
                savedState.invalidateSpanInfo();
                SavedState savedState3 = this.f14307q;
                savedState3.mAnchorPosition = savedState3.mVisibleAnchorPosition;
            }
        }
        SavedState savedState4 = this.f14307q;
        this.f14306p = savedState4.mLastLayoutRTL;
        setReverseLayout(savedState4.mReverseLayout);
        e0();
        SavedState savedState5 = this.f14307q;
        int i14 = savedState5.mAnchorPosition;
        if (i14 != -1) {
            this.f14301k = i14;
            aVar.f14323c = savedState5.mAnchorLayoutFromEnd;
        } else {
            aVar.f14323c = this.f14299i;
        }
        if (savedState5.mSpanLookupSize > 1) {
            LazySpanLookup lazySpanLookup = this.f14303m;
            lazySpanLookup.f14315a = savedState5.mSpanLookup;
            lazySpanLookup.f14316b = savedState5.mFullSpanItems;
        }
    }

    private void m0(int i11, RecyclerView.y yVar) {
        int iN;
        int iN2;
        int iC;
        g gVar = this.f14297g;
        boolean z10 = false;
        gVar.f14379b = 0;
        gVar.f14380c = i11;
        if (!isSmoothScrolling() || (iC = yVar.c()) == -1) {
            iN = 0;
            iN2 = 0;
        } else {
            if (this.f14299i == (iC < i11)) {
                iN = this.f14293c.n();
                iN2 = 0;
            } else {
                iN2 = this.f14293c.n();
                iN = 0;
            }
        }
        if (getClipToPadding()) {
            this.f14297g.f14383f = this.f14293c.m() - iN2;
            this.f14297g.f14384g = this.f14293c.i() + iN;
        } else {
            this.f14297g.f14384g = this.f14293c.h() + iN;
            this.f14297g.f14383f = -iN2;
        }
        g gVar2 = this.f14297g;
        gVar2.f14385h = false;
        gVar2.f14378a = true;
        if (this.f14293c.k() == 0 && this.f14293c.h() == 0) {
            z10 = true;
        }
        gVar2.f14386i = z10;
    }

    private void o(View view, b bVar, g gVar) {
        if (gVar.f14382e == 1) {
            if (bVar.f14329b) {
                k(view);
                return;
            } else {
                bVar.f14328a.a(view);
                return;
            }
        }
        if (bVar.f14329b) {
            Z(view);
        } else {
            bVar.f14328a.y(view);
        }
    }

    private void o0(c cVar, int i11, int i12) {
        int iN = cVar.n();
        if (i11 == -1) {
            if (cVar.s() + iN <= i12) {
                this.f14300j.set(cVar.f14334e, false);
            }
        } else if (cVar.o() - iN >= i12) {
            this.f14300j.set(cVar.f14334e, false);
        }
    }

    private int p(int i11) {
        if (getChildCount() == 0) {
            return this.f14299i ? 1 : -1;
        }
        return (i11 < J()) != this.f14299i ? -1 : 1;
    }

    private int p0(int i11, int i12, int i13) {
        if (i12 == 0 && i13 == 0) {
            return i11;
        }
        int mode = View.MeasureSpec.getMode(i11);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i11) - i12) - i13), mode) : i11;
    }

    private boolean r(c cVar) {
        if (this.f14299i) {
            if (cVar.o() < this.f14293c.i()) {
                ArrayList arrayList = cVar.f14330a;
                return !cVar.r((View) arrayList.get(arrayList.size() - 1)).f14329b;
            }
        } else if (cVar.s() > this.f14293c.m()) {
            return !cVar.r((View) cVar.f14330a.get(0)).f14329b;
        }
        return false;
    }

    private int s(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return p.a(yVar, this.f14293c, B(!this.f14312v), A(!this.f14312v), this, this.f14312v);
    }

    private int t(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return p.b(yVar, this.f14293c, B(!this.f14312v), A(!this.f14312v), this, this.f14312v, this.f14299i);
    }

    private int u(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return p.c(yVar, this.f14293c, B(!this.f14312v), A(!this.f14312v), this, this.f14312v);
    }

    private LazySpanLookup.FullSpanItem v(int i11) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f14319c = new int[this.f14291a];
        for (int i12 = 0; i12 < this.f14291a; i12++) {
            fullSpanItem.f14319c[i12] = i11 - this.f14292b[i12].p(i11);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem w(int i11) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f14319c = new int[this.f14291a];
        for (int i12 = 0; i12 < this.f14291a; i12++) {
            fullSpanItem.f14319c[i12] = this.f14292b[i12].t(i11) - i11;
        }
        return fullSpanItem;
    }

    private void x() {
        this.f14293c = m.b(this, this.f14295e);
        this.f14294d = m.b(this, 1 - this.f14295e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.recyclerview.widget.RecyclerView$m, androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int y(RecyclerView.t tVar, g gVar, RecyclerView.y yVar) {
        int i11;
        int iL;
        c cVarP;
        int iE;
        int i12;
        int iE2;
        int iE3;
        boolean z10;
        ?? r11 = 0;
        this.f14300j.set(0, this.f14291a, true);
        if (this.f14297g.f14386i) {
            i11 = gVar.f14382e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i11 = gVar.f14382e == 1 ? gVar.f14384g + gVar.f14379b : gVar.f14383f - gVar.f14379b;
        }
        int i13 = i11;
        i0(gVar.f14382e, i13);
        int i14 = this.f14299i ? this.f14293c.i() : this.f14293c.m();
        ?? r12 = false;
        while (gVar.a(yVar) && (this.f14297g.f14386i || !this.f14300j.isEmpty())) {
            View viewB = gVar.b(tVar);
            b bVar = (b) viewB.getLayoutParams();
            int viewLayoutPosition = bVar.getViewLayoutPosition();
            int iG = this.f14303m.g(viewLayoutPosition);
            ?? r13 = iG == -1 ? 1 : r11;
            if (r13 != 0) {
                cVarP = bVar.f14329b ? this.f14292b[r11] : P(gVar);
                this.f14303m.n(viewLayoutPosition, cVarP);
            } else {
                cVarP = this.f14292b[iG];
            }
            c cVar = cVarP;
            bVar.f14328a = cVar;
            if (gVar.f14382e == 1) {
                addView(viewB);
            } else {
                addView(viewB, r11);
            }
            V(viewB, bVar, r11);
            if (gVar.f14382e == 1) {
                int iL2 = bVar.f14329b ? L(i14) : cVar.p(i14);
                int iE4 = this.f14293c.e(viewB) + iL2;
                if (r13 != 0 && bVar.f14329b) {
                    LazySpanLookup.FullSpanItem fullSpanItemV = v(iL2);
                    fullSpanItemV.f14318b = -1;
                    fullSpanItemV.f14317a = viewLayoutPosition;
                    this.f14303m.a(fullSpanItemV);
                }
                i12 = iE4;
                iE = iL2;
            } else {
                int iO = bVar.f14329b ? O(i14) : cVar.t(i14);
                iE = iO - this.f14293c.e(viewB);
                if (r13 != 0 && bVar.f14329b) {
                    LazySpanLookup.FullSpanItem fullSpanItemW = w(iO);
                    fullSpanItemW.f14318b = 1;
                    fullSpanItemW.f14317a = viewLayoutPosition;
                    this.f14303m.a(fullSpanItemW);
                }
                i12 = iO;
            }
            if (bVar.f14329b && gVar.f14381d == -1) {
                if (r13 != 0) {
                    this.f14311u = true;
                } else {
                    if (!(gVar.f14382e == 1 ? m() : n())) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.f14303m.f(viewLayoutPosition);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f14320d = true;
                        }
                        this.f14311u = true;
                    }
                }
            }
            o(viewB, bVar, gVar);
            if (isLayoutRTL() && this.f14295e == 1) {
                int i15 = bVar.f14329b ? this.f14294d.i() : this.f14294d.i() - (((this.f14291a - 1) - cVar.f14334e) * this.f14296f);
                iE3 = i15;
                iE2 = i15 - this.f14294d.e(viewB);
            } else {
                int iM = bVar.f14329b ? this.f14294d.m() : (cVar.f14334e * this.f14296f) + this.f14294d.m();
                iE2 = iM;
                iE3 = this.f14294d.e(viewB) + iM;
            }
            if (this.f14295e == 1) {
                layoutDecoratedWithMargins(viewB, iE2, iE, iE3, i12);
            } else {
                layoutDecoratedWithMargins(viewB, iE, iE2, i12, iE3);
            }
            if (bVar.f14329b) {
                i0(this.f14297g.f14382e, i13);
            } else {
                o0(cVar, this.f14297g.f14382e, i13);
            }
            a0(tVar, this.f14297g);
            if (!this.f14297g.f14385h || !viewB.hasFocusable()) {
                z10 = false;
            } else if (bVar.f14329b) {
                this.f14300j.clear();
                z10 = false;
            } else {
                z10 = false;
                this.f14300j.set(cVar.f14334e, false);
            }
            r11 = z10;
            r12 = true;
        }
        ?? r14 = r11;
        if (r12 == false) {
            a0(tVar, this.f14297g);
        }
        if (this.f14297g.f14382e == -1) {
            iL = this.f14293c.m() - O(this.f14293c.m());
        } else {
            iL = L(this.f14293c.i()) - this.f14293c.i();
        }
        return iL > 0 ? Math.min(gVar.f14379b, iL) : r14 == true ? 1 : 0;
    }

    private int z(int i11) {
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            int position = getPosition(getChildAt(i12));
            if (position >= 0 && position < i11) {
                return position;
            }
        }
        return 0;
    }

    View A(boolean z10) {
        int iM = this.f14293c.m();
        int i11 = this.f14293c.i();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iG = this.f14293c.g(childAt);
            int iD = this.f14293c.d(childAt);
            if (iD > iM && iG < i11) {
                if (iD <= i11 || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View B(boolean z10) {
        int iM = this.f14293c.m();
        int i11 = this.f14293c.i();
        int childCount = getChildCount();
        View view = null;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int iG = this.f14293c.g(childAt);
            if (this.f14293c.d(childAt) > iM && iG < i11) {
                if (iG >= iM || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    int C() {
        View viewA = this.f14299i ? A(true) : B(true);
        if (viewA == null) {
            return -1;
        }
        return getPosition(viewA);
    }

    public int[] D(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f14291a];
        } else if (iArr.length < this.f14291a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f14291a + ", array size:" + iArr.length);
        }
        for (int i11 = 0; i11 < this.f14291a; i11++) {
            iArr[i11] = this.f14292b[i11].g();
        }
        return iArr;
    }

    public int[] E(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f14291a];
        } else if (iArr.length < this.f14291a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f14291a + ", array size:" + iArr.length);
        }
        for (int i11 = 0; i11 < this.f14291a; i11++) {
            iArr[i11] = this.f14292b[i11].h();
        }
        return iArr;
    }

    public int[] G(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f14291a];
        } else if (iArr.length < this.f14291a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f14291a + ", array size:" + iArr.length);
        }
        for (int i11 = 0; i11 < this.f14291a; i11++) {
            iArr[i11] = this.f14292b[i11].j();
        }
        return iArr;
    }

    int J() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    int K() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public int Q() {
        return this.f14291a;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:0x0099  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c  */
    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2 A[SYNTHETIC] */
    View S() {
        int i11;
        boolean z10;
        boolean z11;
        int childCount = getChildCount();
        int i12 = childCount - 1;
        BitSet bitSet = new BitSet(this.f14291a);
        bitSet.set(0, this.f14291a, true);
        byte b11 = (this.f14295e == 1 && isLayoutRTL()) ? (byte) 1 : (byte) -1;
        if (this.f14299i) {
            childCount = -1;
        } else {
            i12 = 0;
        }
        int i13 = i12 < childCount ? 1 : -1;
        while (i12 != childCount) {
            View childAt = getChildAt(i12);
            b bVar = (b) childAt.getLayoutParams();
            if (bitSet.get(bVar.f14328a.f14334e)) {
                if (r(bVar.f14328a)) {
                    return childAt;
                }
                bitSet.clear(bVar.f14328a.f14334e);
            }
            if (!bVar.f14329b && (i11 = i12 + i13) != childCount) {
                View childAt2 = getChildAt(i11);
                if (this.f14299i) {
                    int iD = this.f14293c.d(childAt);
                    int iD2 = this.f14293c.d(childAt2);
                    if (iD < iD2) {
                        return childAt;
                    }
                    if (iD == iD2) {
                        if (bVar.f14328a.f14334e - ((b) childAt2.getLayoutParams()).f14328a.f14334e < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (b11 < 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z10 != z11) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iG = this.f14293c.g(childAt);
                    int iG2 = this.f14293c.g(childAt2);
                    if (iG > iG2) {
                        return childAt;
                    }
                    if (iG == iG2) {
                        if (bVar.f14328a.f14334e - ((b) childAt2.getLayoutParams()).f14328a.f14334e < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (b11 < 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z10 != z11) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                }
            }
            i12 += i13;
        }
        return null;
    }

    public void T() {
        this.f14303m.b();
        requestLayout();
    }

    void Y(int i11, RecyclerView.y yVar) {
        int iJ;
        int i12;
        if (i11 > 0) {
            iJ = K();
            i12 = 1;
        } else {
            iJ = J();
            i12 = -1;
        }
        this.f14297g.f14378a = true;
        m0(iJ, yVar);
        g0(i12);
        g gVar = this.f14297g;
        gVar.f14380c = iJ + gVar.f14381d;
        gVar.f14379b = Math.abs(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f14307q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollHorizontally() {
        return this.f14295e == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollVertically() {
        return this.f14295e == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean checkLayoutParams(RecyclerView.n nVar) {
        return nVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void collectAdjacentPrefetchPositions(int i11, int i12, RecyclerView.y yVar, RecyclerView.m.c cVar) {
        int iP;
        int iT;
        if (this.f14295e != 0) {
            i11 = i12;
        }
        if (getChildCount() == 0 || i11 == 0) {
            return;
        }
        Y(i11, yVar);
        int[] iArr = this.f14313w;
        if (iArr == null || iArr.length < this.f14291a) {
            this.f14313w = new int[this.f14291a];
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.f14291a; i14++) {
            g gVar = this.f14297g;
            if (gVar.f14381d == -1) {
                iP = gVar.f14383f;
                iT = this.f14292b[i14].t(iP);
            } else {
                iP = this.f14292b[i14].p(gVar.f14384g);
                iT = this.f14297g.f14384g;
            }
            int i15 = iP - iT;
            if (i15 >= 0) {
                this.f14313w[i13] = i15;
                i13++;
            }
        }
        Arrays.sort(this.f14313w, 0, i13);
        for (int i16 = 0; i16 < i13 && this.f14297g.a(yVar); i16++) {
            cVar.a(this.f14297g.f14380c, this.f14313w[i16]);
            g gVar2 = this.f14297g;
            gVar2.f14380c += gVar2.f14381d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollExtent(RecyclerView.y yVar) {
        return s(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollOffset(RecyclerView.y yVar) {
        return t(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollRange(RecyclerView.y yVar) {
        return u(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public PointF computeScrollVectorForPosition(int i11) {
        int iP = p(i11);
        PointF pointF = new PointF();
        if (iP == 0) {
            return null;
        }
        if (this.f14295e == 0) {
            pointF.x = iP;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iP;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollExtent(RecyclerView.y yVar) {
        return s(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollOffset(RecyclerView.y yVar) {
        return t(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollRange(RecyclerView.y yVar) {
        return u(yVar);
    }

    public void f0(int i11) {
        assertNotInLayoutOrScroll(null);
        if (i11 == this.f14304n) {
            return;
        }
        if (i11 != 0 && i11 != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.f14304n = i11;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateDefaultLayoutParams() {
        return this.f14295e == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public int getOrientation() {
        return this.f14295e;
    }

    public void h0(int i11) {
        assertNotInLayoutOrScroll(null);
        if (i11 != this.f14291a) {
            T();
            this.f14291a = i11;
            this.f14300j = new BitSet(this.f14291a);
            this.f14292b = new c[this.f14291a];
            for (int i12 = 0; i12 < this.f14291a; i12++) {
                this.f14292b[i12] = new c(i12);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean isAutoMeasureEnabled() {
        return this.f14304n != 0;
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    boolean k0(RecyclerView.y yVar, a aVar) {
        int i11;
        if (!yVar.e() && (i11 = this.f14301k) != -1) {
            if (i11 >= 0 && i11 < yVar.b()) {
                SavedState savedState = this.f14307q;
                if (savedState == null || savedState.mAnchorPosition == -1 || savedState.mSpanOffsetsSize < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.f14301k);
                    if (viewFindViewByPosition != null) {
                        aVar.f14321a = this.f14299i ? K() : J();
                        if (this.f14302l != Integer.MIN_VALUE) {
                            if (aVar.f14323c) {
                                aVar.f14322b = (this.f14293c.i() - this.f14302l) - this.f14293c.d(viewFindViewByPosition);
                            } else {
                                aVar.f14322b = (this.f14293c.m() + this.f14302l) - this.f14293c.g(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.f14293c.e(viewFindViewByPosition) > this.f14293c.n()) {
                            aVar.f14322b = aVar.f14323c ? this.f14293c.i() : this.f14293c.m();
                            return true;
                        }
                        int iG = this.f14293c.g(viewFindViewByPosition) - this.f14293c.m();
                        if (iG < 0) {
                            aVar.f14322b = -iG;
                            return true;
                        }
                        int i12 = this.f14293c.i() - this.f14293c.d(viewFindViewByPosition);
                        if (i12 < 0) {
                            aVar.f14322b = i12;
                            return true;
                        }
                        aVar.f14322b = Integer.MIN_VALUE;
                    } else {
                        int i13 = this.f14301k;
                        aVar.f14321a = i13;
                        int i14 = this.f14302l;
                        if (i14 == Integer.MIN_VALUE) {
                            aVar.f14323c = p(i13) == 1;
                            aVar.a();
                        } else {
                            aVar.b(i14);
                        }
                        aVar.f14324d = true;
                    }
                } else {
                    aVar.f14322b = Integer.MIN_VALUE;
                    aVar.f14321a = this.f14301k;
                }
                return true;
            }
            this.f14301k = -1;
            this.f14302l = Integer.MIN_VALUE;
        }
        return false;
    }

    void l0(RecyclerView.y yVar, a aVar) {
        if (k0(yVar, aVar) || j0(yVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.f14321a = 0;
    }

    boolean m() {
        int iP = this.f14292b[0].p(Integer.MIN_VALUE);
        for (int i11 = 1; i11 < this.f14291a; i11++) {
            if (this.f14292b[i11].p(Integer.MIN_VALUE) != iP) {
                return false;
            }
        }
        return true;
    }

    boolean n() {
        int iT = this.f14292b[0].t(Integer.MIN_VALUE);
        for (int i11 = 1; i11 < this.f14291a; i11++) {
            if (this.f14292b[i11].t(Integer.MIN_VALUE) != iT) {
                return false;
            }
        }
        return true;
    }

    void n0(int i11) {
        this.f14296f = i11 / this.f14291a;
        this.f14308r = View.MeasureSpec.makeMeasureSpec(i11, this.f14294d.k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void offsetChildrenHorizontal(int i11) {
        super.offsetChildrenHorizontal(i11);
        for (int i12 = 0; i12 < this.f14291a; i12++) {
            this.f14292b[i12].v(i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void offsetChildrenVertical(int i11) {
        super.offsetChildrenVertical(i11);
        for (int i12 = 0; i12 < this.f14291a; i12++) {
            this.f14292b[i12].v(i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        this.f14303m.b();
        for (int i11 = 0; i11 < this.f14291a; i11++) {
            this.f14292b[i11].e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        removeCallbacks(this.f14314x);
        for (int i11 = 0; i11 < this.f14291a; i11++) {
            this.f14292b[i11].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View onFocusSearchFailed(View view, int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        View viewFindContainingItemView;
        View viewQ;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        e0();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i11);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        b bVar = (b) viewFindContainingItemView.getLayoutParams();
        boolean z10 = bVar.f14329b;
        c cVar = bVar.f14328a;
        int iK = iConvertFocusDirectionToLayoutDirection == 1 ? K() : J();
        m0(iK, yVar);
        g0(iConvertFocusDirectionToLayoutDirection);
        g gVar = this.f14297g;
        gVar.f14380c = gVar.f14381d + iK;
        gVar.f14379b = (int) (this.f14293c.n() * 0.33333334f);
        g gVar2 = this.f14297g;
        gVar2.f14385h = true;
        gVar2.f14378a = false;
        y(tVar, gVar2, yVar);
        this.f14305o = this.f14299i;
        if (!z10 && (viewQ = cVar.q(iK, iConvertFocusDirectionToLayoutDirection)) != null && viewQ != viewFindContainingItemView) {
            return viewQ;
        }
        if (X(iConvertFocusDirectionToLayoutDirection)) {
            for (int i12 = this.f14291a - 1; i12 >= 0; i12--) {
                View viewQ2 = this.f14292b[i12].q(iK, iConvertFocusDirectionToLayoutDirection);
                if (viewQ2 != null && viewQ2 != viewFindContainingItemView) {
                    return viewQ2;
                }
            }
        } else {
            for (int i13 = 0; i13 < this.f14291a; i13++) {
                View viewQ3 = this.f14292b[i13].q(iK, iConvertFocusDirectionToLayoutDirection);
                if (viewQ3 != null && viewQ3 != viewFindContainingItemView) {
                    return viewQ3;
                }
            }
        }
        boolean z11 = (this.f14298h ^ true) == (iConvertFocusDirectionToLayoutDirection == -1);
        if (!z10) {
            View viewFindViewByPosition = findViewByPosition(z11 ? cVar.f() : cVar.i());
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (X(iConvertFocusDirectionToLayoutDirection)) {
            for (int i14 = this.f14291a - 1; i14 >= 0; i14--) {
                if (i14 != cVar.f14334e) {
                    View viewFindViewByPosition2 = findViewByPosition(z11 ? this.f14292b[i14].f() : this.f14292b[i14].i());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i15 = 0; i15 < this.f14291a; i15++) {
                View viewFindViewByPosition3 = findViewByPosition(z11 ? this.f14292b[i15].f() : this.f14292b[i15].i());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewB = B(false);
            View viewA = A(false);
            if (viewB == null || viewA == null) {
                return;
            }
            int position = getPosition(viewB);
            int position2 = getPosition(viewA);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsAdded(RecyclerView recyclerView, int i11, int i12) {
        R(i11, i12, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f14303m.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsMoved(RecyclerView recyclerView, int i11, int i12, int i13) {
        R(i11, i12, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsRemoved(RecyclerView recyclerView, int i11, int i12) {
        R(i11, i12, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsUpdated(RecyclerView recyclerView, int i11, int i12, Object obj) {
        R(i11, i12, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.y yVar) {
        W(tVar, yVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutCompleted(RecyclerView.y yVar) {
        super.onLayoutCompleted(yVar);
        this.f14301k = -1;
        this.f14302l = Integer.MIN_VALUE;
        this.f14307q = null;
        this.f14310t.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f14307q = savedState;
            if (this.f14301k != -1) {
                savedState.invalidateAnchorPositionInfo();
                this.f14307q.invalidateSpanInfo();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public Parcelable onSaveInstanceState() {
        int iT;
        int iM;
        int[] iArr;
        if (this.f14307q != null) {
            return new SavedState(this.f14307q);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.f14298h;
        savedState.mAnchorLayoutFromEnd = this.f14305o;
        savedState.mLastLayoutRTL = this.f14306p;
        LazySpanLookup lazySpanLookup = this.f14303m;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f14315a) == null) {
            savedState.mSpanLookupSize = 0;
        } else {
            savedState.mSpanLookup = iArr;
            savedState.mSpanLookupSize = iArr.length;
            savedState.mFullSpanItems = lazySpanLookup.f14316b;
        }
        if (getChildCount() > 0) {
            savedState.mAnchorPosition = this.f14305o ? K() : J();
            savedState.mVisibleAnchorPosition = C();
            int i11 = this.f14291a;
            savedState.mSpanOffsetsSize = i11;
            savedState.mSpanOffsets = new int[i11];
            for (int i12 = 0; i12 < this.f14291a; i12++) {
                if (this.f14305o) {
                    iT = this.f14292b[i12].p(Integer.MIN_VALUE);
                    if (iT != Integer.MIN_VALUE) {
                        iM = this.f14293c.i();
                        iT -= iM;
                    }
                } else {
                    iT = this.f14292b[i12].t(Integer.MIN_VALUE);
                    if (iT != Integer.MIN_VALUE) {
                        iM = this.f14293c.m();
                        iT -= iM;
                    }
                }
                savedState.mSpanOffsets[i12] = iT;
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onScrollStateChanged(int i11) {
        if (i11 == 0) {
            q();
        }
    }

    boolean q() {
        int iJ;
        int iK;
        if (getChildCount() == 0 || this.f14304n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f14299i) {
            iJ = K();
            iK = J();
        } else {
            iJ = J();
            iK = K();
        }
        if (iJ == 0 && S() != null) {
            this.f14303m.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.f14311u) {
            return false;
        }
        int i11 = this.f14299i ? -1 : 1;
        int i12 = iK + 1;
        LazySpanLookup.FullSpanItem fullSpanItemE = this.f14303m.e(iJ, i12, i11, true);
        if (fullSpanItemE == null) {
            this.f14311u = false;
            this.f14303m.d(i12);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItemE2 = this.f14303m.e(iJ, fullSpanItemE.f14317a, i11 * (-1), true);
        if (fullSpanItemE2 == null) {
            this.f14303m.d(fullSpanItemE.f14317a);
        } else {
            this.f14303m.d(fullSpanItemE2.f14317a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    int scrollBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (getChildCount() == 0 || i11 == 0) {
            return 0;
        }
        Y(i11, yVar);
        int iY = y(tVar, this.f14297g, yVar);
        if (this.f14297g.f14379b >= iY) {
            i11 = i11 < 0 ? -iY : iY;
        }
        this.f14293c.r(-i11);
        this.f14305o = this.f14299i;
        g gVar = this.f14297g;
        gVar.f14379b = 0;
        a0(tVar, gVar);
        return i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int scrollHorizontallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        return scrollBy(i11, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void scrollToPosition(int i11) {
        SavedState savedState = this.f14307q;
        if (savedState != null && savedState.mAnchorPosition != i11) {
            savedState.invalidateAnchorPositionInfo();
        }
        this.f14301k = i11;
        this.f14302l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int scrollVerticallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        return scrollBy(i11, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void setMeasuredDimension(Rect rect, int i11, int i12) {
        int iChooseSize;
        int iChooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f14295e == 1) {
            iChooseSize2 = RecyclerView.m.chooseSize(i12, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = RecyclerView.m.chooseSize(i11, (this.f14296f * this.f14291a) + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.m.chooseSize(i11, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = RecyclerView.m.chooseSize(i12, (this.f14296f * this.f14291a) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setOrientation(int i11) {
        if (i11 != 0 && i11 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i11 == this.f14295e) {
            return;
        }
        this.f14295e = i11;
        m mVar = this.f14293c;
        this.f14293c = this.f14294d;
        this.f14294d = mVar;
        requestLayout();
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f14307q;
        if (savedState != null && savedState.mReverseLayout != z10) {
            savedState.mReverseLayout = z10;
        }
        this.f14298h = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.y yVar, int i11) {
        h hVar = new h(recyclerView.getContext());
        hVar.p(i11);
        startSmoothScroll(hVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean supportsPredictiveItemAnimations() {
        return this.f14307q == null;
    }
}

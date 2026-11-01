package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.m implements RecyclerView.x.b {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final b mLayoutChunkResult;
    private c mLayoutState;
    int mOrientation;
    m mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        /* JADX INFO: loaded from: classes2.dex */
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
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        @SuppressLint({"UnknownNullness"})
        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        m f14205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14206b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f14207c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f14208d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f14209e;

        a() {
            e();
        }

        void a() {
            this.f14207c = this.f14208d ? this.f14205a.i() : this.f14205a.m();
        }

        public void b(View view, int i11) {
            if (this.f14208d) {
                this.f14207c = this.f14205a.d(view) + this.f14205a.o();
            } else {
                this.f14207c = this.f14205a.g(view);
            }
            this.f14206b = i11;
        }

        public void c(View view, int i11) {
            int iO = this.f14205a.o();
            if (iO >= 0) {
                b(view, i11);
                return;
            }
            this.f14206b = i11;
            if (this.f14208d) {
                int i12 = (this.f14205a.i() - iO) - this.f14205a.d(view);
                this.f14207c = this.f14205a.i() - i12;
                if (i12 > 0) {
                    int iE = this.f14207c - this.f14205a.e(view);
                    int iM = this.f14205a.m();
                    int iMin = iE - (iM + Math.min(this.f14205a.g(view) - iM, 0));
                    if (iMin < 0) {
                        this.f14207c += Math.min(i12, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.f14205a.g(view);
            int iM2 = iG - this.f14205a.m();
            this.f14207c = iG;
            if (iM2 > 0) {
                int i13 = (this.f14205a.i() - Math.min(0, (this.f14205a.i() - iO) - this.f14205a.d(view))) - (iG + this.f14205a.e(view));
                if (i13 < 0) {
                    this.f14207c -= Math.min(iM2, -i13);
                }
            }
        }

        boolean d(View view, RecyclerView.y yVar) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return !nVar.isItemRemoved() && nVar.getViewLayoutPosition() >= 0 && nVar.getViewLayoutPosition() < yVar.b();
        }

        void e() {
            this.f14206b = -1;
            this.f14207c = Integer.MIN_VALUE;
            this.f14208d = false;
            this.f14209e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f14206b + ", mCoordinate=" + this.f14207c + ", mLayoutFromEnd=" + this.f14208d + ", mValid=" + this.f14209e + '}';
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14212c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f14213d;

        protected b() {
        }

        void a() {
            this.f14210a = 0;
            this.f14211b = false;
            this.f14212c = false;
            this.f14213d = false;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f14216c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f14217d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f14218e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f14219f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f14220g;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f14224k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f14226m;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f14214a = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f14221h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f14222i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f14223j = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        List f14225l = null;

        c() {
        }

        private View e() {
            int size = this.f14225l.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = ((RecyclerView.b0) this.f14225l.get(i11)).itemView;
                RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
                if (!nVar.isItemRemoved() && this.f14217d == nVar.getViewLayoutPosition()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            b(null);
        }

        public void b(View view) {
            View viewF = f(view);
            if (viewF == null) {
                this.f14217d = -1;
            } else {
                this.f14217d = ((RecyclerView.n) viewF.getLayoutParams()).getViewLayoutPosition();
            }
        }

        boolean c(RecyclerView.y yVar) {
            int i11 = this.f14217d;
            return i11 >= 0 && i11 < yVar.b();
        }

        View d(RecyclerView.t tVar) {
            if (this.f14225l != null) {
                return e();
            }
            View viewO = tVar.o(this.f14217d);
            this.f14217d += this.f14218e;
            return viewO;
        }

        public View f(View view) {
            int viewLayoutPosition;
            int size = this.f14225l.size();
            View view2 = null;
            int i11 = Integer.MAX_VALUE;
            for (int i12 = 0; i12 < size; i12++) {
                View view3 = ((RecyclerView.b0) this.f14225l.get(i12)).itemView;
                RecyclerView.n nVar = (RecyclerView.n) view3.getLayoutParams();
                if (view3 != view && !nVar.isItemRemoved() && (viewLayoutPosition = (nVar.getViewLayoutPosition() - this.f14217d) * this.f14218e) >= 0 && viewLayoutPosition < i11) {
                    view2 = view3;
                    if (viewLayoutPosition == 0) {
                        break;
                    }
                    i11 = viewLayoutPosition;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i11, boolean z10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i11);
        setReverseLayout(z10);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.m.d properties = RecyclerView.m.getProperties(context, attributeSet, i11, i12);
        setOrientation(properties.f14238a);
        setReverseLayout(properties.f14240c);
        setStackFromEnd(properties.f14241d);
    }

    private void A(RecyclerView.t tVar, int i11, int i12) {
        if (i11 < 0) {
            return;
        }
        int i13 = i11 - i12;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = getChildAt(i14);
                if (this.mOrientationHelper.d(childAt) > i13 || this.mOrientationHelper.p(childAt) > i13) {
                    y(tVar, 0, i14);
                    return;
                }
            }
            return;
        }
        int i15 = childCount - 1;
        for (int i16 = i15; i16 >= 0; i16--) {
            View childAt2 = getChildAt(i16);
            if (this.mOrientationHelper.d(childAt2) > i13 || this.mOrientationHelper.p(childAt2) > i13) {
                y(tVar, i15, i16);
                return;
            }
        }
    }

    private void B() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private boolean C(RecyclerView.t tVar, RecyclerView.y yVar, a aVar) {
        View viewFindReferenceChild;
        boolean z10 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.d(focusedChild, yVar)) {
            aVar.c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z11 = this.mLastStackFromEnd;
        boolean z12 = this.mStackFromEnd;
        if (z11 != z12 || (viewFindReferenceChild = findReferenceChild(tVar, yVar, aVar.f14208d, z12)) == null) {
            return false;
        }
        aVar.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
        if (!yVar.e() && supportsPredictiveItemAnimations()) {
            int iG = this.mOrientationHelper.g(viewFindReferenceChild);
            int iD = this.mOrientationHelper.d(viewFindReferenceChild);
            int iM = this.mOrientationHelper.m();
            int i11 = this.mOrientationHelper.i();
            boolean z13 = iD <= iM && iG < iM;
            if (iG >= i11 && iD > i11) {
                z10 = true;
            }
            if (z13 || z10) {
                if (aVar.f14208d) {
                    iM = i11;
                }
                aVar.f14207c = iM;
            }
        }
        return true;
    }

    private boolean D(RecyclerView.y yVar, a aVar) {
        int i11;
        if (!yVar.e() && (i11 = this.mPendingScrollPosition) != -1) {
            if (i11 >= 0 && i11 < yVar.b()) {
                aVar.f14206b = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.hasValidAnchor()) {
                    boolean z10 = this.mPendingSavedState.mAnchorLayoutFromEnd;
                    aVar.f14208d = z10;
                    if (z10) {
                        aVar.f14207c = this.mOrientationHelper.i() - this.mPendingSavedState.mAnchorOffset;
                    } else {
                        aVar.f14207c = this.mOrientationHelper.m() + this.mPendingSavedState.mAnchorOffset;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    boolean z11 = this.mShouldReverseLayout;
                    aVar.f14208d = z11;
                    if (z11) {
                        aVar.f14207c = this.mOrientationHelper.i() - this.mPendingScrollPositionOffset;
                    } else {
                        aVar.f14207c = this.mOrientationHelper.m() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        aVar.f14208d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                    }
                    aVar.a();
                } else {
                    if (this.mOrientationHelper.e(viewFindViewByPosition) > this.mOrientationHelper.n()) {
                        aVar.a();
                        return true;
                    }
                    if (this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m() < 0) {
                        aVar.f14207c = this.mOrientationHelper.m();
                        aVar.f14208d = false;
                        return true;
                    }
                    if (this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition) < 0) {
                        aVar.f14207c = this.mOrientationHelper.i();
                        aVar.f14208d = true;
                        return true;
                    }
                    aVar.f14207c = aVar.f14208d ? this.mOrientationHelper.d(viewFindViewByPosition) + this.mOrientationHelper.o() : this.mOrientationHelper.g(viewFindViewByPosition);
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void E(RecyclerView.t tVar, RecyclerView.y yVar, a aVar) {
        if (D(yVar, aVar) || C(tVar, yVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.f14206b = this.mStackFromEnd ? yVar.b() - 1 : 0;
    }

    private void F(int i11, int i12, boolean z10, RecyclerView.y yVar) {
        int iM;
        this.mLayoutState.f14226m = resolveIsInfinite();
        this.mLayoutState.f14219f = i11;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(yVar, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z11 = i11 == 1;
        c cVar = this.mLayoutState;
        int i13 = z11 ? iMax2 : iMax;
        cVar.f14221h = i13;
        if (!z11) {
            iMax = iMax2;
        }
        cVar.f14222i = iMax;
        if (z11) {
            cVar.f14221h = i13 + this.mOrientationHelper.j();
            View viewT = t();
            c cVar2 = this.mLayoutState;
            cVar2.f14218e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(viewT);
            c cVar3 = this.mLayoutState;
            cVar2.f14217d = position + cVar3.f14218e;
            cVar3.f14215b = this.mOrientationHelper.d(viewT);
            iM = this.mOrientationHelper.d(viewT) - this.mOrientationHelper.i();
        } else {
            View viewU = u();
            this.mLayoutState.f14221h += this.mOrientationHelper.m();
            c cVar4 = this.mLayoutState;
            cVar4.f14218e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(viewU);
            c cVar5 = this.mLayoutState;
            cVar4.f14217d = position2 + cVar5.f14218e;
            cVar5.f14215b = this.mOrientationHelper.g(viewU);
            iM = (-this.mOrientationHelper.g(viewU)) + this.mOrientationHelper.m();
        }
        c cVar6 = this.mLayoutState;
        cVar6.f14216c = i12;
        if (z10) {
            cVar6.f14216c = i12 - iM;
        }
        cVar6.f14220g = iM;
    }

    private void G(int i11, int i12) {
        this.mLayoutState.f14216c = this.mOrientationHelper.i() - i12;
        c cVar = this.mLayoutState;
        cVar.f14218e = this.mShouldReverseLayout ? -1 : 1;
        cVar.f14217d = i11;
        cVar.f14219f = 1;
        cVar.f14215b = i12;
        cVar.f14220g = Integer.MIN_VALUE;
    }

    private void H(a aVar) {
        G(aVar.f14206b, aVar.f14207c);
    }

    private void I(int i11, int i12) {
        this.mLayoutState.f14216c = i12 - this.mOrientationHelper.m();
        c cVar = this.mLayoutState;
        cVar.f14217d = i11;
        cVar.f14218e = this.mShouldReverseLayout ? 1 : -1;
        cVar.f14219f = -1;
        cVar.f14215b = i12;
        cVar.f14220g = Integer.MIN_VALUE;
    }

    private void J(a aVar) {
        I(aVar.f14206b, aVar.f14207c);
    }

    private int k(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return p.a(yVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int l(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return p.b(yVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int m(RecyclerView.y yVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return p.c(yVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View n() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View o() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View p() {
        return this.mShouldReverseLayout ? n() : o();
    }

    private View q() {
        return this.mShouldReverseLayout ? o() : n();
    }

    private int r(int i11, RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int i12;
        int i13 = this.mOrientationHelper.i() - i11;
        if (i13 <= 0) {
            return 0;
        }
        int i14 = -scrollBy(-i13, tVar, yVar);
        int i15 = i11 + i14;
        if (!z10 || (i12 = this.mOrientationHelper.i() - i15) <= 0) {
            return i14;
        }
        this.mOrientationHelper.r(i12);
        return i12 + i14;
    }

    private int s(int i11, RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iM;
        int iM2 = i11 - this.mOrientationHelper.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i12 = -scrollBy(iM2, tVar, yVar);
        int i13 = i11 + i12;
        if (!z10 || (iM = i13 - this.mOrientationHelper.m()) <= 0) {
            return i12;
        }
        this.mOrientationHelper.r(-iM);
        return i12 - iM;
    }

    private View t() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View u() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void v(RecyclerView.t tVar, RecyclerView.y yVar, int i11, int i12) {
        if (!yVar.g() || getChildCount() == 0 || yVar.e() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List listK = tVar.k();
        int size = listK.size();
        int position = getPosition(getChildAt(0));
        int iE = 0;
        int iE2 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView.b0 b0Var = (RecyclerView.b0) listK.get(i13);
            if (!b0Var.isRemoved()) {
                if ((b0Var.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                    iE += this.mOrientationHelper.e(b0Var.itemView);
                } else {
                    iE2 += this.mOrientationHelper.e(b0Var.itemView);
                }
            }
        }
        this.mLayoutState.f14225l = listK;
        if (iE > 0) {
            I(getPosition(u()), i11);
            c cVar = this.mLayoutState;
            cVar.f14221h = iE;
            cVar.f14216c = 0;
            cVar.a();
            fill(tVar, this.mLayoutState, yVar, false);
        }
        if (iE2 > 0) {
            G(getPosition(t()), i12);
            c cVar2 = this.mLayoutState;
            cVar2.f14221h = iE2;
            cVar2.f14216c = 0;
            cVar2.a();
            fill(tVar, this.mLayoutState, yVar, false);
        }
        this.mLayoutState.f14225l = null;
    }

    private void w() {
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("item ");
            sb2.append(getPosition(childAt));
            sb2.append(", coord:");
            sb2.append(this.mOrientationHelper.g(childAt));
        }
    }

    private void x(RecyclerView.t tVar, c cVar) {
        if (!cVar.f14214a || cVar.f14226m) {
            return;
        }
        int i11 = cVar.f14220g;
        int i12 = cVar.f14222i;
        if (cVar.f14219f == -1) {
            z(tVar, i11, i12);
        } else {
            A(tVar, i11, i12);
        }
    }

    private void y(RecyclerView.t tVar, int i11, int i12) {
        if (i11 == i12) {
            return;
        }
        if (i12 <= i11) {
            while (i11 > i12) {
                removeAndRecycleViewAt(i11, tVar);
                i11--;
            }
        } else {
            for (int i13 = i12 - 1; i13 >= i11; i13--) {
                removeAndRecycleViewAt(i13, tVar);
            }
        }
    }

    private void z(RecyclerView.t tVar, int i11, int i12) {
        int childCount = getChildCount();
        if (i11 < 0) {
            return;
        }
        int iH = (this.mOrientationHelper.h() - i11) + i12;
        if (this.mShouldReverseLayout) {
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (this.mOrientationHelper.g(childAt) < iH || this.mOrientationHelper.q(childAt) < iH) {
                    y(tVar, 0, i13);
                    return;
                }
            }
            return;
        }
        int i14 = childCount - 1;
        for (int i15 = i14; i15 >= 0; i15--) {
            View childAt2 = getChildAt(i15);
            if (this.mOrientationHelper.g(childAt2) < iH || this.mOrientationHelper.q(childAt2) < iH) {
                y(tVar, i14, i15);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    protected void calculateExtraLayoutSpace(RecyclerView.y yVar, int[] iArr) {
        int i11;
        int extraLayoutSpace = getExtraLayoutSpace(yVar);
        if (this.mLayoutState.f14219f == -1) {
            i11 = 0;
        } else {
            i11 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i11, int i12, RecyclerView.y yVar, RecyclerView.m.c cVar) {
        if (this.mOrientation != 0) {
            i11 = i12;
        }
        if (getChildCount() == 0 || i11 == 0) {
            return;
        }
        ensureLayoutState();
        F(i11 > 0 ? 1 : -1, Math.abs(i11), true, yVar);
        collectPrefetchPositionsForLayoutState(yVar, this.mLayoutState, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i11, RecyclerView.m.c cVar) {
        boolean z10;
        int i12;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || !savedState.hasValidAnchor()) {
            B();
            z10 = this.mShouldReverseLayout;
            i12 = this.mPendingScrollPosition;
            if (i12 == -1) {
                i12 = z10 ? i11 - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z10 = savedState2.mAnchorLayoutFromEnd;
            i12 = savedState2.mAnchorPosition;
        }
        int i13 = z10 ? -1 : 1;
        for (int i14 = 0; i14 < this.mInitialPrefetchItemCount && i12 >= 0 && i12 < i11; i14++) {
            cVar.a(i12, 0);
            i12 += i13;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.y yVar, c cVar, RecyclerView.m.c cVar2) {
        int i11 = cVar.f14217d;
        if (i11 < 0 || i11 >= yVar.b()) {
            return;
        }
        cVar2.a(i11, Math.max(0, cVar.f14220g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(RecyclerView.y yVar) {
        return k(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(RecyclerView.y yVar) {
        return l(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(RecyclerView.y yVar) {
        return m(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i11) {
        if (getChildCount() == 0) {
            return null;
        }
        int i12 = (i11 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i12, 0.0f) : new PointF(0.0f, i12);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(RecyclerView.y yVar) {
        return k(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(RecyclerView.y yVar) {
        return l(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(RecyclerView.y yVar) {
        return m(yVar);
    }

    int convertFocusDirectionToLayoutDirection(int i11) {
        if (i11 == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i11 == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i11 == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i11 == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i11 != 66) {
            return (i11 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
    }

    c createLayoutState() {
        return new c();
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.t tVar, c cVar, RecyclerView.y yVar, boolean z10) {
        int i11 = cVar.f14216c;
        int i12 = cVar.f14220g;
        if (i12 != Integer.MIN_VALUE) {
            if (i11 < 0) {
                cVar.f14220g = i12 + i11;
            }
            x(tVar, cVar);
        }
        int i13 = cVar.f14216c + cVar.f14221h;
        b bVar = this.mLayoutChunkResult;
        while (true) {
            if ((!cVar.f14226m && i13 <= 0) || !cVar.c(yVar)) {
                break;
            }
            bVar.a();
            layoutChunk(tVar, yVar, cVar, bVar);
            if (!bVar.f14211b) {
                cVar.f14215b += bVar.f14210a * cVar.f14219f;
                if (!bVar.f14212c || cVar.f14225l != null || !yVar.e()) {
                    int i14 = cVar.f14216c;
                    int i15 = bVar.f14210a;
                    cVar.f14216c = i14 - i15;
                    i13 -= i15;
                }
                int i16 = cVar.f14220g;
                if (i16 != Integer.MIN_VALUE) {
                    int i17 = i16 + bVar.f14210a;
                    cVar.f14220g = i17;
                    int i18 = cVar.f14216c;
                    if (i18 < 0) {
                        cVar.f14220g = i17 + i18;
                    }
                    x(tVar, cVar);
                }
                if (z10 && bVar.f14213d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i11 - cVar.f14216c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findFirstVisibleChildClosestToEnd(boolean z10, boolean z11) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z10, z11) : findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
    }

    View findFirstVisibleChildClosestToStart(boolean z10, boolean z11) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z10, z11) : findOneVisibleChild(0, getChildCount(), z10, z11);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i11, int i12) {
        int i13;
        int i14;
        ensureLayoutState();
        if (i12 <= i11 && i12 >= i11) {
            return getChildAt(i11);
        }
        if (this.mOrientationHelper.g(getChildAt(i11)) < this.mOrientationHelper.m()) {
            i13 = 16644;
            i14 = 16388;
        } else {
            i13 = 4161;
            i14 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i11, i12, i13, i14) : this.mVerticalBoundCheck.a(i11, i12, i13, i14);
    }

    View findOneVisibleChild(int i11, int i12, boolean z10, boolean z11) {
        ensureLayoutState();
        int i13 = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        int i14 = z10 ? 24579 : 320;
        if (!z11) {
            i13 = 0;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i11, i12, i14, i13) : this.mVerticalBoundCheck.a(i11, i12, i14, i13);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    View findReferenceChild(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10, boolean z11) {
        int i11;
        int childCount;
        int i12;
        ensureLayoutState();
        int childCount2 = getChildCount();
        if (z11) {
            childCount = getChildCount() - 1;
            i11 = -1;
            i12 = -1;
        } else {
            i11 = childCount2;
            childCount = 0;
            i12 = 1;
        }
        int iB = yVar.b();
        int iM = this.mOrientationHelper.m();
        int i13 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i11) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int iG = this.mOrientationHelper.g(childAt);
            int iD = this.mOrientationHelper.d(childAt);
            if (position >= 0 && position < iB) {
                if (!((RecyclerView.n) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z12 = iD <= iM && iG < iM;
                    boolean z13 = iG >= i13 && iD > i13;
                    if (!z12 && !z13) {
                        return childAt;
                    }
                    if (z10) {
                        if (z13) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (z12) {
                        view2 = childAt;
                    } else if (view == null) {
                        view = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i12;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i11) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i11 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i11) {
                return childAt;
            }
        }
        return super.findViewByPosition(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.n generateDefaultLayoutParams() {
        return new RecyclerView.n(-2, -2);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.y yVar) {
        if (yVar.d()) {
            return this.mOrientationHelper.n();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void layoutChunk(RecyclerView.t tVar, RecyclerView.y yVar, c cVar, b bVar) {
        int i11;
        int i12;
        int i13;
        int paddingLeft;
        int iF;
        View viewD = cVar.d(tVar);
        if (viewD == null) {
            bVar.f14211b = true;
            return;
        }
        RecyclerView.n nVar = (RecyclerView.n) viewD.getLayoutParams();
        if (cVar.f14225l == null) {
            if (this.mShouldReverseLayout == (cVar.f14219f == -1)) {
                addView(viewD);
            } else {
                addView(viewD, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (cVar.f14219f == -1)) {
                addDisappearingView(viewD);
            } else {
                addDisappearingView(viewD, 0);
            }
        }
        measureChildWithMargins(viewD, 0, 0);
        bVar.f14210a = this.mOrientationHelper.e(viewD);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iF = getWidth() - getPaddingRight();
                paddingLeft = iF - this.mOrientationHelper.f(viewD);
            } else {
                paddingLeft = getPaddingLeft();
                iF = this.mOrientationHelper.f(viewD) + paddingLeft;
            }
            if (cVar.f14219f == -1) {
                int i14 = cVar.f14215b;
                i13 = i14;
                i12 = iF;
                i11 = i14 - bVar.f14210a;
            } else {
                int i15 = cVar.f14215b;
                i11 = i15;
                i12 = iF;
                i13 = bVar.f14210a + i15;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iF2 = this.mOrientationHelper.f(viewD) + paddingTop;
            if (cVar.f14219f == -1) {
                int i16 = cVar.f14215b;
                i12 = i16;
                i11 = paddingTop;
                i13 = iF2;
                paddingLeft = i16 - bVar.f14210a;
            } else {
                int i17 = cVar.f14215b;
                i11 = paddingTop;
                i12 = bVar.f14210a + i17;
                i13 = iF2;
                paddingLeft = i17;
            }
        }
        layoutDecoratedWithMargins(viewD, paddingLeft, i11, i12, i13);
        if (nVar.isItemRemoved() || nVar.isItemChanged()) {
            bVar.f14212c = true;
        }
        bVar.f14213d = viewD.hasFocusable();
    }

    void onAnchorReady(RecyclerView.t tVar, RecyclerView.y yVar, a aVar, int i11) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(tVar);
            tVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        int iConvertFocusDirectionToLayoutDirection;
        B();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i11)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        F(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.n() * MAX_SCROLL_FACTOR), false, yVar);
        c cVar = this.mLayoutState;
        cVar.f14220g = Integer.MIN_VALUE;
        cVar.f14214a = false;
        fill(tVar, cVar, yVar, true);
        View viewQ = iConvertFocusDirectionToLayoutDirection == -1 ? q() : p();
        View viewU = iConvertFocusDirectionToLayoutDirection == -1 ? u() : t();
        if (!viewU.hasFocusable()) {
            return viewQ;
        }
        if (viewQ == null) {
            return null;
        }
        return viewU;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.y yVar) {
        int i11;
        int i12;
        int i13;
        int i14;
        int iR;
        int i15;
        View viewFindViewByPosition;
        int iG;
        int i16;
        int i17 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && yVar.b() == 0) {
            removeAndRecycleAllViews(tVar);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.f14214a = false;
        B();
        View focusedChild = getFocusedChild();
        a aVar = this.mAnchorInfo;
        if (!aVar.f14209e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            aVar.e();
            a aVar2 = this.mAnchorInfo;
            aVar2.f14208d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            E(tVar, yVar, aVar2);
            this.mAnchorInfo.f14209e = true;
        } else if (focusedChild != null && (this.mOrientationHelper.g(focusedChild) >= this.mOrientationHelper.i() || this.mOrientationHelper.d(focusedChild) <= this.mOrientationHelper.m())) {
            this.mAnchorInfo.c(focusedChild, getPosition(focusedChild));
        }
        c cVar = this.mLayoutState;
        cVar.f14219f = cVar.f14224k >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(yVar, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.m();
        int iMax2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
        if (yVar.e() && (i15 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i15)) != null) {
            if (this.mShouldReverseLayout) {
                i16 = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition);
                iG = this.mPendingScrollPositionOffset;
            } else {
                iG = this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m();
                i16 = this.mPendingScrollPositionOffset;
            }
            int i18 = i16 - iG;
            if (i18 > 0) {
                iMax += i18;
            } else {
                iMax2 -= i18;
            }
        }
        a aVar3 = this.mAnchorInfo;
        if (!aVar3.f14208d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i17 = 1;
        }
        onAnchorReady(tVar, yVar, aVar3, i17);
        detachAndScrapAttachedViews(tVar);
        this.mLayoutState.f14226m = resolveIsInfinite();
        this.mLayoutState.f14223j = yVar.e();
        this.mLayoutState.f14222i = 0;
        a aVar4 = this.mAnchorInfo;
        if (aVar4.f14208d) {
            J(aVar4);
            c cVar2 = this.mLayoutState;
            cVar2.f14221h = iMax;
            fill(tVar, cVar2, yVar, false);
            c cVar3 = this.mLayoutState;
            i12 = cVar3.f14215b;
            int i19 = cVar3.f14217d;
            int i20 = cVar3.f14216c;
            if (i20 > 0) {
                iMax2 += i20;
            }
            H(this.mAnchorInfo);
            c cVar4 = this.mLayoutState;
            cVar4.f14221h = iMax2;
            cVar4.f14217d += cVar4.f14218e;
            fill(tVar, cVar4, yVar, false);
            c cVar5 = this.mLayoutState;
            i11 = cVar5.f14215b;
            int i21 = cVar5.f14216c;
            if (i21 > 0) {
                I(i19, i12);
                c cVar6 = this.mLayoutState;
                cVar6.f14221h = i21;
                fill(tVar, cVar6, yVar, false);
                i12 = this.mLayoutState.f14215b;
            }
        } else {
            H(aVar4);
            c cVar7 = this.mLayoutState;
            cVar7.f14221h = iMax2;
            fill(tVar, cVar7, yVar, false);
            c cVar8 = this.mLayoutState;
            i11 = cVar8.f14215b;
            int i22 = cVar8.f14217d;
            int i23 = cVar8.f14216c;
            if (i23 > 0) {
                iMax += i23;
            }
            J(this.mAnchorInfo);
            c cVar9 = this.mLayoutState;
            cVar9.f14221h = iMax;
            cVar9.f14217d += cVar9.f14218e;
            fill(tVar, cVar9, yVar, false);
            c cVar10 = this.mLayoutState;
            i12 = cVar10.f14215b;
            int i24 = cVar10.f14216c;
            if (i24 > 0) {
                G(i22, i11);
                c cVar11 = this.mLayoutState;
                cVar11.f14221h = i24;
                fill(tVar, cVar11, yVar, false);
                i11 = this.mLayoutState.f14215b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iR2 = r(i11, tVar, yVar, true);
                i13 = i12 + iR2;
                i14 = i11 + iR2;
                iR = s(i13, tVar, yVar, false);
            } else {
                int iS = s(i12, tVar, yVar, true);
                i13 = i12 + iS;
                i14 = i11 + iS;
                iR = r(i14, tVar, yVar, false);
            }
            i12 = i13 + iR;
            i11 = i14 + iR;
        }
        v(tVar, yVar, i12, i11);
        if (yVar.e()) {
            this.mAnchorInfo.e();
        } else {
            this.mOrientationHelper.s();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(RecyclerView.y yVar) {
        super.onLayoutCompleted(yVar);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.invalidateAnchor();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z10 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z10;
            if (z10) {
                View viewT = t();
                savedState.mAnchorOffset = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewT);
                savedState.mAnchorPosition = getPosition(viewT);
            } else {
                View viewU = u();
                savedState.mAnchorPosition = getPosition(viewU);
                savedState.mAnchorOffset = this.mOrientationHelper.g(viewU) - this.mOrientationHelper.m();
            }
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i11, int i12) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        B();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b11 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b11 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(view2) + this.mOrientationHelper.e(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - this.mOrientationHelper.d(view2));
                return;
            }
        }
        if (b11 == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.g(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.d(view2) - this.mOrientationHelper.e(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.k() == 0 && this.mOrientationHelper.h() == 0;
    }

    int scrollBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (getChildCount() == 0 || i11 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f14214a = true;
        int i12 = i11 > 0 ? 1 : -1;
        int iAbs = Math.abs(i11);
        F(i12, iAbs, true, yVar);
        c cVar = this.mLayoutState;
        int iFill = cVar.f14220g + fill(tVar, cVar, yVar, false);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i11 = i12 * iFill;
        }
        this.mOrientationHelper.r(-i11);
        this.mLayoutState.f14224k = i11;
        return i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i11, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void scrollToPosition(int i11) {
        this.mPendingScrollPosition = i11;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i11, int i12) {
        this.mPendingScrollPosition = i11;
        this.mPendingScrollPositionOffset = i12;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i11, tVar, yVar);
    }

    public void setInitialPrefetchItemCount(int i11) {
        this.mInitialPrefetchItemCount = i11;
    }

    public void setOrientation(int i11) {
        if (i11 != 0 && i11 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i11);
        }
        assertNotInLayoutOrScroll(null);
        if (i11 != this.mOrientation || this.mOrientationHelper == null) {
            m mVarB = m.b(this, i11);
            this.mOrientationHelper = mVarB;
            this.mAnchorInfo.f14205a = mVarB;
            this.mOrientation = i11;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z10) {
        this.mRecycleChildrenOnDetach = z10;
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (z10 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z10;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z10) {
        this.mSmoothScrollbarEnabled = z10;
    }

    public void setStackFromEnd(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z10) {
            return;
        }
        this.mStackFromEnd = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.y yVar, int i11) {
        h hVar = new h(recyclerView.getContext());
        hVar.p(i11);
        startSmoothScroll(hVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    void validateChildOrder() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("validating child count ");
        sb2.append(getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iG = this.mOrientationHelper.g(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i11 = 1; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                int position2 = getPosition(childAt);
                int iG2 = this.mOrientationHelper.g(childAt);
                if (position2 < position) {
                    w();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("detected invalid position. loc invalid? ");
                    sb3.append(iG2 < iG);
                    throw new RuntimeException(sb3.toString());
                }
                if (iG2 > iG) {
                    w();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i12 = 1; i12 < getChildCount(); i12++) {
            View childAt2 = getChildAt(i12);
            int position3 = getPosition(childAt2);
            int iG3 = this.mOrientationHelper.g(childAt2);
            if (position3 < position) {
                w();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("detected invalid position. loc invalid? ");
                sb4.append(iG3 < iG);
                throw new RuntimeException(sb4.toString());
            }
            if (iG3 < iG) {
                w();
                throw new RuntimeException("detected invalid location");
            }
        }
    }
}

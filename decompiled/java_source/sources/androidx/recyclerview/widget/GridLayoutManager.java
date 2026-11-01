package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f14190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f14191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f14192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View[] f14193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final SparseIntArray f14194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final SparseIntArray f14195f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f14196g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f14197h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f14198i;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int i11, int i12) {
            return i11 % i12;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            return 1;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class b extends RecyclerView.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14200b;

        public b(int i11, int i12) {
            super(i11, i12);
            this.f14199a = -1;
            this.f14200b = 0;
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f14199a = -1;
            this.f14200b = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f14199a = -1;
            this.f14200b = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f14199a = -1;
            this.f14200b = 0;
        }

        public int a() {
            return this.f14199a;
        }

        public int b() {
            return this.f14200b;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final SparseIntArray f14201a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final SparseIntArray f14202b = new SparseIntArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f14203c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f14204d = false;

        static int a(SparseIntArray sparseIntArray, int i11) {
            int size = sparseIntArray.size() - 1;
            int i12 = 0;
            while (i12 <= size) {
                int i13 = (i12 + size) >>> 1;
                if (sparseIntArray.keyAt(i13) < i11) {
                    i12 = i13 + 1;
                } else {
                    size = i13 - 1;
                }
            }
            int i14 = i12 - 1;
            if (i14 < 0 || i14 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i14);
        }

        int b(int i11, int i12) {
            if (!this.f14204d) {
                return d(i11, i12);
            }
            int i13 = this.f14202b.get(i11, -1);
            if (i13 != -1) {
                return i13;
            }
            int iD = d(i11, i12);
            this.f14202b.put(i11, iD);
            return iD;
        }

        int c(int i11, int i12) {
            if (!this.f14203c) {
                return e(i11, i12);
            }
            int i13 = this.f14201a.get(i11, -1);
            if (i13 != -1) {
                return i13;
            }
            int iE = e(i11, i12);
            this.f14201a.put(i11, iE);
            return iE;
        }

        public int d(int i11, int i12) {
            int i13;
            int i14;
            int iC;
            int iA;
            if (!this.f14204d || (iA = a(this.f14202b, i11)) == -1) {
                i13 = 0;
                i14 = 0;
                iC = 0;
            } else {
                i13 = this.f14202b.get(iA);
                i14 = iA + 1;
                iC = c(iA, i12) + f(iA);
                if (iC == i12) {
                    i13++;
                    iC = 0;
                }
            }
            int iF = f(i11);
            while (i14 < i11) {
                int iF2 = f(i14);
                iC += iF2;
                if (iC == i12) {
                    i13++;
                    iC = 0;
                } else if (iC > i12) {
                    i13++;
                    iC = iF2;
                }
                i14++;
            }
            return iC + iF > i12 ? i13 + 1 : i13;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0024  */
        /* JADX WARN: Code duplicated, block: B:14:0x002b  */
        /* JADX WARN: Code duplicated, block: B:15:0x002d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x002f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public int e(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.f(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.f14203c
                if (r2 == 0) goto L20
                android.util.SparseIntArray r2 = r5.f14201a
                int r2 = a(r2, r6)
                if (r2 < 0) goto L20
                android.util.SparseIntArray r3 = r5.f14201a
                int r3 = r3.get(r2)
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                goto L30
            L20:
                r2 = r1
                r3 = r2
            L22:
                if (r2 >= r6) goto L33
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L2d
                r3 = r1
                goto L30
            L2d:
                if (r3 <= r7) goto L30
                r3 = r4
            L30:
                int r2 = r2 + 1
                goto L22
            L33:
                int r0 = r0 + r3
                if (r0 > r7) goto L37
                return r3
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.e(int, int):int");
        }

        public abstract int f(int i11);

        public void g() {
            this.f14202b.clear();
        }

        public void h() {
            this.f14201a.clear();
        }

        public void i(boolean z10) {
            if (!z10) {
                this.f14202b.clear();
            }
            this.f14203c = z10;
        }
    }

    public GridLayoutManager(Context context, int i11) {
        super(context);
        this.f14190a = false;
        this.f14191b = -1;
        this.f14194e = new SparseIntArray();
        this.f14195f = new SparseIntArray();
        this.f14196g = new a();
        this.f14197h = new Rect();
        c0(i11);
    }

    public GridLayoutManager(Context context, int i11, int i12, boolean z10) {
        super(context, i12, z10);
        this.f14190a = false;
        this.f14191b = -1;
        this.f14194e = new SparseIntArray();
        this.f14195f = new SparseIntArray();
        this.f14196g = new a();
        this.f14197h = new Rect();
        c0(i11);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f14190a = false;
        this.f14191b = -1;
        this.f14194e = new SparseIntArray();
        this.f14195f = new SparseIntArray();
        this.f14196g = new a();
        this.f14197h = new Rect();
        c0(RecyclerView.m.getProperties(context, attributeSet, i11, i12).f14239b);
    }

    private void K(RecyclerView.t tVar, RecyclerView.y yVar, int i11, boolean z10) {
        int i12;
        int i13;
        int i14;
        int i15 = 0;
        if (z10) {
            i14 = 1;
            i13 = i11;
            i12 = 0;
        } else {
            i12 = i11 - 1;
            i13 = -1;
            i14 = -1;
        }
        while (i12 != i13) {
            View view = this.f14193d[i12];
            b bVar = (b) view.getLayoutParams();
            int iX = X(tVar, yVar, getPosition(view));
            bVar.f14200b = iX;
            bVar.f14199a = i15;
            i15 += iX;
            i12 += i14;
        }
    }

    private void L() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            b bVar = (b) getChildAt(i11).getLayoutParams();
            int viewLayoutPosition = bVar.getViewLayoutPosition();
            this.f14194e.put(viewLayoutPosition, bVar.b());
            this.f14195f.put(viewLayoutPosition, bVar.a());
        }
    }

    private void M(int i11) {
        this.f14192c = N(this.f14192c, this.f14191b, i11);
    }

    static int[] N(int[] iArr, int i11, int i12) {
        int i13;
        if (iArr == null || iArr.length != i11 + 1 || iArr[iArr.length - 1] != i12) {
            iArr = new int[i11 + 1];
        }
        int i14 = 0;
        iArr[0] = 0;
        int i15 = i12 / i11;
        int i16 = i12 % i11;
        int i17 = 0;
        for (int i18 = 1; i18 <= i11; i18++) {
            i14 += i16;
            if (i14 <= 0 || i11 - i14 >= i16) {
                i13 = i15;
            } else {
                i13 = i15 + 1;
                i14 -= i11;
            }
            i17 += i13;
            iArr[i18] = i17;
        }
        return iArr;
    }

    private void O() {
        this.f14194e.clear();
        this.f14195f.clear();
    }

    private int P(RecyclerView.y yVar) {
        if (getChildCount() != 0 && yVar.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!zIsSmoothScrollbarEnabled, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!zIsSmoothScrollbarEnabled, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int iB = this.f14196g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.f14191b);
                int iB2 = this.f14196g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f14191b);
                int iMax = this.mShouldReverseLayout ? Math.max(0, ((this.f14196g.b(yVar.b() - 1, this.f14191b) + 1) - Math.max(iB, iB2)) - 1) : Math.max(0, Math.min(iB, iB2));
                if (zIsSmoothScrollbarEnabled) {
                    return Math.round((iMax * (Math.abs(this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f14196g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f14191b) - this.f14196g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.f14191b)) + 1))) + (this.mOrientationHelper.m() - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)));
                }
                return iMax;
            }
        }
        return 0;
    }

    private int Q(RecyclerView.y yVar) {
        if (getChildCount() != 0 && yVar.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.f14196g.b(yVar.b() - 1, this.f14191b) + 1;
                }
                return (int) (((this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f14196g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f14191b) - this.f14196g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.f14191b)) + 1)) * (this.f14196g.b(yVar.b() - 1, this.f14191b) + 1));
            }
        }
        return 0;
    }

    private void R(RecyclerView.t tVar, RecyclerView.y yVar, LinearLayoutManager.a aVar, int i11) {
        boolean z10 = i11 == 1;
        int iW = W(tVar, yVar, aVar.f14206b);
        if (z10) {
            while (iW > 0) {
                int i12 = aVar.f14206b;
                if (i12 <= 0) {
                    return;
                }
                int i13 = i12 - 1;
                aVar.f14206b = i13;
                iW = W(tVar, yVar, i13);
            }
            return;
        }
        int iB = yVar.b() - 1;
        int i14 = aVar.f14206b;
        while (i14 < iB) {
            int i15 = i14 + 1;
            int iW2 = W(tVar, yVar, i15);
            if (iW2 <= iW) {
                break;
            }
            i14 = i15;
            iW = iW2;
        }
        aVar.f14206b = i14;
    }

    private void S() {
        View[] viewArr = this.f14193d;
        if (viewArr == null || viewArr.length != this.f14191b) {
            this.f14193d = new View[this.f14191b];
        }
    }

    private int V(RecyclerView.t tVar, RecyclerView.y yVar, int i11) {
        if (!yVar.e()) {
            return this.f14196g.b(i11, this.f14191b);
        }
        int iF = tVar.f(i11);
        if (iF != -1) {
            return this.f14196g.b(iF, this.f14191b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i11);
        return 0;
    }

    private int W(RecyclerView.t tVar, RecyclerView.y yVar, int i11) {
        if (!yVar.e()) {
            return this.f14196g.c(i11, this.f14191b);
        }
        int i12 = this.f14195f.get(i11, -1);
        if (i12 != -1) {
            return i12;
        }
        int iF = tVar.f(i11);
        if (iF != -1) {
            return this.f14196g.c(iF, this.f14191b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i11);
        return 0;
    }

    private int X(RecyclerView.t tVar, RecyclerView.y yVar, int i11) {
        if (!yVar.e()) {
            return this.f14196g.f(i11);
        }
        int i12 = this.f14194e.get(i11, -1);
        if (i12 != -1) {
            return i12;
        }
        int iF = tVar.f(i11);
        if (iF != -1) {
            return this.f14196g.f(iF);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i11);
        return 1;
    }

    private void Z(float f11, int i11) {
        M(Math.max(Math.round(f11 * this.f14191b), i11));
    }

    private void a0(View view, int i11, boolean z10) {
        int childMeasureSpec;
        int childMeasureSpec2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.mDecorInsets;
        int i12 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i13 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iT = T(bVar.f14199a, bVar.f14200b);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView.m.getChildMeasureSpec(iT, i11, i13, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            childMeasureSpec = RecyclerView.m.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), i12, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.m.getChildMeasureSpec(iT, i11, i12, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int childMeasureSpec4 = RecyclerView.m.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), i13, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        b0(view, childMeasureSpec2, childMeasureSpec, z10);
    }

    private void b0(View view, int i11, int i12, boolean z10) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        if (z10 ? shouldReMeasureChild(view, i11, i12, nVar) : shouldMeasureChild(view, i11, i12, nVar)) {
            view.measure(i11, i12);
        }
    }

    private void e0() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        M(height - paddingTop);
    }

    int T(int i11, int i12) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.f14192c;
            return iArr[i12 + i11] - iArr[i11];
        }
        int[] iArr2 = this.f14192c;
        int i13 = this.f14191b;
        return iArr2[i13 - i11] - iArr2[(i13 - i11) - i12];
    }

    public int U() {
        return this.f14191b;
    }

    public c Y() {
        return this.f14196g;
    }

    public void c0(int i11) {
        if (i11 == this.f14191b) {
            return;
        }
        this.f14190a = true;
        if (i11 >= 1) {
            this.f14191b = i11;
            this.f14196g.h();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean checkLayoutParams(RecyclerView.n nVar) {
        return nVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.y yVar, LinearLayoutManager.c cVar, RecyclerView.m.c cVar2) {
        int iF = this.f14191b;
        for (int i11 = 0; i11 < this.f14191b && cVar.c(yVar) && iF > 0; i11++) {
            int i12 = cVar.f14217d;
            cVar2.a(i12, Math.max(0, cVar.f14220g));
            iF -= this.f14196g.f(i12);
            cVar.f14217d += cVar.f14218e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollOffset(RecyclerView.y yVar) {
        return this.f14198i ? P(yVar) : super.computeHorizontalScrollOffset(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int computeHorizontalScrollRange(RecyclerView.y yVar) {
        return this.f14198i ? Q(yVar) : super.computeHorizontalScrollRange(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollOffset(RecyclerView.y yVar) {
        return this.f14198i ? P(yVar) : super.computeVerticalScrollOffset(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollRange(RecyclerView.y yVar) {
        return this.f14198i ? Q(yVar) : super.computeVerticalScrollRange(yVar);
    }

    public void d0(c cVar) {
        this.f14196g = cVar;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View findReferenceChild(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10, boolean z11) {
        int i11;
        int childCount;
        int childCount2 = getChildCount();
        int i12 = 1;
        if (z11) {
            childCount = getChildCount() - 1;
            i11 = -1;
            i12 = -1;
        } else {
            i11 = childCount2;
            childCount = 0;
        }
        int iB = yVar.b();
        ensureLayoutState();
        int iM = this.mOrientationHelper.m();
        int i13 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        while (childCount != i11) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && W(tVar, yVar, position) == 0) {
                if (((RecyclerView.n) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.g(childAt) < i13 && this.mOrientationHelper.d(childAt) >= iM) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i12;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int getColumnCountForAccessibility(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.mOrientation == 1) {
            return this.f14191b;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return V(tVar, yVar, yVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int getRowCountForAccessibility(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.mOrientation == 0) {
            return this.f14191b;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return V(tVar, yVar, yVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void layoutChunk(RecyclerView.t tVar, RecyclerView.y yVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iF;
        int i16;
        int iF2;
        int iF3;
        int i17;
        int childMeasureSpec;
        int childMeasureSpec2;
        View viewD;
        int iL = this.mOrientationHelper.l();
        boolean z10 = iL != 1073741824;
        int i18 = getChildCount() > 0 ? this.f14192c[this.f14191b] : 0;
        if (z10) {
            e0();
        }
        boolean z11 = cVar.f14218e == 1;
        int iW = this.f14191b;
        if (!z11) {
            iW = W(tVar, yVar, cVar.f14217d) + X(tVar, yVar, cVar.f14217d);
        }
        int i19 = 0;
        while (i19 < this.f14191b && cVar.c(yVar) && iW > 0) {
            int i20 = cVar.f14217d;
            int iX = X(tVar, yVar, i20);
            if (iX > this.f14191b) {
                throw new IllegalArgumentException("Item at position " + i20 + " requires " + iX + " spans but GridLayoutManager has only " + this.f14191b + " spans.");
            }
            iW -= iX;
            if (iW < 0 || (viewD = cVar.d(tVar)) == null) {
                break;
            }
            this.f14193d[i19] = viewD;
            i19++;
        }
        if (i19 == 0) {
            bVar.f14211b = true;
            return;
        }
        K(tVar, yVar, i19, z11);
        float f11 = 0.0f;
        int i21 = 0;
        for (int i22 = 0; i22 < i19; i22++) {
            View view = this.f14193d[i22];
            if (cVar.f14225l == null) {
                if (z11) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z11) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.f14197h);
            a0(view, iL, false);
            int iE = this.mOrientationHelper.e(view);
            if (iE > i21) {
                i21 = iE;
            }
            float f12 = (this.mOrientationHelper.f(view) * 1.0f) / ((b) view.getLayoutParams()).f14200b;
            if (f12 > f11) {
                f11 = f12;
            }
        }
        if (z10) {
            Z(f11, i18);
            i21 = 0;
            for (int i23 = 0; i23 < i19; i23++) {
                View view2 = this.f14193d[i23];
                a0(view2, 1073741824, true);
                int iE2 = this.mOrientationHelper.e(view2);
                if (iE2 > i21) {
                    i21 = iE2;
                }
            }
        }
        for (int i24 = 0; i24 < i19; i24++) {
            View view3 = this.f14193d[i24];
            if (this.mOrientationHelper.e(view3) != i21) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.mDecorInsets;
                int i25 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i26 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int iT = T(bVar2.f14199a, bVar2.f14200b);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView.m.getChildMeasureSpec(iT, 1073741824, i26, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i21 - i25, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i21 - i26, 1073741824);
                    childMeasureSpec = RecyclerView.m.getChildMeasureSpec(iT, 1073741824, i25, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                b0(view3, childMeasureSpec2, childMeasureSpec, true);
            }
        }
        bVar.f14210a = i21;
        if (this.mOrientation == 1) {
            if (cVar.f14219f == -1) {
                iF = cVar.f14215b;
                i17 = iF - i21;
            } else {
                i17 = cVar.f14215b;
                iF = i17 + i21;
            }
            i14 = i17;
            i15 = 0;
            i13 = 0;
        } else {
            if (cVar.f14219f == -1) {
                i12 = cVar.f14215b;
                i11 = i12 - i21;
            } else {
                i11 = cVar.f14215b;
                i12 = i11 + i21;
            }
            i13 = i11;
            i14 = 0;
            i15 = i12;
            iF = 0;
        }
        int i27 = 0;
        while (i27 < i19) {
            View view4 = this.f14193d[i27];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft = getPaddingLeft() + this.f14192c[this.f14191b - bVar3.f14199a];
                    iF2 = paddingLeft;
                    iF3 = paddingLeft - this.mOrientationHelper.f(view4);
                } else {
                    int paddingLeft2 = getPaddingLeft() + this.f14192c[bVar3.f14199a];
                    iF3 = paddingLeft2;
                    iF2 = this.mOrientationHelper.f(view4) + paddingLeft2;
                }
                i16 = i14;
            } else {
                int paddingTop = getPaddingTop() + this.f14192c[bVar3.f14199a];
                i16 = paddingTop;
                iF2 = i15;
                iF3 = i13;
                iF = this.mOrientationHelper.f(view4) + paddingTop;
            }
            layoutDecoratedWithMargins(view4, iF3, i16, iF2, iF);
            if (bVar3.isItemRemoved() || bVar3.isItemChanged()) {
                bVar.f14212c = true;
            }
            bVar.f14213d |= view4.hasFocusable();
            i27++;
            iF = iF;
            i15 = iF2;
            i13 = iF3;
            i14 = i16;
        }
        Arrays.fill(this.f14193d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.t tVar, RecyclerView.y yVar, LinearLayoutManager.a aVar, int i11) {
        super.onAnchorReady(tVar, yVar, aVar, i11);
        e0();
        if (yVar.b() > 0 && !yVar.e()) {
            R(tVar, yVar, aVar, i11);
        }
        S();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:73:0x010f  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        int childCount;
        int i12;
        int childCount2;
        View view2;
        View view3;
        int i13;
        int i14;
        int i15;
        int i16;
        RecyclerView.t tVar2 = tVar;
        RecyclerView.y yVar2 = yVar;
        View viewFindContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        b bVar = (b) viewFindContainingItemView.getLayoutParams();
        int i17 = bVar.f14199a;
        int i18 = bVar.f14200b + i17;
        if (super.onFocusSearchFailed(view, i11, tVar, yVar) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i11) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i12 = -1;
        } else {
            childCount = getChildCount();
            i12 = 1;
            childCount2 = 0;
        }
        boolean z10 = this.mOrientation == 1 && isLayoutRTL();
        int iV = V(tVar2, yVar2, childCount2);
        int i19 = -1;
        int i20 = -1;
        int iMin = 0;
        int iMin2 = 0;
        int i21 = childCount2;
        View view5 = null;
        while (i21 != childCount) {
            int iV2 = V(tVar2, yVar2, i21);
            View childAt = getChildAt(i21);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || iV2 == iV) {
                b bVar2 = (b) childAt.getLayoutParams();
                int i22 = bVar2.f14199a;
                view2 = viewFindContainingItemView;
                int i23 = bVar2.f14200b + i22;
                if (childAt.hasFocusable() && i22 == i17 && i23 == i18) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i23, i18) - Math.max(i22, i17);
                    if (!childAt.hasFocusable()) {
                        if (view4 == null) {
                            i13 = iMin;
                            i14 = childCount;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i15 = iMin2;
                                if (iMin3 > i15) {
                                    i16 = i20;
                                } else if (iMin3 == i15) {
                                    i16 = i20;
                                    if (z10 == (i22 > i16)) {
                                    }
                                    i21 += i12;
                                    tVar2 = tVar;
                                    yVar2 = yVar;
                                    viewFindContainingItemView = view2;
                                    childCount = i14;
                                } else {
                                    i16 = i20;
                                }
                                if (childAt.hasFocusable()) {
                                    i19 = bVar2.f14199a;
                                    i20 = i16;
                                    iMin2 = i15;
                                    view5 = view3;
                                    view4 = childAt;
                                    iMin = Math.min(i23, i18) - Math.max(i22, i17);
                                } else {
                                    int i24 = bVar2.f14199a;
                                    iMin2 = Math.min(i23, i18) - Math.max(i22, i17);
                                    i20 = i24;
                                    iMin = i13;
                                    view5 = childAt;
                                }
                                i21 += i12;
                                tVar2 = tVar;
                                yVar2 = yVar;
                                viewFindContainingItemView = view2;
                                childCount = i14;
                            }
                            i20 = i16;
                            iMin2 = i15;
                            iMin = i13;
                            view5 = view3;
                            i21 += i12;
                            tVar2 = tVar;
                            yVar2 = yVar;
                            viewFindContainingItemView = view2;
                            childCount = i14;
                        }
                        i16 = i20;
                        i15 = iMin2;
                        i20 = i16;
                        iMin2 = i15;
                        iMin = i13;
                        view5 = view3;
                        i21 += i12;
                        tVar2 = tVar;
                        yVar2 = yVar;
                        viewFindContainingItemView = view2;
                        childCount = i14;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                i13 = iMin;
                i14 = childCount;
                i16 = i20;
                i15 = iMin2;
                if (childAt.hasFocusable()) {
                    i19 = bVar2.f14199a;
                    i20 = i16;
                    iMin2 = i15;
                    view5 = view3;
                    view4 = childAt;
                    iMin = Math.min(i23, i18) - Math.max(i22, i17);
                } else {
                    int i25 = bVar2.f14199a;
                    iMin2 = Math.min(i23, i18) - Math.max(i22, i17);
                    i20 = i25;
                    iMin = i13;
                    view5 = childAt;
                }
                i21 += i12;
                tVar2 = tVar;
                yVar2 = yVar;
                viewFindContainingItemView = view2;
                childCount = i14;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                view3 = view5;
            }
            i13 = iMin;
            i14 = childCount;
            i16 = i20;
            i15 = iMin2;
            i20 = i16;
            iMin2 = i15;
            iMin = i13;
            view5 = view3;
            i21 += i12;
            tVar2 = tVar;
            yVar2 = yVar;
            viewFindContainingItemView = view2;
            childCount = i14;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onInitializeAccessibilityNodeInfo(RecyclerView.t tVar, RecyclerView.y yVar, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(tVar, yVar, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.t tVar, RecyclerView.y yVar, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        b bVar = (b) layoutParams;
        int iV = V(tVar, yVar, bVar.getViewLayoutPosition());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(bVar.a(), bVar.b(), iV, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(iV, 1, bVar.a(), bVar.b(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsAdded(RecyclerView recyclerView, int i11, int i12) {
        this.f14196g.h();
        this.f14196g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f14196g.h();
        this.f14196g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsMoved(RecyclerView recyclerView, int i11, int i12, int i13) {
        this.f14196g.h();
        this.f14196g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsRemoved(RecyclerView recyclerView, int i11, int i12) {
        this.f14196g.h();
        this.f14196g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onItemsUpdated(RecyclerView recyclerView, int i11, int i12, Object obj) {
        this.f14196g.h();
        this.f14196g.g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (yVar.e()) {
            L();
        }
        super.onLayoutChildren(tVar, yVar);
        O();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutCompleted(RecyclerView.y yVar) {
        super.onLayoutCompleted(yVar);
        this.f14190a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int scrollHorizontallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        e0();
        S();
        return super.scrollHorizontallyBy(i11, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int scrollVerticallyBy(int i11, RecyclerView.t tVar, RecyclerView.y yVar) {
        e0();
        S();
        return super.scrollVerticallyBy(i11, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void setMeasuredDimension(Rect rect, int i11, int i12) {
        int iChooseSize;
        int iChooseSize2;
        if (this.f14192c == null) {
            super.setMeasuredDimension(rect, i11, i12);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.m.chooseSize(i12, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f14192c;
            iChooseSize = RecyclerView.m.chooseSize(i11, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.m.chooseSize(i11, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f14192c;
            iChooseSize2 = RecyclerView.m.chooseSize(i12, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f14190a;
    }
}

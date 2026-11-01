package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class h extends RecyclerView.x {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected PointF f14389k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final DisplayMetrics f14390l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f14392n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final LinearInterpolator f14387i = new LinearInterpolator();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected final DecelerateInterpolator f14388j = new DecelerateInterpolator();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f14391m = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f14393o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f14394p = 0;

    public h(Context context) {
        this.f14390l = context.getResources().getDisplayMetrics();
    }

    private float A() {
        if (!this.f14391m) {
            this.f14392n = v(this.f14390l);
            this.f14391m = true;
        }
        return this.f14392n;
    }

    private int y(int i11, int i12) {
        int i13 = i11 - i12;
        if (i11 * i13 <= 0) {
            return 0;
        }
        return i13;
    }

    protected int B() {
        PointF pointF = this.f14389k;
        if (pointF != null) {
            float f11 = pointF.y;
            if (f11 != 0.0f) {
                return f11 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    protected void C(RecyclerView.x.a aVar) {
        PointF pointFA = a(f());
        if (pointFA == null || (pointFA.x == 0.0f && pointFA.y == 0.0f)) {
            aVar.b(f());
            r();
            return;
        }
        i(pointFA);
        this.f14389k = pointFA;
        this.f14393o = (int) (pointFA.x * 10000.0f);
        this.f14394p = (int) (pointFA.y * 10000.0f);
        aVar.d((int) (this.f14393o * 1.2f), (int) (this.f14394p * 1.2f), (int) (x(10000) * 1.2f), this.f14387i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    protected void l(int i11, int i12, RecyclerView.y yVar, RecyclerView.x.a aVar) {
        if (c() == 0) {
            r();
            return;
        }
        this.f14393o = y(this.f14393o, i11);
        int iY = y(this.f14394p, i12);
        this.f14394p = iY;
        if (this.f14393o == 0 && iY == 0) {
            C(aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    protected void m() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    protected void n() {
        this.f14394p = 0;
        this.f14393o = 0;
        this.f14389k = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    protected void o(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
        int iT = t(view, z());
        int iU = u(view, B());
        int iW = w((int) Math.sqrt((iT * iT) + (iU * iU)));
        if (iW > 0) {
            aVar.d(-iT, -iU, iW, this.f14388j);
        }
    }

    public int s(int i11, int i12, int i13, int i14, int i15) {
        if (i15 == -1) {
            return i13 - i11;
        }
        if (i15 != 0) {
            if (i15 == 1) {
                return i14 - i12;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i16 = i13 - i11;
        if (i16 > 0) {
            return i16;
        }
        int i17 = i14 - i12;
        if (i17 < 0) {
            return i17;
        }
        return 0;
    }

    public int t(View view, int i11) {
        RecyclerView.m mVarE = e();
        if (mVarE == null || !mVarE.canScrollHorizontally()) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return s(mVarE.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) nVar).leftMargin, mVarE.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) nVar).rightMargin, mVarE.getPaddingLeft(), mVarE.getWidth() - mVarE.getPaddingRight(), i11);
    }

    public int u(View view, int i11) {
        RecyclerView.m mVarE = e();
        if (mVarE == null || !mVarE.canScrollVertically()) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return s(mVarE.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) nVar).topMargin, mVarE.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin, mVarE.getPaddingTop(), mVarE.getHeight() - mVarE.getPaddingBottom(), i11);
    }

    protected float v(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    protected int w(int i11) {
        return (int) Math.ceil(((double) x(i11)) / 0.3356d);
    }

    protected int x(int i11) {
        return (int) Math.ceil(Math.abs(i11) * A());
    }

    protected int z() {
        PointF pointF = this.f14389k;
        if (pointF != null) {
            float f11 = pointF.x;
            if (f11 != 0.0f) {
                return f11 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }
}

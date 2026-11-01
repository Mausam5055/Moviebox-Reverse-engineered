package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r extends RecyclerView.p {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final RecyclerView.r mScrollListener = new a();

    class a extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f14412a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            super.onScrollStateChanged(recyclerView, i11);
            if (i11 == 0 && this.f14412a) {
                this.f14412a = false;
                r.this.snapToTargetExistingView();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            if (i11 == 0 && i12 == 0) {
                return;
            }
            this.f14412a = true;
        }
    }

    class b extends h {
        b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.h, androidx.recyclerview.widget.RecyclerView.x
        protected void o(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
            r rVar = r.this;
            RecyclerView recyclerView = rVar.mRecyclerView;
            if (recyclerView == null) {
                return;
            }
            int[] iArrCalculateDistanceToFinalSnap = rVar.calculateDistanceToFinalSnap(recyclerView.getLayoutManager(), view);
            int i11 = iArrCalculateDistanceToFinalSnap[0];
            int i12 = iArrCalculateDistanceToFinalSnap[1];
            int iW = w(Math.max(Math.abs(i11), Math.abs(i12)));
            if (iW > 0) {
                aVar.d(i11, i12, iW, this.f14388j);
            }
        }

        @Override // androidx.recyclerview.widget.h
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    private void a() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    private void b() {
        if (this.mRecyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.mRecyclerView.addOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(this);
    }

    private boolean c(RecyclerView.m mVar, int i11, int i12) {
        RecyclerView.x xVarCreateScroller;
        int iFindTargetSnapPosition;
        if (!(mVar instanceof RecyclerView.x.b) || (xVarCreateScroller = createScroller(mVar)) == null || (iFindTargetSnapPosition = findTargetSnapPosition(mVar, i11, i12)) == -1) {
            return false;
        }
        xVarCreateScroller.p(iFindTargetSnapPosition);
        mVar.startSmoothScroll(xVarCreateScroller);
        return true;
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            a();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            b();
            this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    public abstract int[] calculateDistanceToFinalSnap(RecyclerView.m mVar, View view);

    @SuppressLint({"UnknownNullness"})
    public int[] calculateScrollDistance(int i11, int i12) {
        this.mGravityScroller.fling(0, 0, i11, i12, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    protected RecyclerView.x createScroller(RecyclerView.m mVar) {
        return createSnapScroller(mVar);
    }

    @Nullable
    @Deprecated
    protected h createSnapScroller(@NonNull RecyclerView.m mVar) {
        if (mVar instanceof RecyclerView.x.b) {
            return new b(this.mRecyclerView.getContext());
        }
        return null;
    }

    public abstract View findSnapView(RecyclerView.m mVar);

    public abstract int findTargetSnapPosition(RecyclerView.m mVar, int i11, int i12);

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean onFling(int i11, int i12) {
        RecyclerView.m layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        return (Math.abs(i12) > minFlingVelocity || Math.abs(i11) > minFlingVelocity) && c(layoutManager, i11, i12);
    }

    void snapToTargetExistingView() {
        RecyclerView.m layoutManager;
        View viewFindSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, viewFindSnapView);
        int i11 = iArrCalculateDistanceToFinalSnap[0];
        if (i11 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(i11, iArrCalculateDistanceToFinalSnap[1]);
    }
}

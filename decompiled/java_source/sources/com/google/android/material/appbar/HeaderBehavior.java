package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes4.dex */
abstract class HeaderBehavior extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f28247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    OverScroller f28248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private VelocityTracker f28253j;

    private class FlingRunnable implements Runnable {
        private final View layout;
        private final CoordinatorLayout parent;

        FlingRunnable(CoordinatorLayout coordinatorLayout, View view) {
            this.parent = coordinatorLayout;
            this.layout = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.layout == null || (overScroller = HeaderBehavior.this.f28248e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                HeaderBehavior.this.N(this.parent, this.layout);
                return;
            }
            HeaderBehavior headerBehavior = HeaderBehavior.this;
            headerBehavior.P(this.parent, this.layout, headerBehavior.f28248e.getCurrY());
            ViewCompat.postOnAnimation(this.layout, this);
        }
    }

    public HeaderBehavior() {
        this.f28250g = -1;
        this.f28252i = -1;
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28250g = -1;
        this.f28252i = -1;
    }

    private void I() {
        if (this.f28253j == null) {
            this.f28253j = VelocityTracker.obtain();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    /* JADX WARN: Code duplicated, block: B:33:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:37:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z10;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            VelocityTracker velocityTracker3 = this.f28253j;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                this.f28253j.computeCurrentVelocity(1000);
                J(coordinatorLayout, view, -L(view), 0, this.f28253j.getYVelocity(this.f28250g));
                z10 = true;
            }
            this.f28249f = false;
            this.f28250g = -1;
            velocityTracker = this.f28253j;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f28253j = null;
            }
            velocityTracker2 = this.f28253j;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (this.f28249f) {
                return true;
            }
        }
        if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f28250g);
            if (iFindPointerIndex == -1) {
                return false;
            }
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            int i11 = this.f28251h - y10;
            this.f28251h = y10;
            O(coordinatorLayout, view, i11, K(view), 0);
        } else if (actionMasked != 3) {
            if (actionMasked == 6) {
                int i12 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                this.f28250g = motionEvent.getPointerId(i12);
                this.f28251h = (int) (motionEvent.getY(i12) + 0.5f);
            }
        }
        z10 = false;
        velocityTracker2 = this.f28253j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return !this.f28249f || z10;
        z10 = false;
        this.f28249f = false;
        this.f28250g = -1;
        velocityTracker = this.f28253j;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f28253j = null;
        }
        velocityTracker2 = this.f28253j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f28249f) {
            return true;
        }
    }

    boolean H(View view) {
        return false;
    }

    final boolean J(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, float f11) {
        Runnable runnable = this.f28247d;
        if (runnable != null) {
            view.removeCallbacks(runnable);
            this.f28247d = null;
        }
        if (this.f28248e == null) {
            this.f28248e = new OverScroller(view.getContext());
        }
        this.f28248e.fling(0, E(), 0, Math.round(f11), 0, 0, i11, i12);
        if (!this.f28248e.computeScrollOffset()) {
            N(coordinatorLayout, view);
            return false;
        }
        FlingRunnable flingRunnable = new FlingRunnable(coordinatorLayout, view);
        this.f28247d = flingRunnable;
        ViewCompat.postOnAnimation(view, flingRunnable);
        return true;
    }

    int K(View view) {
        return -view.getHeight();
    }

    int L(View view) {
        return view.getHeight();
    }

    int M() {
        return E();
    }

    void N(CoordinatorLayout coordinatorLayout, View view) {
    }

    final int O(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13) {
        return Q(coordinatorLayout, view, M() - i11, i12, i13);
    }

    int P(CoordinatorLayout coordinatorLayout, View view, int i11) {
        return Q(coordinatorLayout, view, i11, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int Q(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13) {
        int iB;
        int iE = E();
        if (i12 == 0 || iE < i12 || iE > i13 || iE == (iB = d1.a.b(i11, i12, i13))) {
            return 0;
        }
        G(iB);
        return iE - iB;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f28252i < 0) {
            this.f28252i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f28249f) {
            int i11 = this.f28250g;
            if (i11 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i11)) == -1) {
                return false;
            }
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y10 - this.f28251h) > this.f28252i) {
                this.f28251h = y10;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f28250g = -1;
            int x10 = (int) motionEvent.getX();
            int y11 = (int) motionEvent.getY();
            boolean z10 = H(view) && coordinatorLayout.isPointInChildBounds(view, x10, y11);
            this.f28249f = z10;
            if (z10) {
                this.f28251h = y11;
                this.f28250g = motionEvent.getPointerId(0);
                I();
                OverScroller overScroller = this.f28248e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f28248e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f28253j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }
}

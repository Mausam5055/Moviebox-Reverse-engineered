package com.transsion.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes6.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f47884a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f47885b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScaleGestureDetector f47886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private VelocityTracker f47887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f47888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f47889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f47890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f47891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f47892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c f47893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f47894k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f47895l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f47896m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f47897n;

    class a implements ScaleGestureDetector.OnScaleGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f47898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f47899b = 0.0f;

        a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            if (scaleFactor < 0.0f) {
                return true;
            }
            b.this.f47893j.c(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), scaleGestureDetector.getFocusX() - this.f47898a, scaleGestureDetector.getFocusY() - this.f47899b);
            this.f47898a = scaleGestureDetector.getFocusX();
            this.f47899b = scaleGestureDetector.getFocusY();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            this.f47898a = scaleGestureDetector.getFocusX();
            this.f47899b = scaleGestureDetector.getFocusY();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    b(Context context, c cVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f47892i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f47891h = viewConfiguration.getScaledTouchSlop();
        this.f47893j = cVar;
        this.f47886c = new ScaleGestureDetector(context, new a());
    }

    private float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f47885b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f47885b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private boolean i(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f47884a = motionEvent.getPointerId(0);
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.f47887d = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.addMovement(motionEvent);
            }
            this.f47889f = b(motionEvent);
            this.f47890g = c(motionEvent);
            this.f47888e = false;
            this.f47894k = motionEvent.getRawY();
            this.f47895l = motionEvent.getRawX();
        } else if (action == 1) {
            this.f47884a = -1;
            if (this.f47888e && this.f47887d != null) {
                this.f47889f = b(motionEvent);
                this.f47890g = c(motionEvent);
                this.f47887d.addMovement(motionEvent);
                this.f47887d.computeCurrentVelocity(1000);
                float xVelocity = this.f47887d.getXVelocity();
                float yVelocity = this.f47887d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f47892i) {
                    this.f47893j.e(this.f47889f, this.f47890g, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f47887d;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f47887d = null;
            }
        } else if (action == 2) {
            this.f47896m = motionEvent.getRawY() - this.f47894k;
            this.f47897n = motionEvent.getRawX() - this.f47895l;
            float fB = b(motionEvent);
            float fC = c(motionEvent);
            float f11 = fB - this.f47889f;
            float f12 = fC - this.f47890g;
            if (!this.f47888e) {
                this.f47888e = Math.sqrt((double) ((f11 * f11) + (f12 * f12))) >= ((double) this.f47891h);
            }
            if (this.f47888e) {
                this.f47893j.b(f11, f12);
                this.f47889f = fB;
                this.f47890g = fC;
                VelocityTracker velocityTracker2 = this.f47887d;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f47884a = -1;
            VelocityTracker velocityTracker3 = this.f47887d;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f47887d = null;
            }
        } else if (action == 6) {
            int iB = o.b(motionEvent.getAction());
            if (motionEvent.getPointerId(iB) == this.f47884a) {
                int i11 = iB == 0 ? 1 : 0;
                this.f47884a = motionEvent.getPointerId(i11);
                this.f47889f = motionEvent.getX(i11);
                this.f47890g = motionEvent.getY(i11);
            }
        }
        int i12 = this.f47884a;
        this.f47885b = motionEvent.findPointerIndex(i12 != -1 ? i12 : 0);
        return true;
    }

    public float d() {
        return this.f47897n;
    }

    public float e() {
        return this.f47896m;
    }

    public boolean f() {
        return this.f47888e;
    }

    public boolean g() {
        return this.f47886c.isInProgress();
    }

    public boolean h(MotionEvent motionEvent) {
        try {
            this.f47886c.onTouchEvent(motionEvent);
            return i(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}

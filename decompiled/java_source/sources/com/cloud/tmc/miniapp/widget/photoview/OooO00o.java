package com.cloud.tmc.miniapp.widget.photoview;

import android.content.Context;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.core.view.MotionEventCompat;
import com.cloud.tmc.miniapp.widget.photoview.OooOOOO.OooOO0;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o {
    public final float OooO;
    public int OooO00o = -1;
    public int OooO0O0 = 0;
    public final ScaleGestureDetector OooO0OO;
    public VelocityTracker OooO0Oo;
    public float OooO0o;
    public boolean OooO0o0;
    public float OooO0oO;
    public final float OooO0oo;
    public OooO0O0 OooOO0;

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.widget.photoview.OooO00o$OooO00o, reason: collision with other inner class name */
    public class ScaleGestureDetectorOnScaleGestureListenerC0351OooO00o implements ScaleGestureDetector.OnScaleGestureListener {
        public float OooO00o;
        public float OooO0O0 = 0.0f;

        public ScaleGestureDetectorOnScaleGestureListenerC0351OooO00o() {
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
            ((OooOOOO.OooO00o) OooO00o.this.OooOO0).OooO00o(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), scaleGestureDetector.getFocusX() - this.OooO00o, scaleGestureDetector.getFocusY() - this.OooO0O0);
            this.OooO00o = scaleGestureDetector.getFocusX();
            this.OooO0O0 = scaleGestureDetector.getFocusY();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            this.OooO00o = scaleGestureDetector.getFocusX();
            this.OooO0O0 = scaleGestureDetector.getFocusY();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public OooO00o(Context context, OooO0O0 oooO0O0) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.OooO = viewConfiguration.getScaledMinimumFlingVelocity();
        this.OooO0oo = viewConfiguration.getScaledTouchSlop();
        this.OooOO0 = oooO0O0;
        this.OooO0OO = new ScaleGestureDetector(context, new ScaleGestureDetectorOnScaleGestureListenerC0351OooO00o());
    }

    public final float OooO00o(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.OooO0O0);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    public final float OooO0O0(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.OooO0O0);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    /* JADX WARN: Code duplicated, block: B:77:0x0118 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x011a  */
    public final boolean OooO0OO(MotionEvent motionEvent) {
        int iRound;
        int i11;
        int iRound2;
        int i12;
        int i13;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.OooO00o = motionEvent.getPointerId(0);
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.OooO0Oo = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.addMovement(motionEvent);
            }
            this.OooO0o = OooO00o(motionEvent);
            this.OooO0oO = OooO0O0(motionEvent);
            this.OooO0o0 = false;
        } else if (action == 1) {
            this.OooO00o = -1;
            if (this.OooO0o0 && this.OooO0Oo != null) {
                this.OooO0o = OooO00o(motionEvent);
                this.OooO0oO = OooO0O0(motionEvent);
                this.OooO0Oo.addMovement(motionEvent);
                this.OooO0Oo.computeCurrentVelocity(1000);
                float xVelocity = this.OooO0Oo.getXVelocity();
                float yVelocity = this.OooO0Oo.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.OooO) {
                    OooOOOO.OooO00o oooO00o = (OooOOOO.OooO00o) this.OooOO0;
                    OooOOOO oooOOOO = OooOOOO.this;
                    oooOOOO.OooOoO = oooOOOO.new OooOO0(oooOOOO.OooO.getContext());
                    OooOOOO oooOOOO2 = OooOOOO.this;
                    OooOOOO.OooOO0 oooOO0 = oooOOOO2.OooOoO;
                    int iOooO0O0 = oooOOOO2.OooO0O0(oooOOOO2.OooO);
                    OooOOOO oooOOOO3 = OooOOOO.this;
                    int iOooO00o = oooOOOO3.OooO00o(oooOOOO3.OooO);
                    int i14 = (int) (-xVelocity);
                    int i15 = (int) (-yVelocity);
                    RectF rectFOooO0OO = OooOOOO.this.OooO0OO();
                    if (rectFOooO0OO != null) {
                        int iRound3 = Math.round(-rectFOooO0OO.left);
                        float f11 = iOooO0O0;
                        if (f11 < rectFOooO0OO.width()) {
                            iRound = Math.round(rectFOooO0OO.width() - f11);
                            i11 = 0;
                        } else {
                            iRound = iRound3;
                            i11 = iRound;
                        }
                        int iRound4 = Math.round(-rectFOooO0OO.top);
                        float f12 = iOooO00o;
                        if (f12 < rectFOooO0OO.height()) {
                            iRound2 = Math.round(rectFOooO0OO.height() - f12);
                            i12 = 0;
                        } else {
                            iRound2 = iRound4;
                            i12 = iRound2;
                        }
                        oooOO0.OooO0O0 = iRound3;
                        oooOO0.OooO0OO = iRound4;
                        if (iRound3 != iRound || iRound4 != iRound2) {
                            oooOO0.OooO00o.fling(iRound3, iRound4, i14, i15, i11, iRound, i12, iRound2, 0, 0);
                        }
                    }
                    OooOOOO oooOOOO4 = OooOOOO.this;
                    oooOOOO4.OooO.post(oooOOOO4.OooOoO);
                }
            }
            VelocityTracker velocityTracker = this.OooO0Oo;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.OooO0Oo = null;
            }
        } else if (action == 2) {
            float fOooO00o = OooO00o(motionEvent);
            float fOooO0O0 = OooO0O0(motionEvent);
            float f13 = fOooO00o - this.OooO0o;
            float f14 = fOooO0O0 - this.OooO0oO;
            if (!this.OooO0o0) {
                this.OooO0o0 = Math.sqrt((double) ((f14 * f14) + (f13 * f13))) >= ((double) this.OooO0oo);
            }
            if (this.OooO0o0) {
                OooOOOO.OooO00o oooO00o2 = (OooOOOO.OooO00o) this.OooOO0;
                if (!OooOOOO.this.OooOO0O.OooO0OO.isInProgress()) {
                    OooOOO0 oooOOO0 = OooOOOO.this.OooOoO0;
                    if (oooOOO0 != null) {
                        oooOOO0.OooO00o(f13, f14);
                    }
                    OooOOOO.this.OooOOO.postTranslate(f13, f14);
                    OooOOOO.this.OooO00o();
                    ViewParent parent = OooOOOO.this.OooO.getParent();
                    OooOOOO oooOOOO5 = OooOOOO.this;
                    if (oooOOOO5.OooO0o && !oooOOOO5.OooOO0O.OooO0OO.isInProgress()) {
                        OooOOOO oooOOOO6 = OooOOOO.this;
                        if (!oooOOOO6.OooO0oO && !oooOOOO6.OooO0oo) {
                            float fAbs = Math.abs(f13);
                            float fAbs2 = Math.abs(f14);
                            OooOOOO oooOOOO7 = OooOOOO.this;
                            int i16 = oooOOOO7.OooOoOO;
                            if (((i16 == 2 && fAbs > fAbs2) || ((i16 == 0 && f13 >= 1.0f && fAbs > fAbs2) || ((i16 == 1 && f13 <= -1.0f && fAbs > fAbs2) || (((i13 = oooOOOO7.OooOoo0) == 0 && f14 >= 1.0f && fAbs2 > fAbs) || ((i13 == 1 && f14 <= -1.0f && fAbs2 > fAbs) || (i13 == 2 && fAbs2 > fAbs)))))) && parent != null) {
                                parent.requestDisallowInterceptTouchEvent(false);
                            }
                        } else if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    } else if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
                this.OooO0o = fOooO00o;
                this.OooO0oO = fOooO0O0;
                VelocityTracker velocityTracker2 = this.OooO0Oo;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.OooO00o = -1;
            VelocityTracker velocityTracker3 = this.OooO0Oo;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.OooO0Oo = null;
            }
        } else if (action == 6) {
            int action2 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            if (motionEvent.getPointerId(action2) == this.OooO00o) {
                int i17 = action2 == 0 ? 1 : 0;
                this.OooO00o = motionEvent.getPointerId(i17);
                this.OooO0o = motionEvent.getX(i17);
                this.OooO0oO = motionEvent.getY(i17);
            }
        }
        int i18 = this.OooO00o;
        this.OooO0O0 = motionEvent.findPointerIndex(i18 != -1 ? i18 : 0);
        return true;
    }
}

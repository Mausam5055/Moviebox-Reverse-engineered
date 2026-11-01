package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.p;
import androidx.constraintlayout.widget.R$styleable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Carousel extends MotionHelper {
    public static final int TOUCH_UP_CARRY_ON = 2;
    public static final int TOUCH_UP_IMMEDIATE_STOP = 1;
    private int A;
    private float B;
    private int C;
    private int D;
    int E;
    Runnable F;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ArrayList f7090n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7091o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7092p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MotionLayout f7093q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f7094r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f7095s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7096t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7097u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f7098v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f7099w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f7100x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f7101y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f7102z;

    public interface a {
    }

    public Carousel(Context context) {
        super(context);
        this.f7090n = new ArrayList();
        this.f7091o = 0;
        this.f7092p = 0;
        this.f7094r = -1;
        this.f7095s = false;
        this.f7096t = -1;
        this.f7097u = -1;
        this.f7098v = -1;
        this.f7099w = -1;
        this.f7100x = 0.9f;
        this.f7101y = 0;
        this.f7102z = 4;
        this.A = 1;
        this.B = 2.0f;
        this.C = -1;
        this.D = 200;
        this.E = -1;
        this.F = new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1

            /* JADX INFO: renamed from: androidx.constraintlayout.helper.widget.Carousel$1$1, reason: invalid class name and collision with other inner class name */
            class RunnableC00611 implements Runnable {
                final /* synthetic */ float val$v;

                RunnableC00611(float f11) {
                    this.val$v = f11;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Carousel.this.f7093q.touchAnimateTo(5, 1.0f, this.val$v);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f7093q.setProgress(0.0f);
                Carousel.this.q();
                Carousel.o(Carousel.this);
                int unused = Carousel.this.f7092p;
                throw null;
            }
        };
    }

    public Carousel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7090n = new ArrayList();
        this.f7091o = 0;
        this.f7092p = 0;
        this.f7094r = -1;
        this.f7095s = false;
        this.f7096t = -1;
        this.f7097u = -1;
        this.f7098v = -1;
        this.f7099w = -1;
        this.f7100x = 0.9f;
        this.f7101y = 0;
        this.f7102z = 4;
        this.A = 1;
        this.B = 2.0f;
        this.C = -1;
        this.D = 200;
        this.E = -1;
        this.F = new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1

            /* JADX INFO: renamed from: androidx.constraintlayout.helper.widget.Carousel$1$1, reason: invalid class name and collision with other inner class name */
            class RunnableC00611 implements Runnable {
                final /* synthetic */ float val$v;

                RunnableC00611(float f11) {
                    this.val$v = f11;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Carousel.this.f7093q.touchAnimateTo(5, 1.0f, this.val$v);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f7093q.setProgress(0.0f);
                Carousel.this.q();
                Carousel.o(Carousel.this);
                int unused = Carousel.this.f7092p;
                throw null;
            }
        };
        p(context, attributeSet);
    }

    public Carousel(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7090n = new ArrayList();
        this.f7091o = 0;
        this.f7092p = 0;
        this.f7094r = -1;
        this.f7095s = false;
        this.f7096t = -1;
        this.f7097u = -1;
        this.f7098v = -1;
        this.f7099w = -1;
        this.f7100x = 0.9f;
        this.f7101y = 0;
        this.f7102z = 4;
        this.A = 1;
        this.B = 2.0f;
        this.C = -1;
        this.D = 200;
        this.E = -1;
        this.F = new Runnable() { // from class: androidx.constraintlayout.helper.widget.Carousel.1

            /* JADX INFO: renamed from: androidx.constraintlayout.helper.widget.Carousel$1$1, reason: invalid class name and collision with other inner class name */
            class RunnableC00611 implements Runnable {
                final /* synthetic */ float val$v;

                RunnableC00611(float f11) {
                    this.val$v = f11;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Carousel.this.f7093q.touchAnimateTo(5, 1.0f, this.val$v);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f7093q.setProgress(0.0f);
                Carousel.this.q();
                Carousel.o(Carousel.this);
                int unused = Carousel.this.f7092p;
                throw null;
            }
        };
        p(context, attributeSet);
    }

    static /* synthetic */ a o(Carousel carousel) {
        carousel.getClass();
        return null;
    }

    private void p(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.Carousel_carousel_firstView) {
                    this.f7094r = typedArrayObtainStyledAttributes.getResourceId(index, this.f7094r);
                } else if (index == R$styleable.Carousel_carousel_backwardTransition) {
                    this.f7096t = typedArrayObtainStyledAttributes.getResourceId(index, this.f7096t);
                } else if (index == R$styleable.Carousel_carousel_forwardTransition) {
                    this.f7097u = typedArrayObtainStyledAttributes.getResourceId(index, this.f7097u);
                } else if (index == R$styleable.Carousel_carousel_emptyViewsBehavior) {
                    this.f7102z = typedArrayObtainStyledAttributes.getInt(index, this.f7102z);
                } else if (index == R$styleable.Carousel_carousel_previousState) {
                    this.f7098v = typedArrayObtainStyledAttributes.getResourceId(index, this.f7098v);
                } else if (index == R$styleable.Carousel_carousel_nextState) {
                    this.f7099w = typedArrayObtainStyledAttributes.getResourceId(index, this.f7099w);
                } else if (index == R$styleable.Carousel_carousel_touchUp_dampeningFactor) {
                    this.f7100x = typedArrayObtainStyledAttributes.getFloat(index, this.f7100x);
                } else if (index == R$styleable.Carousel_carousel_touchUpMode) {
                    this.A = typedArrayObtainStyledAttributes.getInt(index, this.A);
                } else if (index == R$styleable.Carousel_carousel_touchUp_velocityThreshold) {
                    this.B = typedArrayObtainStyledAttributes.getFloat(index, this.B);
                } else if (index == R$styleable.Carousel_carousel_infinite) {
                    this.f7095s = typedArrayObtainStyledAttributes.getBoolean(index, this.f7095s);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
    }

    public int getCount() {
        return 0;
    }

    public int getCurrentIndex() {
        return this.f7092p;
    }

    public void jumpToIndex(int i11) {
        this.f7092p = Math.max(0, Math.min(getCount() - 1, i11));
        refresh();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            for (int i11 = 0; i11 < this.f7653b; i11++) {
                int i12 = this.f7652a[i11];
                View viewById = motionLayout.getViewById(i12);
                if (this.f7094r == i12) {
                    this.f7101y = i11;
                }
                this.f7090n.add(viewById);
            }
            this.f7093q = motionLayout;
            if (this.A == 2) {
                p.b transition = motionLayout.getTransition(this.f7097u);
                if (transition != null) {
                    transition.H(5);
                }
                p.b transition2 = this.f7093q.getTransition(this.f7096t);
                if (transition2 != null) {
                    transition2.H(5);
                }
            }
            q();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.h
    public void onTransitionChange(MotionLayout motionLayout, int i11, int i12, float f11) {
        this.E = i11;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.h
    public void onTransitionCompleted(MotionLayout motionLayout, int i11) {
        int i12 = this.f7092p;
        this.f7091o = i12;
        if (i11 == this.f7099w) {
            this.f7092p = i12 + 1;
        } else if (i11 == this.f7098v) {
            this.f7092p = i12 - 1;
        }
        if (!this.f7095s) {
            throw null;
        }
        throw null;
    }

    public void refresh() {
        if (this.f7090n.size() > 0) {
            throw null;
        }
        this.f7093q.rebuildScene();
        q();
    }

    public void setAdapter(a aVar) {
    }

    public void transitionToIndex(int i11, int i12) {
        this.C = Math.max(0, Math.min(getCount() - 1, i11));
        int iMax = Math.max(0, i12);
        this.D = iMax;
        this.f7093q.setTransitionDuration(iMax);
        if (i11 < this.f7092p) {
            this.f7093q.transitionToState(this.f7098v, this.D);
        } else {
            this.f7093q.transitionToState(this.f7099w, this.D);
        }
    }
}

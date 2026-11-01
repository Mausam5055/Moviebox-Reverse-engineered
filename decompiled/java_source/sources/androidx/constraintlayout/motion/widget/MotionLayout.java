package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import com.tn.lib.view.FlowLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    public static boolean IS_IN_EDIT_MODE = false;
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    private v0.b A;
    private RectF A0;
    private b B;
    private View B0;
    private androidx.constraintlayout.motion.widget.b C;
    private Matrix C0;
    boolean D;
    ArrayList D0;
    int E;
    int F;
    int G;
    int H;
    boolean I;
    float J;
    float K;
    long L;
    float M;
    private boolean N;
    private ArrayList O;
    private ArrayList P;
    private ArrayList Q;
    private CopyOnWriteArrayList R;
    private int S;
    private long T;
    private float U;
    private int V;
    private float W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    p f7146a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    boolean f7147a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Interpolator f7148b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    protected boolean f7149b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Interpolator f7150c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    int f7151c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f7152d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    int f7153d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7154e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    int f7155e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f7156f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    int f7157f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7158g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    int f7159g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7160h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    int f7161h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7162i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    float f7163i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f7164j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private androidx.constraintlayout.core.motion.utils.d f7165j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    HashMap f7166k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private boolean f7167k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f7168l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private g f7169l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7170m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private Runnable f7171m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f7172n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int[] f7173n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f7174o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    int f7175o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f7176p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f7177p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f7178q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    int f7179q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7180r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    HashMap f7181r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f7182s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f7183s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f7184t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f7185t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private h f7186u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private int f7187u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f7188v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    Rect f7189v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f7190w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private boolean f7191w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f7192x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    TransitionState f7193x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    c f7194y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    d f7195y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f7196z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private boolean f7197z0;

    enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7198a;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f7198a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7198a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7198a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7198a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class b extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f7199a = 0.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7200b = 0.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f7201c;

        b() {
        }

        @Override // androidx.constraintlayout.motion.widget.n
        public float a() {
            return MotionLayout.this.f7152d;
        }

        public void b(float f11, float f12, float f13) {
            this.f7199a = f11;
            this.f7200b = f12;
            this.f7201c = f13;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            float f12;
            float f13;
            float f14 = this.f7199a;
            if (f14 > 0.0f) {
                float f15 = this.f7201c;
                if (f14 / f15 < f11) {
                    f11 = f14 / f15;
                }
                MotionLayout.this.f7152d = f14 - (f15 * f11);
                f12 = (f14 * f11) - (((f15 * f11) * f11) / 2.0f);
                f13 = this.f7200b;
            } else {
                float f16 = this.f7201c;
                if ((-f14) / f16 < f11) {
                    f11 = (-f14) / f16;
                }
                MotionLayout.this.f7152d = (f16 * f11) + f14;
                f12 = (f14 * f11) + (((f16 * f11) * f11) / 2.0f);
                f13 = this.f7200b;
            }
            return f12 + f13;
        }
    }

    private class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float[] f7203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int[] f7204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float[] f7205c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Path f7206d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Paint f7207e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Paint f7208f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Paint f7209g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Paint f7210h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Paint f7211i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float[] f7212j;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        DashPathEffect f7218p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f7219q;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f7222t;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final int f7213k = -21965;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final int f7214l = -2067046;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final int f7215m = -13391360;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final int f7216n = 1996488704;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final int f7217o = 10;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Rect f7220r = new Rect();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        boolean f7221s = false;

        public c() {
            this.f7222t = 1;
            Paint paint = new Paint();
            this.f7207e = paint;
            paint.setAntiAlias(true);
            this.f7207e.setColor(-21965);
            this.f7207e.setStrokeWidth(2.0f);
            Paint paint2 = this.f7207e;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.f7208f = paint3;
            paint3.setAntiAlias(true);
            this.f7208f.setColor(-2067046);
            this.f7208f.setStrokeWidth(2.0f);
            this.f7208f.setStyle(style);
            Paint paint4 = new Paint();
            this.f7209g = paint4;
            paint4.setAntiAlias(true);
            this.f7209g.setColor(-13391360);
            this.f7209g.setStrokeWidth(2.0f);
            this.f7209g.setStyle(style);
            Paint paint5 = new Paint();
            this.f7210h = paint5;
            paint5.setAntiAlias(true);
            this.f7210h.setColor(-13391360);
            this.f7210h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f7212j = new float[8];
            Paint paint6 = new Paint();
            this.f7211i = paint6;
            paint6.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f7218p = dashPathEffect;
            this.f7209g.setPathEffect(dashPathEffect);
            this.f7205c = new float[100];
            this.f7204b = new int[50];
            if (this.f7221s) {
                this.f7207e.setStrokeWidth(8.0f);
                this.f7211i.setStrokeWidth(8.0f);
                this.f7208f.setStrokeWidth(8.0f);
                this.f7222t = 4;
            }
        }

        private void c(Canvas canvas) {
            canvas.drawLines(this.f7203a, this.f7207e);
        }

        private void d(Canvas canvas) {
            boolean z10 = false;
            boolean z11 = false;
            for (int i11 = 0; i11 < this.f7219q; i11++) {
                int i12 = this.f7204b[i11];
                if (i12 == 1) {
                    z10 = true;
                }
                if (i12 == 0) {
                    z11 = true;
                }
            }
            if (z10) {
                g(canvas);
            }
            if (z11) {
                e(canvas);
            }
        }

        private void e(Canvas canvas) {
            float[] fArr = this.f7203a;
            float f11 = fArr[0];
            float f12 = fArr[1];
            float f13 = fArr[fArr.length - 2];
            float f14 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f11, f13), Math.max(f12, f14), Math.max(f11, f13), Math.max(f12, f14), this.f7209g);
            canvas.drawLine(Math.min(f11, f13), Math.min(f12, f14), Math.min(f11, f13), Math.max(f12, f14), this.f7209g);
        }

        private void f(Canvas canvas, float f11, float f12) {
            float[] fArr = this.f7203a;
            float f13 = fArr[0];
            float f14 = fArr[1];
            float f15 = fArr[fArr.length - 2];
            float f16 = fArr[fArr.length - 1];
            float fMin = Math.min(f13, f15);
            float fMax = Math.max(f14, f16);
            float fMin2 = f11 - Math.min(f13, f15);
            float fMax2 = Math.max(f14, f16) - f12;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f15 - f13))) + 0.5d)) / 100.0f);
            l(str, this.f7210h);
            canvas.drawText(str, ((fMin2 / 2.0f) - (this.f7220r.width() / 2)) + fMin, f12 - 20.0f, this.f7210h);
            canvas.drawLine(f11, f12, Math.min(f13, f15), f12, this.f7209g);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f16 - f14))) + 0.5d)) / 100.0f);
            l(str2, this.f7210h);
            canvas.drawText(str2, f11 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.f7220r.height() / 2)), this.f7210h);
            canvas.drawLine(f11, f12, f11, Math.max(f14, f16), this.f7209g);
        }

        private void g(Canvas canvas) {
            float[] fArr = this.f7203a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f7209g);
        }

        private void h(Canvas canvas, float f11, float f12) {
            float[] fArr = this.f7203a;
            float f13 = fArr[0];
            float f14 = fArr[1];
            float f15 = fArr[fArr.length - 2];
            float f16 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f13 - f15, f14 - f16);
            float f17 = f15 - f13;
            float f18 = f16 - f14;
            float f19 = (((f11 - f13) * f17) + ((f12 - f14) * f18)) / (fHypot * fHypot);
            float f20 = f13 + (f17 * f19);
            float f21 = f14 + (f19 * f18);
            Path path = new Path();
            path.moveTo(f11, f12);
            path.lineTo(f20, f21);
            float fHypot2 = (float) Math.hypot(f20 - f11, f21 - f12);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            l(str, this.f7210h);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.f7220r.width() / 2), -20.0f, this.f7210h);
            canvas.drawLine(f11, f12, f20, f21, this.f7209g);
        }

        private void i(Canvas canvas, float f11, float f12, int i11, int i12) {
            String str = "" + (((int) (((double) (((f11 - (i11 / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i11))) + 0.5d)) / 100.0f);
            l(str, this.f7210h);
            canvas.drawText(str, ((f11 / 2.0f) - (this.f7220r.width() / 2)) + 0.0f, f12 - 20.0f, this.f7210h);
            canvas.drawLine(f11, f12, Math.min(0.0f, 1.0f), f12, this.f7209g);
            String str2 = "" + (((int) (((double) (((f12 - (i12 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i12))) + 0.5d)) / 100.0f);
            l(str2, this.f7210h);
            canvas.drawText(str2, f11 + 5.0f, 0.0f - ((f12 / 2.0f) - (this.f7220r.height() / 2)), this.f7210h);
            canvas.drawLine(f11, f12, f11, Math.max(0.0f, 1.0f), this.f7209g);
        }

        private void j(Canvas canvas, m mVar) {
            this.f7206d.reset();
            for (int i11 = 0; i11 <= 50; i11++) {
                mVar.e(i11 / 50, this.f7212j, 0);
                Path path = this.f7206d;
                float[] fArr = this.f7212j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f7206d;
                float[] fArr2 = this.f7212j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f7206d;
                float[] fArr3 = this.f7212j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f7206d;
                float[] fArr4 = this.f7212j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f7206d.close();
            }
            this.f7207e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f7206d, this.f7207e);
            canvas.translate(-2.0f, -2.0f);
            this.f7207e.setColor(FlowLayout.SPACING_AUTO);
            canvas.drawPath(this.f7206d, this.f7207e);
        }

        private void k(Canvas canvas, int i11, int i12, m mVar) {
            int width;
            int height;
            View view = mVar.f7377b;
            if (view != null) {
                width = view.getWidth();
                height = mVar.f7377b.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i13 = 1; i13 < i12 - 1; i13++) {
                if (i11 != 4 || this.f7204b[i13 - 1] != 0) {
                    float[] fArr = this.f7205c;
                    int i14 = i13 * 2;
                    float f11 = fArr[i14];
                    float f12 = fArr[i14 + 1];
                    this.f7206d.reset();
                    this.f7206d.moveTo(f11, f12 + 10.0f);
                    this.f7206d.lineTo(f11 + 10.0f, f12);
                    this.f7206d.lineTo(f11, f12 - 10.0f);
                    this.f7206d.lineTo(f11 - 10.0f, f12);
                    this.f7206d.close();
                    int i15 = i13 - 1;
                    mVar.q(i15);
                    if (i11 == 4) {
                        int i16 = this.f7204b[i15];
                        if (i16 == 1) {
                            h(canvas, f11 - 0.0f, f12 - 0.0f);
                        } else if (i16 == 0) {
                            f(canvas, f11 - 0.0f, f12 - 0.0f);
                        } else {
                            if (i16 == 2) {
                                i(canvas, f11 - 0.0f, f12 - 0.0f, width, height);
                            }
                            canvas.drawPath(this.f7206d, this.f7211i);
                        }
                        canvas.drawPath(this.f7206d, this.f7211i);
                    } else {
                        f12 = f12;
                        f11 = f11;
                    }
                    if (i11 == 2) {
                        h(canvas, f11 - 0.0f, f12 - 0.0f);
                    }
                    if (i11 == 3) {
                        f(canvas, f11 - 0.0f, f12 - 0.0f);
                    }
                    if (i11 == 6) {
                        i(canvas, f11 - 0.0f, f12 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.f7206d, this.f7211i);
                }
            }
            float[] fArr2 = this.f7203a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f7208f);
                float[] fArr3 = this.f7203a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f7208f);
            }
        }

        public void a(Canvas canvas, HashMap map, int i11, int i12) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i12 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f7158g) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f7210h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f7207e);
            }
            for (m mVar : map.values()) {
                int iM = mVar.m();
                if (i12 > 0 && iM == 0) {
                    iM = 1;
                }
                if (iM != 0) {
                    this.f7219q = mVar.c(this.f7205c, this.f7204b);
                    if (iM >= 1) {
                        int i13 = i11 / 16;
                        float[] fArr = this.f7203a;
                        if (fArr == null || fArr.length != i13 * 2) {
                            this.f7203a = new float[i13 * 2];
                            this.f7206d = new Path();
                        }
                        int i14 = this.f7222t;
                        canvas.translate(i14, i14);
                        this.f7207e.setColor(1996488704);
                        this.f7211i.setColor(1996488704);
                        this.f7208f.setColor(1996488704);
                        this.f7209g.setColor(1996488704);
                        mVar.d(this.f7203a, i13);
                        b(canvas, iM, this.f7219q, mVar);
                        this.f7207e.setColor(-21965);
                        this.f7208f.setColor(-2067046);
                        this.f7211i.setColor(-2067046);
                        this.f7209g.setColor(-13391360);
                        int i15 = this.f7222t;
                        canvas.translate(-i15, -i15);
                        b(canvas, iM, this.f7219q, mVar);
                        if (iM == 5) {
                            j(canvas, mVar);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void b(Canvas canvas, int i11, int i12, m mVar) {
            if (i11 == 4) {
                d(canvas);
            }
            if (i11 == 2) {
                g(canvas);
            }
            if (i11 == 3) {
                e(canvas);
            }
            c(canvas);
            k(canvas, i11, i12, mVar);
        }

        void l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f7220r);
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.constraintlayout.core.widgets.d f7224a = new androidx.constraintlayout.core.widgets.d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.constraintlayout.core.widgets.d f7225b = new androidx.constraintlayout.core.widgets.d();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        androidx.constraintlayout.widget.b f7226c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        androidx.constraintlayout.widget.b f7227d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f7228e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f7229f;

        d() {
        }

        private void b(int i11, int i12) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.f7156f == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                androidx.constraintlayout.core.widgets.d dVar = this.f7225b;
                androidx.constraintlayout.widget.b bVar = this.f7227d;
                motionLayout2.resolveSystem(dVar, optimizationLevel, (bVar == null || bVar.f7759d == 0) ? i11 : i12, (bVar == null || bVar.f7759d == 0) ? i12 : i11);
                androidx.constraintlayout.widget.b bVar2 = this.f7226c;
                if (bVar2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f7224a;
                    int i13 = bVar2.f7759d;
                    int i14 = i13 == 0 ? i11 : i12;
                    if (i13 == 0) {
                        i11 = i12;
                    }
                    motionLayout3.resolveSystem(dVar2, optimizationLevel, i14, i11);
                    return;
                }
                return;
            }
            androidx.constraintlayout.widget.b bVar3 = this.f7226c;
            if (bVar3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                androidx.constraintlayout.core.widgets.d dVar3 = this.f7224a;
                int i15 = bVar3.f7759d;
                motionLayout4.resolveSystem(dVar3, optimizationLevel, i15 == 0 ? i11 : i12, i15 == 0 ? i12 : i11);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            androidx.constraintlayout.core.widgets.d dVar4 = this.f7225b;
            androidx.constraintlayout.widget.b bVar4 = this.f7227d;
            int i16 = (bVar4 == null || bVar4.f7759d == 0) ? i11 : i12;
            if (bVar4 == null || bVar4.f7759d == 0) {
                i11 = i12;
            }
            motionLayout5.resolveSystem(dVar4, optimizationLevel, i16, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void j(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.widget.b bVar) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.a aVar = new Constraints.a(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, dVar);
            sparseArray.put(MotionLayout.this.getId(), dVar);
            if (bVar != null && bVar.f7759d != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.f7225b, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            for (ConstraintWidget constraintWidget : dVar.v1()) {
                constraintWidget.D0(true);
                sparseArray.put(((View) constraintWidget.u()).getId(), constraintWidget);
            }
            for (ConstraintWidget constraintWidget2 : dVar.v1()) {
                View view = (View) constraintWidget2.u();
                bVar.l(view.getId(), aVar);
                constraintWidget2.o1(bVar.G(view.getId()));
                constraintWidget2.P0(bVar.B(view.getId()));
                if (view instanceof ConstraintHelper) {
                    bVar.j((ConstraintHelper) view, constraintWidget2, aVar, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                aVar.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, constraintWidget2, aVar, sparseArray);
                if (bVar.F(view.getId()) == 1) {
                    constraintWidget2.n1(view.getVisibility());
                } else {
                    constraintWidget2.n1(bVar.E(view.getId()));
                }
            }
            for (ConstraintWidget constraintWidget3 : dVar.v1()) {
                if (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget3.u();
                    t0.a aVar2 = (t0.a) constraintWidget3;
                    constraintHelper.updatePreLayout(dVar, aVar2, sparseArray);
                    ((androidx.constraintlayout.core.widgets.i) aVar2).y1();
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:26:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:27:0x0108  */
        /* JADX WARN: Code duplicated, block: B:29:0x010e  */
        /* JADX WARN: Code duplicated, block: B:42:0x013c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:44:0x013c A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:29:0x010e, please report this as an issue */
        public void a() {
            ConstraintWidget constraintWidgetD;
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.f7166k.clear();
            SparseArray sparseArray = new SparseArray();
            int[] iArr = new int[childCount];
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = MotionLayout.this.getChildAt(i11);
                m mVar = new m(childAt);
                int id2 = childAt.getId();
                iArr[i11] = id2;
                sparseArray.put(id2, mVar);
                MotionLayout.this.f7166k.put(childAt, mVar);
            }
            int i12 = 0;
            while (i12 < childCount) {
                View childAt2 = MotionLayout.this.getChildAt(i12);
                m mVar2 = (m) MotionLayout.this.f7166k.get(childAt2);
                if (mVar2 == null) {
                    sparseArray = sparseArray;
                } else {
                    if (this.f7226c != null) {
                        ConstraintWidget constraintWidgetD2 = d(this.f7224a, childAt2);
                        if (constraintWidgetD2 != null) {
                            mVar2.F(MotionLayout.this.Y(constraintWidgetD2), this.f7226c, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (MotionLayout.this.f7192x != 0) {
                            Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + "no widget for  " + androidx.constraintlayout.motion.widget.a.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    } else {
                        if (MotionLayout.this.f7177p0) {
                            v0.e eVar = (v0.e) MotionLayout.this.f7181r0.get(childAt2);
                            MotionLayout motionLayout = MotionLayout.this;
                            mVar2.G(eVar, childAt2, motionLayout.f7179q0, motionLayout.f7183s0, MotionLayout.this.f7185t0);
                        }
                        if (this.f7227d == null) {
                            constraintWidgetD = d(this.f7225b, childAt2);
                            if (constraintWidgetD != null) {
                                mVar2.C(MotionLayout.this.Y(constraintWidgetD), this.f7227d, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                            } else if (MotionLayout.this.f7192x != 0) {
                                Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + "no widget for  " + androidx.constraintlayout.motion.widget.a.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                            }
                        }
                    }
                    if (this.f7227d == null) {
                        constraintWidgetD = d(this.f7225b, childAt2);
                        if (constraintWidgetD != null) {
                            mVar2.C(MotionLayout.this.Y(constraintWidgetD), this.f7227d, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (MotionLayout.this.f7192x != 0) {
                            Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + "no widget for  " + androidx.constraintlayout.motion.widget.a.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
                i12++;
                sparseArray = sparseArray;
            }
            SparseArray sparseArray2 = sparseArray;
            int i13 = 0;
            while (i13 < childCount) {
                SparseArray sparseArray3 = sparseArray2;
                m mVar3 = (m) sparseArray3.get(iArr[i13]);
                int iH = mVar3.h();
                if (iH != -1) {
                    mVar3.J((m) sparseArray3.get(iH));
                }
                i13++;
                sparseArray2 = sparseArray3;
            }
        }

        void c(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.core.widgets.d dVar2) {
            ConstraintWidget bVar;
            ArrayList<ConstraintWidget> arrayListV1 = dVar.v1();
            HashMap map = new HashMap();
            map.put(dVar, dVar2);
            dVar2.v1().clear();
            dVar2.n(dVar, map);
            for (ConstraintWidget constraintWidget : arrayListV1) {
                if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
                    bVar = new androidx.constraintlayout.core.widgets.a();
                } else if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
                    bVar = new androidx.constraintlayout.core.widgets.f();
                } else if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
                    bVar = new androidx.constraintlayout.core.widgets.e();
                } else if (constraintWidget instanceof androidx.constraintlayout.core.widgets.h) {
                    bVar = new androidx.constraintlayout.core.widgets.h();
                } else {
                    bVar = constraintWidget instanceof t0.a ? new t0.b() : new ConstraintWidget();
                }
                dVar2.a(bVar);
                map.put(constraintWidget, bVar);
            }
            for (ConstraintWidget constraintWidget2 : arrayListV1) {
                ((ConstraintWidget) map.get(constraintWidget2)).n(constraintWidget2, map);
            }
        }

        ConstraintWidget d(androidx.constraintlayout.core.widgets.d dVar, View view) {
            if (dVar.u() == view) {
                return dVar;
            }
            ArrayList arrayListV1 = dVar.v1();
            int size = arrayListV1.size();
            for (int i11 = 0; i11 < size; i11++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) arrayListV1.get(i11);
                if (constraintWidget.u() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        void e(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.widget.b bVar, androidx.constraintlayout.widget.b bVar2) {
            this.f7226c = bVar;
            this.f7227d = bVar2;
            this.f7224a = new androidx.constraintlayout.core.widgets.d();
            this.f7225b = new androidx.constraintlayout.core.widgets.d();
            this.f7224a.a2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.N1());
            this.f7225b.a2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.N1());
            this.f7224a.y1();
            this.f7225b.y1();
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f7224a);
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f7225b);
            if (MotionLayout.this.f7174o > 0.5d) {
                if (bVar != null) {
                    j(this.f7224a, bVar);
                }
                j(this.f7225b, bVar2);
            } else {
                j(this.f7225b, bVar2);
                if (bVar != null) {
                    j(this.f7224a, bVar);
                }
            }
            this.f7224a.d2(MotionLayout.this.isRtl());
            this.f7224a.f2();
            this.f7225b.d2(MotionLayout.this.isRtl());
            this.f7225b.f2();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f7224a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    dVar2.T0(dimensionBehaviour);
                    this.f7225b.T0(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    androidx.constraintlayout.core.widgets.d dVar3 = this.f7224a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    dVar3.k1(dimensionBehaviour2);
                    this.f7225b.k1(dimensionBehaviour2);
                }
            }
        }

        public boolean f(int i11, int i12) {
            return (i11 == this.f7228e && i12 == this.f7229f) ? false : true;
        }

        public void g(int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int mode2 = View.MeasureSpec.getMode(i12);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.f7159g0 = mode;
            motionLayout.f7161h0 = mode2;
            motionLayout.getOptimizationLevel();
            b(i11, i12);
            if (!(MotionLayout.this.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                b(i11, i12);
                MotionLayout.this.f7151c0 = this.f7224a.Y();
                MotionLayout.this.f7153d0 = this.f7224a.z();
                MotionLayout.this.f7155e0 = this.f7225b.Y();
                MotionLayout.this.f7157f0 = this.f7225b.z();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.f7149b0 = (motionLayout2.f7151c0 == motionLayout2.f7155e0 && motionLayout2.f7153d0 == motionLayout2.f7157f0) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i13 = motionLayout3.f7151c0;
            int i14 = motionLayout3.f7153d0;
            int i15 = motionLayout3.f7159g0;
            if (i15 == Integer.MIN_VALUE || i15 == 0) {
                i13 = (int) (i13 + (motionLayout3.f7163i0 * (motionLayout3.f7155e0 - i13)));
            }
            int i16 = i13;
            int i17 = motionLayout3.f7161h0;
            if (i17 == Integer.MIN_VALUE || i17 == 0) {
                i14 = (int) (i14 + (motionLayout3.f7163i0 * (motionLayout3.f7157f0 - i14)));
            }
            MotionLayout.this.resolveMeasuredDimension(i11, i12, i16, i14, this.f7224a.V1() || this.f7225b.V1(), this.f7224a.T1() || this.f7225b.T1());
        }

        public void h() {
            g(MotionLayout.this.f7160h, MotionLayout.this.f7162i);
            MotionLayout.this.X();
        }

        public void i(int i11, int i12) {
            this.f7228e = i11;
            this.f7229f = i12;
        }
    }

    protected interface e {
        void a(MotionEvent motionEvent);

        float b();

        float c();

        void d(int i11);

        void recycle();
    }

    private static class f implements e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static f f7231b = new f();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        VelocityTracker f7232a;

        private f() {
        }

        public static f e() {
            f7231b.f7232a = VelocityTracker.obtain();
            return f7231b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.e
        public void a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f7232a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.e
        public float b() {
            VelocityTracker velocityTracker = this.f7232a;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.e
        public float c() {
            VelocityTracker velocityTracker = this.f7232a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.e
        public void d(int i11) {
            VelocityTracker velocityTracker = this.f7232a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i11);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.e
        public void recycle() {
            VelocityTracker velocityTracker = this.f7232a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f7232a = null;
            }
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f7233a = Float.NaN;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7234b = Float.NaN;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7235c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f7236d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final String f7237e = "motion.progress";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f7238f = "motion.velocity";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final String f7239g = "motion.StartState";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final String f7240h = "motion.EndState";

        g() {
        }

        void a() {
            int i11 = this.f7235c;
            if (i11 != -1 || this.f7236d != -1) {
                if (i11 == -1) {
                    MotionLayout.this.transitionToState(this.f7236d);
                } else {
                    int i12 = this.f7236d;
                    if (i12 == -1) {
                        MotionLayout.this.setState(i11, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i11, i12);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.f7234b)) {
                if (Float.isNaN(this.f7233a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f7233a);
            } else {
                MotionLayout.this.setProgress(this.f7233a, this.f7234b);
                this.f7233a = Float.NaN;
                this.f7234b = Float.NaN;
                this.f7235c = -1;
                this.f7236d = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f7233a);
            bundle.putFloat("motion.velocity", this.f7234b);
            bundle.putInt("motion.StartState", this.f7235c);
            bundle.putInt("motion.EndState", this.f7236d);
            return bundle;
        }

        public void c() {
            this.f7236d = MotionLayout.this.f7158g;
            this.f7235c = MotionLayout.this.f7154e;
            this.f7234b = MotionLayout.this.getVelocity();
            this.f7233a = MotionLayout.this.getProgress();
        }

        public void d(int i11) {
            this.f7236d = i11;
        }

        public void e(float f11) {
            this.f7233a = f11;
        }

        public void f(int i11) {
            this.f7235c = i11;
        }

        public void g(Bundle bundle) {
            this.f7233a = bundle.getFloat("motion.progress");
            this.f7234b = bundle.getFloat("motion.velocity");
            this.f7235c = bundle.getInt("motion.StartState");
            this.f7236d = bundle.getInt("motion.EndState");
        }

        public void h(float f11) {
            this.f7234b = f11;
        }
    }

    public interface h {
        void onTransitionChange(MotionLayout motionLayout, int i11, int i12, float f11);

        void onTransitionCompleted(MotionLayout motionLayout, int i11);

        void onTransitionStarted(MotionLayout motionLayout, int i11, int i12);

        void onTransitionTrigger(MotionLayout motionLayout, int i11, boolean z10, float f11);
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.f7150c = null;
        this.f7152d = 0.0f;
        this.f7154e = -1;
        this.f7156f = -1;
        this.f7158g = -1;
        this.f7160h = 0;
        this.f7162i = 0;
        this.f7164j = true;
        this.f7166k = new HashMap();
        this.f7168l = 0L;
        this.f7170m = 1.0f;
        this.f7172n = 0.0f;
        this.f7174o = 0.0f;
        this.f7178q = 0.0f;
        this.f7182s = false;
        this.f7184t = false;
        this.f7192x = 0;
        this.f7196z = false;
        this.A = new v0.b();
        this.B = new b();
        this.D = true;
        this.I = false;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = 0;
        this.T = -1L;
        this.U = 0.0f;
        this.V = 0;
        this.W = 0.0f;
        this.f7147a0 = false;
        this.f7149b0 = false;
        this.f7165j0 = new androidx.constraintlayout.core.motion.utils.d();
        this.f7167k0 = false;
        this.f7171m0 = null;
        this.f7173n0 = null;
        this.f7175o0 = 0;
        this.f7177p0 = false;
        this.f7179q0 = 0;
        this.f7181r0 = new HashMap();
        this.f7189v0 = new Rect();
        this.f7191w0 = false;
        this.f7193x0 = TransitionState.UNDEFINED;
        this.f7195y0 = new d();
        this.f7197z0 = false;
        this.A0 = new RectF();
        this.B0 = null;
        this.C0 = null;
        this.D0 = new ArrayList();
        T(null);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7150c = null;
        this.f7152d = 0.0f;
        this.f7154e = -1;
        this.f7156f = -1;
        this.f7158g = -1;
        this.f7160h = 0;
        this.f7162i = 0;
        this.f7164j = true;
        this.f7166k = new HashMap();
        this.f7168l = 0L;
        this.f7170m = 1.0f;
        this.f7172n = 0.0f;
        this.f7174o = 0.0f;
        this.f7178q = 0.0f;
        this.f7182s = false;
        this.f7184t = false;
        this.f7192x = 0;
        this.f7196z = false;
        this.A = new v0.b();
        this.B = new b();
        this.D = true;
        this.I = false;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = 0;
        this.T = -1L;
        this.U = 0.0f;
        this.V = 0;
        this.W = 0.0f;
        this.f7147a0 = false;
        this.f7149b0 = false;
        this.f7165j0 = new androidx.constraintlayout.core.motion.utils.d();
        this.f7167k0 = false;
        this.f7171m0 = null;
        this.f7173n0 = null;
        this.f7175o0 = 0;
        this.f7177p0 = false;
        this.f7179q0 = 0;
        this.f7181r0 = new HashMap();
        this.f7189v0 = new Rect();
        this.f7191w0 = false;
        this.f7193x0 = TransitionState.UNDEFINED;
        this.f7195y0 = new d();
        this.f7197z0 = false;
        this.A0 = new RectF();
        this.B0 = null;
        this.C0 = null;
        this.D0 = new ArrayList();
        T(attributeSet);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7150c = null;
        this.f7152d = 0.0f;
        this.f7154e = -1;
        this.f7156f = -1;
        this.f7158g = -1;
        this.f7160h = 0;
        this.f7162i = 0;
        this.f7164j = true;
        this.f7166k = new HashMap();
        this.f7168l = 0L;
        this.f7170m = 1.0f;
        this.f7172n = 0.0f;
        this.f7174o = 0.0f;
        this.f7178q = 0.0f;
        this.f7182s = false;
        this.f7184t = false;
        this.f7192x = 0;
        this.f7196z = false;
        this.A = new v0.b();
        this.B = new b();
        this.D = true;
        this.I = false;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = 0;
        this.T = -1L;
        this.U = 0.0f;
        this.V = 0;
        this.W = 0.0f;
        this.f7147a0 = false;
        this.f7149b0 = false;
        this.f7165j0 = new androidx.constraintlayout.core.motion.utils.d();
        this.f7167k0 = false;
        this.f7171m0 = null;
        this.f7173n0 = null;
        this.f7175o0 = 0;
        this.f7177p0 = false;
        this.f7179q0 = 0;
        this.f7181r0 = new HashMap();
        this.f7189v0 = new Rect();
        this.f7191w0 = false;
        this.f7193x0 = TransitionState.UNDEFINED;
        this.f7195y0 = new d();
        this.f7197z0 = false;
        this.A0 = new RectF();
        this.B0 = null;
        this.C0 = null;
        this.D0 = new ArrayList();
        T(attributeSet);
    }

    private boolean G(View view, MotionEvent motionEvent, float f11, float f12) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f11, f12);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f11, -f12);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f11, f12);
        if (this.C0 == null) {
            this.C0 = new Matrix();
        }
        matrix.invert(this.C0);
        motionEventObtain.transform(this.C0);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void H() {
        p pVar = this.f7146a;
        if (pVar == null) {
            Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int iG = pVar.G();
        p pVar2 = this.f7146a;
        I(iG, pVar2.m(pVar2.G()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        for (p.b bVar : this.f7146a.p()) {
            if (bVar == this.f7146a.f7425c) {
                Log.v("MotionLayout", "CHECK: CURRENT");
            }
            J(bVar);
            int iA = bVar.A();
            int iY = bVar.y();
            String strC = androidx.constraintlayout.motion.widget.a.c(getContext(), iA);
            String strC2 = androidx.constraintlayout.motion.widget.a.c(getContext(), iY);
            if (sparseIntArray.get(iA) == iY) {
                Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + strC + "->" + strC2);
            }
            if (sparseIntArray2.get(iY) == iA) {
                Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + strC + "->" + strC2);
            }
            sparseIntArray.put(iA, iY);
            sparseIntArray2.put(iY, iA);
            if (this.f7146a.m(iA) == null) {
                Log.e("MotionLayout", " no such constraintSetStart " + strC);
            }
            if (this.f7146a.m(iY) == null) {
                Log.e("MotionLayout", " no such constraintSetEnd " + strC);
            }
        }
    }

    private void I(int i11, androidx.constraintlayout.widget.b bVar) {
        String strC = androidx.constraintlayout.motion.widget.a.c(getContext(), i11);
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int id2 = childAt.getId();
            if (id2 == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (bVar.A(id2) == null) {
                Log.w("MotionLayout", "CHECK: " + strC + " NO CONSTRAINTS for " + androidx.constraintlayout.motion.widget.a.d(childAt));
            }
        }
        int[] iArrC = bVar.C();
        for (int i13 = 0; i13 < iArrC.length; i13++) {
            int i14 = iArrC[i13];
            String strC2 = androidx.constraintlayout.motion.widget.a.c(getContext(), i14);
            if (findViewById(iArrC[i13]) == null) {
                Log.w("MotionLayout", "CHECK: " + strC + " NO View matches id " + strC2);
            }
            if (bVar.B(i14) == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
            if (bVar.G(i14) == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    private void J(p.b bVar) {
        if (bVar.A() == bVar.y()) {
            Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
        }
    }

    private void K() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            m mVar = (m) this.f7166k.get(childAt);
            if (mVar != null) {
                mVar.E(childAt);
            }
        }
    }

    private void N() {
        boolean z10;
        float fSignum = Math.signum(this.f7178q - this.f7174o);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.f7148b;
        float interpolation = this.f7174o + (!(interpolator instanceof v0.b) ? (((nanoTime - this.f7176p) * fSignum) * 1.0E-9f) / this.f7170m : 0.0f);
        if (this.f7180r) {
            interpolation = this.f7178q;
        }
        if ((fSignum <= 0.0f || interpolation < this.f7178q) && (fSignum > 0.0f || interpolation > this.f7178q)) {
            z10 = false;
        } else {
            interpolation = this.f7178q;
            z10 = true;
        }
        if (interpolator != null && !z10) {
            interpolation = this.f7196z ? interpolator.getInterpolation((nanoTime - this.f7168l) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.f7178q) || (fSignum <= 0.0f && interpolation <= this.f7178q)) {
            interpolation = this.f7178q;
        }
        this.f7163i0 = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.f7150c;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            m mVar = (m) this.f7166k.get(childAt);
            if (mVar != null) {
                mVar.x(childAt, interpolation, nanoTime2, this.f7165j0);
            }
        }
        if (this.f7149b0) {
            requestLayout();
        }
    }

    private void O() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.f7186u == null && ((copyOnWriteArrayList = this.R) == null || copyOnWriteArrayList.isEmpty())) || this.W == this.f7172n) {
            return;
        }
        if (this.V != -1) {
            h hVar = this.f7186u;
            if (hVar != null) {
                hVar.onTransitionStarted(this, this.f7154e, this.f7158g);
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = this.R;
            if (copyOnWriteArrayList2 != null) {
                Iterator it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).onTransitionStarted(this, this.f7154e, this.f7158g);
                }
            }
            this.f7147a0 = true;
        }
        this.V = -1;
        float f11 = this.f7172n;
        this.W = f11;
        h hVar2 = this.f7186u;
        if (hVar2 != null) {
            hVar2.onTransitionChange(this, this.f7154e, this.f7158g, f11);
        }
        CopyOnWriteArrayList copyOnWriteArrayList3 = this.R;
        if (copyOnWriteArrayList3 != null) {
            Iterator it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                ((h) it2.next()).onTransitionChange(this, this.f7154e, this.f7158g, this.f7172n);
            }
        }
        this.f7147a0 = true;
    }

    private boolean S(float f11, float f12, View view, MotionEvent motionEvent) {
        boolean z10;
        if (!(view instanceof ViewGroup)) {
            z10 = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z10 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (S((childAt.getLeft() + f11) - view.getScrollX(), (childAt.getTop() + f12) - view.getScrollY(), childAt, motionEvent)) {
                z10 = true;
                break;
            }
            childCount--;
        }
        if (!z10) {
            this.A0.set(f11, f12, (view.getRight() + f11) - view.getLeft(), (view.getBottom() + f12) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.A0.contains(motionEvent.getX(), motionEvent.getY())) && G(view, motionEvent, -f11, -f12)) {
                return true;
            }
        }
        return z10;
    }

    private void T(AttributeSet attributeSet) {
        p pVar;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z10 = true;
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.MotionLayout_layoutDescription) {
                    this.f7146a = new p(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R$styleable.MotionLayout_currentState) {
                    this.f7156f = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R$styleable.MotionLayout_motionProgress) {
                    this.f7178q = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.f7182s = true;
                } else if (index == R$styleable.MotionLayout_applyMotionScene) {
                    z10 = typedArrayObtainStyledAttributes.getBoolean(index, z10);
                } else if (index == R$styleable.MotionLayout_showPaths) {
                    if (this.f7192x == 0) {
                        this.f7192x = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R$styleable.MotionLayout_motionDebug) {
                    this.f7192x = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.f7146a == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z10) {
                this.f7146a = null;
            }
        }
        if (this.f7192x != 0) {
            H();
        }
        if (this.f7156f != -1 || (pVar = this.f7146a) == null) {
            return;
        }
        this.f7156f = pVar.G();
        this.f7154e = this.f7146a.G();
        this.f7158g = this.f7146a.r();
    }

    private void W() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if (this.f7186u == null && ((copyOnWriteArrayList = this.R) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f7147a0 = false;
        for (Integer num : this.D0) {
            h hVar = this.f7186u;
            if (hVar != null) {
                hVar.onTransitionCompleted(this, num.intValue());
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = this.R;
            if (copyOnWriteArrayList2 != null) {
                Iterator it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).onTransitionCompleted(this, num.intValue());
                }
            }
        }
        this.D0.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        int childCount = getChildCount();
        this.f7195y0.a();
        this.f7182s = true;
        SparseArray sparseArray = new SparseArray();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            sparseArray.put(childAt.getId(), (m) this.f7166k.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iK = this.f7146a.k();
        if (iK != -1) {
            for (int i13 = 0; i13 < childCount; i13++) {
                m mVar = (m) this.f7166k.get(getChildAt(i13));
                if (mVar != null) {
                    mVar.D(iK);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.f7166k.size()];
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            m mVar2 = (m) this.f7166k.get(getChildAt(i15));
            if (mVar2.h() != -1) {
                sparseBooleanArray.put(mVar2.h(), true);
                iArr[i14] = mVar2.h();
                i14++;
            }
        }
        if (this.Q != null) {
            for (int i16 = 0; i16 < i14; i16++) {
                m mVar3 = (m) this.f7166k.get(findViewById(iArr[i16]));
                if (mVar3 != null) {
                    this.f7146a.u(mVar3);
                }
            }
            Iterator it = this.Q.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).onPreSetup(this, this.f7166k);
            }
            for (int i17 = 0; i17 < i14; i17++) {
                m mVar4 = (m) this.f7166k.get(findViewById(iArr[i17]));
                if (mVar4 != null) {
                    mVar4.I(width, height, this.f7170m, getNanoTime());
                }
            }
        } else {
            for (int i18 = 0; i18 < i14; i18++) {
                m mVar5 = (m) this.f7166k.get(findViewById(iArr[i18]));
                if (mVar5 != null) {
                    this.f7146a.u(mVar5);
                    mVar5.I(width, height, this.f7170m, getNanoTime());
                }
            }
        }
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt2 = getChildAt(i19);
            m mVar6 = (m) this.f7166k.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && mVar6 != null) {
                this.f7146a.u(mVar6);
                mVar6.I(width, height, this.f7170m, getNanoTime());
            }
        }
        float F = this.f7146a.F();
        if (F != 0.0f) {
            boolean z10 = ((double) F) < 0.0d;
            float fAbs = Math.abs(F);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            float fMin2 = Float.MAX_VALUE;
            for (int i20 = 0; i20 < childCount; i20++) {
                m mVar7 = (m) this.f7166k.get(getChildAt(i20));
                if (!Float.isNaN(mVar7.f7388m)) {
                    for (int i21 = 0; i21 < childCount; i21++) {
                        m mVar8 = (m) this.f7166k.get(getChildAt(i21));
                        if (!Float.isNaN(mVar8.f7388m)) {
                            fMin = Math.min(fMin, mVar8.f7388m);
                            fMax = Math.max(fMax, mVar8.f7388m);
                        }
                    }
                    while (i11 < childCount) {
                        m mVar9 = (m) this.f7166k.get(getChildAt(i11));
                        if (!Float.isNaN(mVar9.f7388m)) {
                            mVar9.f7390o = 1.0f / (1.0f - fAbs);
                            if (z10) {
                                mVar9.f7389n = fAbs - (((fMax - mVar9.f7388m) / (fMax - fMin)) * fAbs);
                            } else {
                                mVar9.f7389n = fAbs - (((mVar9.f7388m - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i11++;
                    }
                    return;
                }
                float fN = mVar7.n();
                float fO = mVar7.o();
                float f11 = z10 ? fO - fN : fO + fN;
                fMin2 = Math.min(fMin2, f11);
                fMax2 = Math.max(fMax2, f11);
            }
            while (i11 < childCount) {
                m mVar10 = (m) this.f7166k.get(getChildAt(i11));
                float fN2 = mVar10.n();
                float fO2 = mVar10.o();
                float f12 = z10 ? fO2 - fN2 : fO2 + fN2;
                mVar10.f7390o = 1.0f / (1.0f - fAbs);
                mVar10.f7389n = fAbs - (((f12 - fMin2) * fAbs) / (fMax2 - fMin2));
                i11++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect Y(ConstraintWidget constraintWidget) {
        this.f7189v0.top = constraintWidget.a0();
        this.f7189v0.left = constraintWidget.Z();
        Rect rect = this.f7189v0;
        int iY = constraintWidget.Y();
        Rect rect2 = this.f7189v0;
        rect.right = iY + rect2.left;
        int iZ = constraintWidget.z();
        Rect rect3 = this.f7189v0;
        rect2.bottom = iZ + rect3.top;
        return rect3;
    }

    private static boolean Z(float f11, float f12, float f13) {
        if (f11 > 0.0f) {
            float f14 = f11 / f13;
            return f12 + ((f11 * f14) - (((f13 * f14) * f14) / 2.0f)) > 1.0f;
        }
        float f15 = (-f11) / f13;
        return f12 + ((f11 * f15) + (((f13 * f15) * f15) / 2.0f)) < 0.0f;
    }

    void F(float f11) {
        p pVar = this.f7146a;
        if (pVar == null) {
            return;
        }
        float f12 = this.f7174o;
        float f13 = this.f7172n;
        if (f12 != f13 && this.f7180r) {
            this.f7174o = f13;
        }
        float f14 = this.f7174o;
        if (f14 == f11) {
            return;
        }
        this.f7196z = false;
        this.f7178q = f11;
        this.f7170m = pVar.q() / 1000.0f;
        setProgress(this.f7178q);
        this.f7148b = null;
        this.f7150c = this.f7146a.t();
        this.f7180r = false;
        this.f7168l = getNanoTime();
        this.f7182s = true;
        this.f7172n = f14;
        this.f7174o = f14;
        invalidate();
    }

    void L(boolean z10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            m mVar = (m) this.f7166k.get(getChildAt(i11));
            if (mVar != null) {
                mVar.f(z10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01be  */
    /* JADX WARN: Code duplicated, block: B:127:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:129:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:143:0x0222  */
    /* JADX WARN: Code duplicated, block: B:180:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e2 A[PHI: r3
  0x00e2: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:47:0x00ab, B:58:0x00d6, B:60:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0111  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:86:0x0138  */
    /* JADX WARN: Code duplicated, block: B:89:0x014f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0151  */
    /* JADX WARN: Code duplicated, block: B:93:0x0159  */
    /* JADX WARN: Code duplicated, block: B:96:0x0170  */
    /* JADX WARN: Code duplicated, block: B:98:0x0180  */
    void M(boolean z10) {
        boolean z11;
        char c11;
        int childCount;
        long nanoTime;
        Interpolator interpolator;
        float interpolation;
        Interpolator interpolator2;
        int i11;
        int i12;
        int i13;
        int i14;
        View childAt;
        m mVar;
        boolean z12;
        if (this.f7176p == -1) {
            this.f7176p = getNanoTime();
        }
        float f11 = this.f7174o;
        if (f11 > 0.0f && f11 < 1.0f) {
            this.f7156f = -1;
        }
        boolean z13 = false;
        if (this.N || (this.f7182s && (z10 || this.f7178q != f11))) {
            float fSignum = Math.signum(this.f7178q - f11);
            long nanoTime2 = getNanoTime();
            Interpolator interpolator3 = this.f7148b;
            float f12 = !(interpolator3 instanceof n) ? (((nanoTime2 - this.f7176p) * fSignum) * 1.0E-9f) / this.f7170m : 0.0f;
            float f13 = this.f7174o + f12;
            if (this.f7180r) {
                f13 = this.f7178q;
            }
            if ((fSignum <= 0.0f || f13 < this.f7178q) && (fSignum > 0.0f || f13 > this.f7178q)) {
                z11 = false;
            } else {
                f13 = this.f7178q;
                this.f7182s = false;
                z11 = true;
            }
            this.f7174o = f13;
            this.f7172n = f13;
            this.f7176p = nanoTime2;
            if (interpolator3 == null || z11) {
                this.f7152d = f12;
            } else {
                if (this.f7196z) {
                    float interpolation2 = interpolator3.getInterpolation((nanoTime2 - this.f7168l) * 1.0E-9f);
                    Interpolator interpolator4 = this.f7148b;
                    v0.b bVar = this.A;
                    c11 = interpolator4 == bVar ? bVar.c() ? (char) 2 : (char) 1 : (char) 0;
                    this.f7174o = interpolation2;
                    this.f7176p = nanoTime2;
                    Interpolator interpolator5 = this.f7148b;
                    if (interpolator5 instanceof n) {
                        float fA = ((n) interpolator5).a();
                        this.f7152d = fA;
                        if (Math.abs(fA) * this.f7170m <= 1.0E-5f && c11 == 2) {
                            this.f7182s = false;
                        }
                        if (fA > 0.0f && interpolation2 >= 1.0f) {
                            this.f7174o = 1.0f;
                            this.f7182s = false;
                            interpolation2 = 1.0f;
                        }
                        if (fA >= 0.0f || interpolation2 > 0.0f) {
                            f13 = interpolation2;
                        } else {
                            this.f7174o = 0.0f;
                            this.f7182s = false;
                            f13 = 0.0f;
                        }
                    } else {
                        f13 = interpolation2;
                    }
                } else {
                    float interpolation3 = interpolator3.getInterpolation(f13);
                    Interpolator interpolator6 = this.f7148b;
                    if (interpolator6 instanceof n) {
                        this.f7152d = ((n) interpolator6).a();
                    } else {
                        this.f7152d = ((interpolator6.getInterpolation(f13 + f12) - interpolation3) * fSignum) / f12;
                    }
                    f13 = interpolation3;
                }
                if (Math.abs(this.f7152d) > 1.0E-5f) {
                    setState(TransitionState.MOVING);
                }
                if (c11 != 1) {
                    if ((fSignum <= 0.0f && f13 >= this.f7178q) || (fSignum <= 0.0f && f13 <= this.f7178q)) {
                        f13 = this.f7178q;
                        this.f7182s = false;
                    }
                    if (f13 < 1.0f || f13 <= 0.0f) {
                        this.f7182s = false;
                        setState(TransitionState.FINISHED);
                    }
                }
                childCount = getChildCount();
                this.N = false;
                nanoTime = getNanoTime();
                this.f7163i0 = f13;
                interpolator = this.f7150c;
                if (interpolator == null) {
                    interpolation = f13;
                } else {
                    interpolation = interpolator.getInterpolation(f13);
                }
                interpolator2 = this.f7150c;
                if (interpolator2 != null) {
                    float interpolation4 = interpolator2.getInterpolation((fSignum / this.f7170m) + f13);
                    this.f7152d = interpolation4;
                    this.f7152d = interpolation4 - this.f7150c.getInterpolation(f13);
                }
                for (i11 = 0; i11 < childCount; i11++) {
                    childAt = getChildAt(i11);
                    mVar = (m) this.f7166k.get(childAt);
                    if (mVar != null) {
                        this.N = mVar.x(childAt, interpolation, nanoTime, this.f7165j0) | this.N;
                    }
                }
                boolean z14 = (fSignum <= 0.0f && f13 >= this.f7178q) || (fSignum <= 0.0f && f13 <= this.f7178q);
                if (!this.N && !this.f7182s && z14) {
                    setState(TransitionState.FINISHED);
                }
                if (this.f7149b0) {
                    requestLayout();
                }
                this.N = (!z14) | this.N;
                if (f13 <= 0.0f && (i14 = this.f7154e) != -1 && this.f7156f != i14) {
                    this.f7156f = i14;
                    this.f7146a.m(i14).g(this);
                    setState(TransitionState.FINISHED);
                    z13 = true;
                }
                if (f13 >= 1.0d) {
                    i12 = this.f7156f;
                    i13 = this.f7158g;
                    if (i12 != i13) {
                        this.f7156f = i13;
                        this.f7146a.m(i13).g(this);
                        setState(TransitionState.FINISHED);
                        z13 = true;
                    }
                }
                if (!this.N || this.f7182s) {
                    invalidate();
                } else if ((fSignum > 0.0f && f13 == 1.0f) || (fSignum < 0.0f && f13 == 0.0f)) {
                    setState(TransitionState.FINISHED);
                }
                if (!this.N && !this.f7182s && ((fSignum > 0.0f && f13 == 1.0f) || (fSignum < 0.0f && f13 == 0.0f))) {
                    V();
                }
            }
            c11 = 0;
            if (Math.abs(this.f7152d) > 1.0E-5f) {
                setState(TransitionState.MOVING);
            }
            if (c11 != 1) {
                if (fSignum <= 0.0f) {
                    f13 = this.f7178q;
                    this.f7182s = false;
                } else {
                    f13 = this.f7178q;
                    this.f7182s = false;
                }
                if (f13 < 1.0f) {
                    this.f7182s = false;
                    setState(TransitionState.FINISHED);
                } else {
                    this.f7182s = false;
                    setState(TransitionState.FINISHED);
                }
            }
            childCount = getChildCount();
            this.N = false;
            nanoTime = getNanoTime();
            this.f7163i0 = f13;
            interpolator = this.f7150c;
            if (interpolator == null) {
                interpolation = f13;
            } else {
                interpolation = interpolator.getInterpolation(f13);
            }
            interpolator2 = this.f7150c;
            if (interpolator2 != null) {
                float interpolation5 = interpolator2.getInterpolation((fSignum / this.f7170m) + f13);
                this.f7152d = interpolation5;
                this.f7152d = interpolation5 - this.f7150c.getInterpolation(f13);
            }
            while (i11 < childCount) {
                childAt = getChildAt(i11);
                mVar = (m) this.f7166k.get(childAt);
                if (mVar != null) {
                    this.N = mVar.x(childAt, interpolation, nanoTime, this.f7165j0) | this.N;
                }
            }
            if (fSignum <= 0.0f) {
            }
            if (!this.N) {
                setState(TransitionState.FINISHED);
            }
            if (this.f7149b0) {
                requestLayout();
            }
            this.N = (!z14) | this.N;
            if (f13 <= 0.0f) {
                this.f7156f = i14;
                this.f7146a.m(i14).g(this);
                setState(TransitionState.FINISHED);
                z13 = true;
            }
            if (f13 >= 1.0d) {
                i12 = this.f7156f;
                i13 = this.f7158g;
                if (i12 != i13) {
                    this.f7156f = i13;
                    this.f7146a.m(i13).g(this);
                    setState(TransitionState.FINISHED);
                    z13 = true;
                }
            }
            if (this.N) {
                invalidate();
            } else {
                invalidate();
            }
            if (!this.N) {
                V();
            }
        }
        float f14 = this.f7174o;
        if (f14 < 1.0f) {
            if (f14 <= 0.0f) {
                int i15 = this.f7156f;
                int i16 = this.f7154e;
                z12 = i15 == i16 ? z13 : true;
                this.f7156f = i16;
            }
            this.f7197z0 |= z13;
            if (z13 && !this.f7167k0) {
                requestLayout();
            }
            this.f7172n = this.f7174o;
        }
        int i17 = this.f7156f;
        int i18 = this.f7158g;
        z12 = i17 == i18 ? z13 : true;
        this.f7156f = i18;
        z13 = z12;
        this.f7197z0 |= z13;
        if (z13) {
            requestLayout();
        }
        this.f7172n = this.f7174o;
    }

    protected void P() {
        int iIntValue;
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.f7186u != null || ((copyOnWriteArrayList = this.R) != null && !copyOnWriteArrayList.isEmpty())) && this.V == -1) {
            this.V = this.f7156f;
            if (this.D0.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList arrayList = this.D0;
                iIntValue = ((Integer) arrayList.get(arrayList.size() - 1)).intValue();
            }
            int i11 = this.f7156f;
            if (iIntValue != i11 && i11 != -1) {
                this.D0.add(Integer.valueOf(i11));
            }
        }
        W();
        Runnable runnable = this.f7171m0;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.f7173n0;
        if (iArr == null || this.f7175o0 <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.f7173n0;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.f7175o0--;
    }

    void Q(int i11, float f11, float f12, float f13, float[] fArr) {
        String resourceName;
        HashMap map = this.f7166k;
        View viewById = getViewById(i11);
        m mVar = (m) map.get(viewById);
        if (mVar != null) {
            mVar.l(f11, f12, f13, fArr);
            float y10 = viewById.getY();
            this.f7188v = f11;
            this.f7190w = y10;
            return;
        }
        if (viewById == null) {
            resourceName = "" + i11;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(i11);
        }
        Log.w("MotionLayout", "WARNING could not find view id " + resourceName);
    }

    m R(int i11) {
        return (m) this.f7166k.get(findViewById(i11));
    }

    protected e U() {
        return f.e();
    }

    void V() {
        p pVar = this.f7146a;
        if (pVar == null) {
            return;
        }
        if (pVar.h(this, this.f7156f)) {
            requestLayout();
            return;
        }
        int i11 = this.f7156f;
        if (i11 != -1) {
            this.f7146a.f(this, i11);
        }
        if (this.f7146a.d0()) {
            this.f7146a.b0();
        }
    }

    public void addTransitionListener(h hVar) {
        if (this.R == null) {
            this.R = new CopyOnWriteArrayList();
        }
        this.R.add(hVar);
    }

    public boolean applyViewTransition(int i11, m mVar) {
        p pVar = this.f7146a;
        if (pVar != null) {
            return pVar.g(i11, mVar);
        }
        return false;
    }

    public androidx.constraintlayout.widget.b cloneConstraintSet(int i11) {
        p pVar = this.f7146a;
        if (pVar == null) {
            return null;
        }
        androidx.constraintlayout.widget.b bVarM = pVar.m(i11);
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        bVar.r(bVarM);
        return bVar;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        t tVar;
        ArrayList arrayList = this.Q;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).onPreDraw(canvas);
            }
        }
        M(false);
        p pVar = this.f7146a;
        if (pVar != null && (tVar = pVar.f7441s) != null) {
            tVar.c();
        }
        super.dispatchDraw(canvas);
        if (this.f7146a == null) {
            return;
        }
        if ((this.f7192x & 1) == 1 && !isInEditMode()) {
            this.S++;
            long nanoTime = getNanoTime();
            long j11 = this.T;
            if (j11 != -1) {
                long j12 = nanoTime - j11;
                if (j12 > 200000000) {
                    this.U = ((int) ((this.S / (j12 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.S = 0;
                    this.T = nanoTime;
                }
            } else {
                this.T = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            String str = this.U + " fps " + androidx.constraintlayout.motion.widget.a.e(this, this.f7154e) + " -> ";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(androidx.constraintlayout.motion.widget.a.e(this, this.f7158g));
            sb2.append(" (progress: ");
            sb2.append(progress);
            sb2.append(" ) state=");
            int i11 = this.f7156f;
            sb2.append(i11 == -1 ? "undefined" : androidx.constraintlayout.motion.widget.a.e(this, i11));
            String string = sb2.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.f7192x > 1) {
            if (this.f7194y == null) {
                this.f7194y = new c();
            }
            this.f7194y.a(canvas, this.f7166k, this.f7146a.q(), this.f7192x);
        }
        ArrayList arrayList2 = this.Q;
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ((MotionHelper) it2.next()).onPostDraw(canvas);
            }
        }
    }

    public void enableTransition(int i11, boolean z10) {
        p.b transition = getTransition(i11);
        if (z10) {
            transition.F(true);
            return;
        }
        p pVar = this.f7146a;
        if (transition == pVar.f7425c) {
            for (p.b bVar : pVar.I(this.f7156f)) {
                if (bVar.C()) {
                    this.f7146a.f7425c = bVar;
                    break;
                }
            }
        }
        transition.F(false);
    }

    public void enableViewTransition(int i11, boolean z10) {
        p pVar = this.f7146a;
        if (pVar != null) {
            pVar.j(i11, z10);
        }
    }

    public void fireTrigger(int i11, boolean z10, float f11) {
        h hVar = this.f7186u;
        if (hVar != null) {
            hVar.onTransitionTrigger(this, i11, z10, f11);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.R;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((h) it.next()).onTransitionTrigger(this, i11, z10, f11);
            }
        }
    }

    public androidx.constraintlayout.widget.b getConstraintSet(int i11) {
        p pVar = this.f7146a;
        if (pVar == null) {
            return null;
        }
        return pVar.m(i11);
    }

    public int[] getConstraintSetIds() {
        p pVar = this.f7146a;
        if (pVar == null) {
            return null;
        }
        return pVar.o();
    }

    public int getCurrentState() {
        return this.f7156f;
    }

    public void getDebugMode(boolean z10) {
        this.f7192x = z10 ? 2 : 1;
        invalidate();
    }

    public ArrayList<p.b> getDefinedTransitions() {
        p pVar = this.f7146a;
        if (pVar == null) {
            return null;
        }
        return pVar.p();
    }

    public androidx.constraintlayout.motion.widget.b getDesignTool() {
        if (this.C == null) {
            this.C = new androidx.constraintlayout.motion.widget.b(this);
        }
        return this.C;
    }

    public int getEndState() {
        return this.f7158g;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f7174o;
    }

    public p getScene() {
        return this.f7146a;
    }

    public int getStartState() {
        return this.f7154e;
    }

    public float getTargetPosition() {
        return this.f7178q;
    }

    public p.b getTransition(int i11) {
        return this.f7146a.H(i11);
    }

    public Bundle getTransitionState() {
        if (this.f7169l0 == null) {
            this.f7169l0 = new g();
        }
        this.f7169l0.c();
        return this.f7169l0.b();
    }

    public long getTransitionTimeMs() {
        p pVar = this.f7146a;
        if (pVar != null) {
            this.f7170m = pVar.q() / 1000.0f;
        }
        return (long) (this.f7170m * 1000.0f);
    }

    public float getVelocity() {
        return this.f7152d;
    }

    public void getViewVelocity(View view, float f11, float f12, float[] fArr, int i11) {
        float interpolation;
        float fA = this.f7152d;
        float f13 = this.f7174o;
        if (this.f7148b != null) {
            float fSignum = Math.signum(this.f7178q - f13);
            float interpolation2 = this.f7148b.getInterpolation(this.f7174o + 1.0E-5f);
            interpolation = this.f7148b.getInterpolation(this.f7174o);
            fA = (fSignum * ((interpolation2 - interpolation) / 1.0E-5f)) / this.f7170m;
        } else {
            interpolation = f13;
        }
        Interpolator interpolator = this.f7148b;
        if (interpolator instanceof n) {
            fA = ((n) interpolator).a();
        }
        m mVar = (m) this.f7166k.get(view);
        if ((i11 & 1) == 0) {
            mVar.r(interpolation, view.getWidth(), view.getHeight(), f11, f12, fArr);
        } else {
            mVar.l(interpolation, f11, f12, fArr);
        }
        if (i11 < 2) {
            fArr[0] = fArr[0] * fA;
            fArr[1] = fArr[1] * fA;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.f7191w0;
    }

    public boolean isInRotation() {
        return this.f7177p0;
    }

    public boolean isInteractionEnabled() {
        return this.f7164j;
    }

    public boolean isViewTransitionEnabled(int i11) {
        p pVar = this.f7146a;
        if (pVar != null) {
            return pVar.L(i11);
        }
        return false;
    }

    public void jumpToState(int i11) {
        if (!isAttachedToWindow()) {
            this.f7156f = i11;
        }
        if (this.f7154e == i11) {
            setProgress(0.0f);
        } else if (this.f7158g == i11) {
            setProgress(1.0f);
        } else {
            setTransition(i11, i11);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i11) {
        p.b bVar;
        if (i11 == 0) {
            this.f7146a = null;
            return;
        }
        try {
            p pVar = new p(getContext(), this, i11);
            this.f7146a = pVar;
            if (this.f7156f == -1) {
                this.f7156f = pVar.G();
                this.f7154e = this.f7146a.G();
                this.f7158g = this.f7146a.r();
            }
            if (!isAttachedToWindow()) {
                this.f7146a = null;
                return;
            }
            try {
                Display display = getDisplay();
                this.f7187u0 = display == null ? 0 : display.getRotation();
                p pVar2 = this.f7146a;
                if (pVar2 != null) {
                    androidx.constraintlayout.widget.b bVarM = pVar2.m(this.f7156f);
                    this.f7146a.V(this);
                    ArrayList arrayList = this.Q;
                    if (arrayList != null) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((MotionHelper) it.next()).onFinishedMotionScene(this);
                        }
                    }
                    if (bVarM != null) {
                        bVarM.i(this);
                    }
                    this.f7154e = this.f7156f;
                }
                V();
                g gVar = this.f7169l0;
                if (gVar != null) {
                    if (this.f7191w0) {
                        post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MotionLayout.this.f7169l0.a();
                            }
                        });
                        return;
                    } else {
                        gVar.a();
                        return;
                    }
                }
                p pVar3 = this.f7146a;
                if (pVar3 == null || (bVar = pVar3.f7425c) == null || bVar.x() != 4) {
                    return;
                }
                transitionToEnd();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
            } catch (Exception e11) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e11);
            }
        } catch (Exception e12) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e12);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        p.b bVar;
        int i11;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.f7187u0 = display.getRotation();
        }
        p pVar = this.f7146a;
        if (pVar != null && (i11 = this.f7156f) != -1) {
            androidx.constraintlayout.widget.b bVarM = pVar.m(i11);
            this.f7146a.V(this);
            ArrayList arrayList = this.Q;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((MotionHelper) it.next()).onFinishedMotionScene(this);
                }
            }
            if (bVarM != null) {
                bVarM.i(this);
            }
            this.f7154e = this.f7156f;
        }
        V();
        g gVar = this.f7169l0;
        if (gVar != null) {
            if (this.f7191w0) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.f7169l0.a();
                    }
                });
                return;
            } else {
                gVar.a();
                return;
            }
        }
        p pVar2 = this.f7146a;
        if (pVar2 == null || (bVar = pVar2.f7425c) == null || bVar.x() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        q qVarB;
        int iQ;
        RectF rectFP;
        p pVar = this.f7146a;
        if (pVar != null && this.f7164j) {
            t tVar = pVar.f7441s;
            if (tVar != null) {
                tVar.j(motionEvent);
            }
            p.b bVar = this.f7146a.f7425c;
            if (bVar != null && bVar.C() && (qVarB = bVar.B()) != null && ((motionEvent.getAction() != 0 || (rectFP = qVarB.p(this, new RectF())) == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) && (iQ = qVarB.q()) != -1)) {
                View view = this.B0;
                if (view == null || view.getId() != iQ) {
                    this.B0 = findViewById(iQ);
                }
                View view2 = this.B0;
                if (view2 != null) {
                    this.A0.set(view2.getLeft(), this.B0.getTop(), this.B0.getRight(), this.B0.getBottom());
                    if (this.A0.contains(motionEvent.getX(), motionEvent.getY()) && !S(this.B0.getLeft(), this.B0.getTop(), this.B0, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        this.f7167k0 = true;
        try {
            if (this.f7146a == null) {
                super.onLayout(z10, i11, i12, i13, i14);
                return;
            }
            int i15 = i13 - i11;
            int i16 = i14 - i12;
            if (this.G != i15 || this.H != i16) {
                rebuildScene();
                M(true);
            }
            this.G = i15;
            this.H = i16;
            this.E = i15;
            this.F = i16;
        } finally {
            this.f7167k0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.f7146a == null) {
            super.onMeasure(i11, i12);
            return;
        }
        boolean z10 = false;
        boolean z11 = (this.f7160h == i11 && this.f7162i == i12) ? false : true;
        if (this.f7197z0) {
            this.f7197z0 = false;
            V();
            W();
            z11 = true;
        }
        if (this.mDirtyHierarchy) {
            z11 = true;
        }
        this.f7160h = i11;
        this.f7162i = i12;
        int iG = this.f7146a.G();
        int iR = this.f7146a.r();
        if ((z11 || this.f7195y0.f(iG, iR)) && this.f7154e != -1) {
            super.onMeasure(i11, i12);
            this.f7195y0.e(this.mLayoutWidget, this.f7146a.m(iG), this.f7146a.m(iR));
            this.f7195y0.h();
            this.f7195y0.i(iG, iR);
        } else {
            if (z11) {
                super.onMeasure(i11, i12);
            }
            z10 = true;
        }
        if (this.f7149b0 || z10) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int iY = this.mLayoutWidget.Y() + getPaddingLeft() + getPaddingRight();
            int iZ = this.mLayoutWidget.z() + paddingTop;
            int i13 = this.f7159g0;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                int i14 = this.f7151c0;
                iY = (int) (i14 + (this.f7163i0 * (this.f7155e0 - i14)));
                requestLayout();
            }
            int i15 = this.f7161h0;
            if (i15 == Integer.MIN_VALUE || i15 == 0) {
                int i16 = this.f7153d0;
                iZ = (int) (i16 + (this.f7163i0 * (this.f7157f0 - i16)));
                requestLayout();
            }
            setMeasuredDimension(iY, iZ);
        }
        N();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f11, float f12, boolean z10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f11, float f12) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull final View view, int i11, int i12, @NonNull int[] iArr, int i13) {
        p.b bVar;
        q qVarB;
        int iQ;
        p pVar = this.f7146a;
        if (pVar == null || (bVar = pVar.f7425c) == null || !bVar.C()) {
            return;
        }
        int i14 = -1;
        if (!bVar.C() || (qVarB = bVar.B()) == null || (iQ = qVarB.q()) == -1 || view.getId() == iQ) {
            if (pVar.x()) {
                q qVarB2 = bVar.B();
                if (qVarB2 != null && (qVarB2.e() & 4) != 0) {
                    i14 = i12;
                }
                float f11 = this.f7172n;
                if ((f11 == 1.0f || f11 == 0.0f) && view.canScrollVertically(i14)) {
                    return;
                }
            }
            if (bVar.B() != null && (bVar.B().e() & 1) != 0) {
                float fY = pVar.y(i11, i12);
                float f12 = this.f7174o;
                if ((f12 <= 0.0f && fY < 0.0f) || (f12 >= 1.0f && fY > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public void run() {
                            view.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f13 = this.f7172n;
            long nanoTime = getNanoTime();
            float f14 = i11;
            this.J = f14;
            float f15 = i12;
            this.K = f15;
            this.M = (float) ((nanoTime - this.L) * 1.0E-9d);
            this.L = nanoTime;
            pVar.R(f14, f15);
            if (f13 != this.f7172n) {
                iArr[0] = i11;
                iArr[1] = i12;
            }
            M(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.I = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View view, int i11, int i12, int i13, int i14, int i15) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        if (this.I || i11 != 0 || i12 != 0) {
            iArr[0] = iArr[0] + i13;
            iArr[1] = iArr[1] + i14;
        }
        this.I = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i11, int i12) {
        this.L = getNanoTime();
        this.M = 0.0f;
        this.J = 0.0f;
        this.K = 0.0f;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i11) {
        p pVar = this.f7146a;
        if (pVar != null) {
            pVar.Y(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i11, int i12) {
        p.b bVar;
        p pVar = this.f7146a;
        return (pVar == null || (bVar = pVar.f7425c) == null || bVar.B() == null || (this.f7146a.f7425c.B().e() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i11) {
        p pVar = this.f7146a;
        if (pVar != null) {
            float f11 = this.M;
            if (f11 == 0.0f) {
                return;
            }
            pVar.S(this.J / f11, this.K / f11);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        p pVar = this.f7146a;
        if (pVar == null || !this.f7164j || !pVar.d0()) {
            return super.onTouchEvent(motionEvent);
        }
        p.b bVar = this.f7146a.f7425c;
        if (bVar != null && !bVar.C()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f7146a.T(motionEvent, getCurrentState(), this);
        if (this.f7146a.f7425c.D(4)) {
            return this.f7146a.f7425c.B().r();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.R == null) {
                this.R = new CopyOnWriteArrayList();
            }
            this.R.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.O == null) {
                    this.O = new ArrayList();
                }
                this.O.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.P == null) {
                    this.P = new ArrayList();
                }
                this.P.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.Q == null) {
                    this.Q = new ArrayList();
                }
                this.Q.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.O;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.P;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int i11) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e("MotionLayout", "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.f7195y0.h();
        invalidate();
    }

    public boolean removeTransitionListener(h hVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.R;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(hVar);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        p pVar;
        p.b bVar;
        if (!this.f7149b0 && this.f7156f == -1 && (pVar = this.f7146a) != null && (bVar = pVar.f7425c) != null) {
            int iZ = bVar.z();
            if (iZ == 0) {
                return;
            }
            if (iZ == 2) {
                int childCount = getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    ((m) this.f7166k.get(getChildAt(i11))).z();
                }
                return;
            }
        }
        super.requestLayout();
    }

    public void rotateTo(int i11, int i12) {
        this.f7177p0 = true;
        this.f7183s0 = getWidth();
        this.f7185t0 = getHeight();
        int rotation = getDisplay().getRotation();
        this.f7179q0 = (rotation + 1) % 4 <= (this.f7187u0 + 1) % 4 ? 2 : 1;
        this.f7187u0 = rotation;
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            v0.e eVar = (v0.e) this.f7181r0.get(childAt);
            if (eVar == null) {
                eVar = new v0.e();
                this.f7181r0.put(childAt, eVar);
            }
            eVar.a(childAt);
        }
        this.f7154e = -1;
        this.f7158g = i11;
        this.f7146a.Z(-1, i11);
        this.f7195y0.e(this.mLayoutWidget, null, this.f7146a.m(this.f7158g));
        this.f7172n = 0.0f;
        this.f7174o = 0.0f;
        invalidate();
        transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.2
            @Override // java.lang.Runnable
            public void run() {
                MotionLayout.this.f7177p0 = false;
            }
        });
        if (i12 > 0) {
            this.f7170m = i12 / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int i11) {
        if (getCurrentState() == -1) {
            transitionToState(i11);
            return;
        }
        int[] iArr = this.f7173n0;
        if (iArr == null) {
            this.f7173n0 = new int[4];
        } else if (iArr.length <= this.f7175o0) {
            this.f7173n0 = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f7173n0;
        int i12 = this.f7175o0;
        this.f7175o0 = i12 + 1;
        iArr2[i12] = i11;
    }

    public void setDebugMode(int i11) {
        this.f7192x = i11;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.f7191w0 = z10;
    }

    public void setInteractionEnabled(boolean z10) {
        this.f7164j = z10;
    }

    public void setInterpolatedProgress(float f11) {
        if (this.f7146a != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolatorT = this.f7146a.t();
            if (interpolatorT != null) {
                setProgress(interpolatorT.getInterpolation(f11));
                return;
            }
        }
        setProgress(f11);
    }

    public void setOnHide(float f11) {
        ArrayList arrayList = this.P;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((MotionHelper) this.P.get(i11)).setProgress(f11);
            }
        }
    }

    public void setOnShow(float f11) {
        ArrayList arrayList = this.O;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((MotionHelper) this.O.get(i11)).setProgress(f11);
            }
        }
    }

    public void setProgress(float f11) {
        if (f11 < 0.0f || f11 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f7169l0 == null) {
                this.f7169l0 = new g();
            }
            this.f7169l0.e(f11);
            return;
        }
        if (f11 <= 0.0f) {
            if (this.f7174o == 1.0f && this.f7156f == this.f7158g) {
                setState(TransitionState.MOVING);
            }
            this.f7156f = this.f7154e;
            if (this.f7174o == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f11 >= 1.0f) {
            if (this.f7174o == 0.0f && this.f7156f == this.f7154e) {
                setState(TransitionState.MOVING);
            }
            this.f7156f = this.f7158g;
            if (this.f7174o == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f7156f = -1;
            setState(TransitionState.MOVING);
        }
        if (this.f7146a == null) {
            return;
        }
        this.f7180r = true;
        this.f7178q = f11;
        this.f7172n = f11;
        this.f7176p = -1L;
        this.f7168l = -1L;
        this.f7148b = null;
        this.f7182s = true;
        invalidate();
    }

    public void setProgress(float f11, float f12) {
        if (!isAttachedToWindow()) {
            if (this.f7169l0 == null) {
                this.f7169l0 = new g();
            }
            this.f7169l0.e(f11);
            this.f7169l0.h(f12);
            return;
        }
        setProgress(f11);
        setState(TransitionState.MOVING);
        this.f7152d = f12;
        if (f12 != 0.0f) {
            F(f12 > 0.0f ? 1.0f : 0.0f);
        } else {
            if (f11 == 0.0f || f11 == 1.0f) {
                return;
            }
            F(f11 > 0.5f ? 1.0f : 0.0f);
        }
    }

    public void setScene(p pVar) {
        this.f7146a = pVar;
        pVar.Y(isRtl());
        rebuildScene();
    }

    void setStartState(int i11) {
        if (isAttachedToWindow()) {
            this.f7156f = i11;
            return;
        }
        if (this.f7169l0 == null) {
            this.f7169l0 = new g();
        }
        this.f7169l0.f(i11);
        this.f7169l0.d(i11);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i11, int i12, int i13) {
        setState(TransitionState.SETUP);
        this.f7156f = i11;
        this.f7154e = -1;
        this.f7158g = -1;
        androidx.constraintlayout.widget.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.d(i11, i12, i13);
            return;
        }
        p pVar = this.f7146a;
        if (pVar != null) {
            pVar.m(i11).i(this);
        }
    }

    void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.f7156f == -1) {
            return;
        }
        TransitionState transitionState3 = this.f7193x0;
        this.f7193x0 = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            O();
        }
        int i11 = a.f7198a[transitionState3.ordinal()];
        if (i11 != 1 && i11 != 2) {
            if (i11 == 3 && transitionState == transitionState2) {
                P();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            O();
        }
        if (transitionState == transitionState2) {
            P();
        }
    }

    public void setTransition(int i11) {
        float f11;
        if (this.f7146a != null) {
            p.b transition = getTransition(i11);
            this.f7154e = transition.A();
            this.f7158g = transition.y();
            if (!isAttachedToWindow()) {
                if (this.f7169l0 == null) {
                    this.f7169l0 = new g();
                }
                this.f7169l0.f(this.f7154e);
                this.f7169l0.d(this.f7158g);
                return;
            }
            int i12 = this.f7156f;
            if (i12 == this.f7154e) {
                f11 = 0.0f;
            } else {
                f11 = i12 == this.f7158g ? 1.0f : Float.NaN;
            }
            this.f7146a.a0(transition);
            this.f7195y0.e(this.mLayoutWidget, this.f7146a.m(this.f7154e), this.f7146a.m(this.f7158g));
            rebuildScene();
            if (this.f7174o != f11) {
                if (f11 == 0.0f) {
                    L(true);
                    this.f7146a.m(this.f7154e).i(this);
                } else if (f11 == 1.0f) {
                    L(false);
                    this.f7146a.m(this.f7158g).i(this);
                }
            }
            this.f7174o = Float.isNaN(f11) ? 0.0f : f11;
            if (!Float.isNaN(f11)) {
                setProgress(f11);
                return;
            }
            Log.v("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + " transitionToStart ");
            transitionToStart();
        }
    }

    public void setTransition(int i11, int i12) {
        if (!isAttachedToWindow()) {
            if (this.f7169l0 == null) {
                this.f7169l0 = new g();
            }
            this.f7169l0.f(i11);
            this.f7169l0.d(i12);
            return;
        }
        p pVar = this.f7146a;
        if (pVar != null) {
            this.f7154e = i11;
            this.f7158g = i12;
            pVar.Z(i11, i12);
            this.f7195y0.e(this.mLayoutWidget, this.f7146a.m(i11), this.f7146a.m(i12));
            rebuildScene();
            this.f7174o = 0.0f;
            transitionToStart();
        }
    }

    protected void setTransition(p.b bVar) {
        this.f7146a.a0(bVar);
        setState(TransitionState.SETUP);
        if (this.f7156f == this.f7146a.r()) {
            this.f7174o = 1.0f;
            this.f7172n = 1.0f;
            this.f7178q = 1.0f;
        } else {
            this.f7174o = 0.0f;
            this.f7172n = 0.0f;
            this.f7178q = 0.0f;
        }
        this.f7176p = bVar.D(1) ? -1L : getNanoTime();
        int iG = this.f7146a.G();
        int iR = this.f7146a.r();
        if (iG == this.f7154e && iR == this.f7158g) {
            return;
        }
        this.f7154e = iG;
        this.f7158g = iR;
        this.f7146a.Z(iG, iR);
        this.f7195y0.e(this.mLayoutWidget, this.f7146a.m(this.f7154e), this.f7146a.m(this.f7158g));
        this.f7195y0.i(this.f7154e, this.f7158g);
        this.f7195y0.h();
        rebuildScene();
    }

    public void setTransitionDuration(int i11) {
        p pVar = this.f7146a;
        if (pVar == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            pVar.X(i11);
        }
    }

    public void setTransitionListener(h hVar) {
        this.f7186u = hVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f7169l0 == null) {
            this.f7169l0 = new g();
        }
        this.f7169l0.g(bundle);
        if (isAttachedToWindow()) {
            this.f7169l0.a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return androidx.constraintlayout.motion.widget.a.c(context, this.f7154e) + "->" + androidx.constraintlayout.motion.widget.a.c(context, this.f7158g) + " (pos:" + this.f7174o + " Dpos/Dt:" + this.f7152d;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c0  */
    public void touchAnimateTo(int i11, float f11, float f12) {
        if (this.f7146a == null || this.f7174o == f11) {
            return;
        }
        this.f7196z = true;
        this.f7168l = getNanoTime();
        this.f7170m = this.f7146a.q() / 1000.0f;
        this.f7178q = f11;
        this.f7182s = true;
        if (i11 == 0 || i11 == 1 || i11 == 2) {
            if (i11 != 1 || i11 == 7) {
                f11 = 0.0f;
            } else if (i11 == 2 || i11 == 6) {
                f11 = 1.0f;
            }
            if (this.f7146a.l() == 0) {
                this.A.b(this.f7174o, f11, f12, this.f7170m, this.f7146a.v(), this.f7146a.w());
            } else {
                this.A.d(this.f7174o, f11, f12, this.f7146a.C(), this.f7146a.D(), this.f7146a.B(), this.f7146a.E(), this.f7146a.A());
            }
            int i12 = this.f7156f;
            this.f7178q = f11;
            this.f7156f = i12;
            this.f7148b = this.A;
        } else if (i11 == 4) {
            this.B.b(f12, this.f7174o, this.f7146a.v());
            this.f7148b = this.B;
        } else if (i11 != 5) {
            if (i11 == 6 || i11 == 7) {
                if (i11 != 1) {
                    f11 = 0.0f;
                } else {
                    f11 = 0.0f;
                }
                if (this.f7146a.l() == 0) {
                    this.A.b(this.f7174o, f11, f12, this.f7170m, this.f7146a.v(), this.f7146a.w());
                } else {
                    this.A.d(this.f7174o, f11, f12, this.f7146a.C(), this.f7146a.D(), this.f7146a.B(), this.f7146a.E(), this.f7146a.A());
                }
                int i13 = this.f7156f;
                this.f7178q = f11;
                this.f7156f = i13;
                this.f7148b = this.A;
            }
        } else if (Z(f12, this.f7174o, this.f7146a.v())) {
            this.B.b(f12, this.f7174o, this.f7146a.v());
            this.f7148b = this.B;
        } else {
            this.A.b(this.f7174o, f11, f12, this.f7170m, this.f7146a.v(), this.f7146a.w());
            this.f7152d = 0.0f;
            int i14 = this.f7156f;
            this.f7178q = f11;
            this.f7156f = i14;
            this.f7148b = this.A;
        }
        this.f7180r = false;
        this.f7168l = getNanoTime();
        invalidate();
    }

    public void touchSpringTo(float f11, float f12) {
        if (this.f7146a == null || this.f7174o == f11) {
            return;
        }
        this.f7196z = true;
        this.f7168l = getNanoTime();
        this.f7170m = this.f7146a.q() / 1000.0f;
        this.f7178q = f11;
        this.f7182s = true;
        this.A.d(this.f7174o, f11, f12, this.f7146a.C(), this.f7146a.D(), this.f7146a.B(), this.f7146a.E(), this.f7146a.A());
        int i11 = this.f7156f;
        this.f7178q = f11;
        this.f7156f = i11;
        this.f7148b = this.A;
        this.f7180r = false;
        this.f7168l = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        F(1.0f);
        this.f7171m0 = null;
    }

    public void transitionToEnd(Runnable runnable) {
        F(1.0f);
        this.f7171m0 = runnable;
    }

    public void transitionToStart() {
        F(0.0f);
    }

    public void transitionToState(int i11) {
        if (isAttachedToWindow()) {
            transitionToState(i11, -1, -1);
            return;
        }
        if (this.f7169l0 == null) {
            this.f7169l0 = new g();
        }
        this.f7169l0.d(i11);
    }

    public void transitionToState(int i11, int i12) {
        if (isAttachedToWindow()) {
            transitionToState(i11, -1, -1, i12);
            return;
        }
        if (this.f7169l0 == null) {
            this.f7169l0 = new g();
        }
        this.f7169l0.d(i11);
    }

    public void transitionToState(int i11, int i12, int i13) {
        transitionToState(i11, i12, i13, -1);
    }

    public void transitionToState(int i11, int i12, int i13, int i14) {
        androidx.constraintlayout.widget.e eVar;
        int iA;
        p pVar = this.f7146a;
        if (pVar != null && (eVar = pVar.f7424b) != null && (iA = eVar.a(this.f7156f, i11, i12, i13)) != -1) {
            i11 = iA;
        }
        int i15 = this.f7156f;
        if (i15 == i11) {
            return;
        }
        if (this.f7154e == i11) {
            F(0.0f);
            if (i14 > 0) {
                this.f7170m = i14 / 1000.0f;
                return;
            }
            return;
        }
        if (this.f7158g == i11) {
            F(1.0f);
            if (i14 > 0) {
                this.f7170m = i14 / 1000.0f;
                return;
            }
            return;
        }
        this.f7158g = i11;
        if (i15 != -1) {
            setTransition(i15, i11);
            F(1.0f);
            this.f7174o = 0.0f;
            transitionToEnd();
            if (i14 > 0) {
                this.f7170m = i14 / 1000.0f;
                return;
            }
            return;
        }
        this.f7196z = false;
        this.f7178q = 1.0f;
        this.f7172n = 0.0f;
        this.f7174o = 0.0f;
        this.f7176p = getNanoTime();
        this.f7168l = getNanoTime();
        this.f7180r = false;
        this.f7148b = null;
        if (i14 == -1) {
            this.f7170m = this.f7146a.q() / 1000.0f;
        }
        this.f7154e = -1;
        this.f7146a.Z(-1, this.f7158g);
        SparseArray sparseArray = new SparseArray();
        if (i14 == 0) {
            this.f7170m = this.f7146a.q() / 1000.0f;
        } else if (i14 > 0) {
            this.f7170m = i14 / 1000.0f;
        }
        int childCount = getChildCount();
        this.f7166k.clear();
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            this.f7166k.put(childAt, new m(childAt));
            sparseArray.put(childAt.getId(), (m) this.f7166k.get(childAt));
        }
        this.f7182s = true;
        this.f7195y0.e(this.mLayoutWidget, null, this.f7146a.m(i11));
        rebuildScene();
        this.f7195y0.a();
        K();
        int width = getWidth();
        int height = getHeight();
        if (this.Q != null) {
            for (int i17 = 0; i17 < childCount; i17++) {
                m mVar = (m) this.f7166k.get(getChildAt(i17));
                if (mVar != null) {
                    this.f7146a.u(mVar);
                }
            }
            Iterator it = this.Q.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).onPreSetup(this, this.f7166k);
            }
            for (int i18 = 0; i18 < childCount; i18++) {
                m mVar2 = (m) this.f7166k.get(getChildAt(i18));
                if (mVar2 != null) {
                    mVar2.I(width, height, this.f7170m, getNanoTime());
                }
            }
        } else {
            for (int i19 = 0; i19 < childCount; i19++) {
                m mVar3 = (m) this.f7166k.get(getChildAt(i19));
                if (mVar3 != null) {
                    this.f7146a.u(mVar3);
                    mVar3.I(width, height, this.f7170m, getNanoTime());
                }
            }
        }
        float F = this.f7146a.F();
        if (F != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i20 = 0; i20 < childCount; i20++) {
                m mVar4 = (m) this.f7166k.get(getChildAt(i20));
                float fO = mVar4.o() + mVar4.n();
                fMin = Math.min(fMin, fO);
                fMax = Math.max(fMax, fO);
            }
            for (int i21 = 0; i21 < childCount; i21++) {
                m mVar5 = (m) this.f7166k.get(getChildAt(i21));
                float fN = mVar5.n();
                float fO2 = mVar5.o();
                mVar5.f7390o = 1.0f / (1.0f - F);
                mVar5.f7389n = F - ((((fN + fO2) - fMin) * F) / (fMax - fMin));
            }
        }
        this.f7172n = 0.0f;
        this.f7174o = 0.0f;
        this.f7182s = true;
        invalidate();
    }

    public void updateState() {
        this.f7195y0.e(this.mLayoutWidget, this.f7146a.m(this.f7154e), this.f7146a.m(this.f7158g));
        rebuildScene();
    }

    public void updateState(int i11, androidx.constraintlayout.widget.b bVar) {
        p pVar = this.f7146a;
        if (pVar != null) {
            pVar.W(i11, bVar);
        }
        updateState();
        if (this.f7156f == i11) {
            bVar.i(this);
        }
    }

    public void updateStateAnimate(int i11, androidx.constraintlayout.widget.b bVar, int i12) {
        if (this.f7146a != null && this.f7156f == i11) {
            updateState(R$id.view_transition, getConstraintSet(i11));
            setState(R$id.view_transition, -1, -1);
            updateState(i11, bVar);
            p.b bVar2 = new p.b(-1, this.f7146a, R$id.view_transition, i11);
            bVar2.E(i12);
            setTransition(bVar2);
            transitionToEnd();
        }
    }

    public void viewTransition(int i11, View... viewArr) {
        p pVar = this.f7146a;
        if (pVar != null) {
            pVar.e0(i11, viewArr);
        } else {
            Log.e("MotionLayout", " no motionScene");
        }
    }
}

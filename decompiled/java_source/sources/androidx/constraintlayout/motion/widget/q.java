package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class q {
    private static final float[][] G = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] H = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f7483r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7484s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final MotionLayout f7485t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7466a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7467b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7468c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7469d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7470e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7471f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f7472g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f7473h = 0.5f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f7474i = 0.5f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f7475j = 0.5f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f7476k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f7477l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7478m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7479n = 1.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f7480o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f7481p = new float[2];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int[] f7482q = new int[2];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f7486u = 4.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f7487v = 1.2f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f7488w = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f7489x = 1.0f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f7490y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f7491z = 10.0f;
    private float A = 10.0f;
    private float B = 1.0f;
    private float C = Float.NaN;
    private float D = Float.NaN;
    private int E = 0;
    private int F = 0;

    class a implements View.OnTouchListener {
        a(q qVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    class b implements NestedScrollView.e {
        b(q qVar) {
        }

        @Override // androidx.core.widget.NestedScrollView.e
        public void a(NestedScrollView nestedScrollView, int i11, int i12, int i13, int i14) {
        }
    }

    q(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f7485t = motionLayout;
        c(context, Xml.asAttributeSet(xmlPullParser));
    }

    private void b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArray.getIndex(i11);
            if (index == R$styleable.OnSwipe_touchAnchorId) {
                this.f7469d = typedArray.getResourceId(index, this.f7469d);
            } else if (index == R$styleable.OnSwipe_touchAnchorSide) {
                int i12 = typedArray.getInt(index, this.f7466a);
                this.f7466a = i12;
                float[] fArr = G[i12];
                this.f7473h = fArr[0];
                this.f7472g = fArr[1];
            } else if (index == R$styleable.OnSwipe_dragDirection) {
                int i13 = typedArray.getInt(index, this.f7467b);
                this.f7467b = i13;
                float[][] fArr2 = H;
                if (i13 < fArr2.length) {
                    float[] fArr3 = fArr2[i13];
                    this.f7478m = fArr3[0];
                    this.f7479n = fArr3[1];
                } else {
                    this.f7479n = Float.NaN;
                    this.f7478m = Float.NaN;
                    this.f7477l = true;
                }
            } else if (index == R$styleable.OnSwipe_maxVelocity) {
                this.f7486u = typedArray.getFloat(index, this.f7486u);
            } else if (index == R$styleable.OnSwipe_maxAcceleration) {
                this.f7487v = typedArray.getFloat(index, this.f7487v);
            } else if (index == R$styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f7488w = typedArray.getBoolean(index, this.f7488w);
            } else if (index == R$styleable.OnSwipe_dragScale) {
                this.f7489x = typedArray.getFloat(index, this.f7489x);
            } else if (index == R$styleable.OnSwipe_dragThreshold) {
                this.f7491z = typedArray.getFloat(index, this.f7491z);
            } else if (index == R$styleable.OnSwipe_touchRegionId) {
                this.f7470e = typedArray.getResourceId(index, this.f7470e);
            } else if (index == R$styleable.OnSwipe_onTouchUp) {
                this.f7468c = typedArray.getInt(index, this.f7468c);
            } else if (index == R$styleable.OnSwipe_nestedScrollFlags) {
                this.f7490y = typedArray.getInteger(index, 0);
            } else if (index == R$styleable.OnSwipe_limitBoundsTo) {
                this.f7471f = typedArray.getResourceId(index, 0);
            } else if (index == R$styleable.OnSwipe_rotationCenterId) {
                this.f7476k = typedArray.getResourceId(index, this.f7476k);
            } else if (index == R$styleable.OnSwipe_springDamping) {
                this.A = typedArray.getFloat(index, this.A);
            } else if (index == R$styleable.OnSwipe_springMass) {
                this.B = typedArray.getFloat(index, this.B);
            } else if (index == R$styleable.OnSwipe_springStiffness) {
                this.C = typedArray.getFloat(index, this.C);
            } else if (index == R$styleable.OnSwipe_springStopThreshold) {
                this.D = typedArray.getFloat(index, this.D);
            } else if (index == R$styleable.OnSwipe_springBoundary) {
                this.E = typedArray.getInt(index, this.E);
            } else if (index == R$styleable.OnSwipe_autoCompleteMode) {
                this.F = typedArray.getInt(index, this.F);
            }
        }
    }

    private void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.OnSwipe);
        b(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    void A() {
        View viewFindViewById;
        int i11 = this.f7469d;
        if (i11 != -1) {
            viewFindViewById = this.f7485t.findViewById(i11);
            if (viewFindViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + androidx.constraintlayout.motion.widget.a.c(this.f7485t.getContext(), this.f7469d));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new a(this));
            nestedScrollView.setOnScrollChangeListener(new b(this));
        }
    }

    float a(float f11, float f12) {
        return (f11 * this.f7478m) + (f12 * this.f7479n);
    }

    public int d() {
        return this.F;
    }

    public int e() {
        return this.f7490y;
    }

    RectF f(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i11 = this.f7471f;
        if (i11 == -1 || (viewFindViewById = viewGroup.findViewById(i11)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    float g() {
        return this.f7487v;
    }

    public float h() {
        return this.f7486u;
    }

    boolean i() {
        return this.f7488w;
    }

    float j(float f11, float f12) {
        this.f7485t.Q(this.f7469d, this.f7485t.getProgress(), this.f7473h, this.f7472g, this.f7481p);
        float f13 = this.f7478m;
        if (f13 != 0.0f) {
            float[] fArr = this.f7481p;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (f11 * f13) / fArr[0];
        }
        float[] fArr2 = this.f7481p;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (f12 * this.f7479n) / fArr2[1];
    }

    public int k() {
        return this.E;
    }

    public float l() {
        return this.A;
    }

    public float m() {
        return this.B;
    }

    public float n() {
        return this.C;
    }

    public float o() {
        return this.D;
    }

    RectF p(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i11 = this.f7470e;
        if (i11 == -1 || (viewFindViewById = viewGroup.findViewById(i11)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    int q() {
        return this.f7470e;
    }

    boolean r() {
        return this.f7480o;
    }

    void s(MotionEvent motionEvent, MotionLayout.e eVar, int i11, p pVar) {
        int i12;
        if (this.f7477l) {
            t(motionEvent, eVar, i11, pVar);
            return;
        }
        eVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f7483r = motionEvent.getRawX();
            this.f7484s = motionEvent.getRawY();
            this.f7480o = false;
            return;
        }
        if (action == 1) {
            this.f7480o = false;
            eVar.d(1000);
            float fC = eVar.c();
            float fB = eVar.b();
            float progress = this.f7485t.getProgress();
            int i13 = this.f7469d;
            if (i13 != -1) {
                this.f7485t.Q(i13, progress, this.f7473h, this.f7472g, this.f7481p);
            } else {
                float fMin = Math.min(this.f7485t.getWidth(), this.f7485t.getHeight());
                float[] fArr = this.f7481p;
                fArr[1] = this.f7479n * fMin;
                fArr[0] = fMin * this.f7478m;
            }
            float f11 = this.f7478m;
            float[] fArr2 = this.f7481p;
            float fAbs = f11 != 0.0f ? fC / fArr2[0] : fB / fArr2[1];
            float f12 = !Float.isNaN(fAbs) ? (fAbs / 3.0f) + progress : progress;
            if (f12 == 0.0f || f12 == 1.0f || (i12 = this.f7468c) == 3) {
                if (0.0f >= f12 || 1.0f <= f12) {
                    this.f7485t.setState(MotionLayout.TransitionState.FINISHED);
                    return;
                }
                return;
            }
            float f13 = ((double) f12) < 0.5d ? 0.0f : 1.0f;
            if (i12 == 6) {
                if (progress + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f13 = 1.0f;
            }
            if (this.f7468c == 7) {
                if (progress + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f13 = 0.0f;
            }
            this.f7485t.touchAnimateTo(this.f7468c, f13, fAbs);
            if (0.0f >= progress || 1.0f <= progress) {
                this.f7485t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float rawY = motionEvent.getRawY() - this.f7484s;
        float rawX = motionEvent.getRawX() - this.f7483r;
        if (Math.abs((this.f7478m * rawX) + (this.f7479n * rawY)) > this.f7491z || this.f7480o) {
            float progress2 = this.f7485t.getProgress();
            if (!this.f7480o) {
                this.f7480o = true;
                this.f7485t.setProgress(progress2);
            }
            int i14 = this.f7469d;
            if (i14 != -1) {
                this.f7485t.Q(i14, progress2, this.f7473h, this.f7472g, this.f7481p);
            } else {
                float fMin2 = Math.min(this.f7485t.getWidth(), this.f7485t.getHeight());
                float[] fArr3 = this.f7481p;
                fArr3[1] = this.f7479n * fMin2;
                fArr3[0] = fMin2 * this.f7478m;
            }
            float f14 = this.f7478m;
            float[] fArr4 = this.f7481p;
            if (Math.abs(((f14 * fArr4[0]) + (this.f7479n * fArr4[1])) * this.f7489x) < 0.01d) {
                float[] fArr5 = this.f7481p;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float fMax = Math.max(Math.min(progress2 + (this.f7478m != 0.0f ? rawX / this.f7481p[0] : rawY / this.f7481p[1]), 1.0f), 0.0f);
            if (this.f7468c == 6) {
                fMax = Math.max(fMax, 0.01f);
            }
            if (this.f7468c == 7) {
                fMax = Math.min(fMax, 0.99f);
            }
            float progress3 = this.f7485t.getProgress();
            if (fMax != progress3) {
                if (progress3 == 0.0f || progress3 == 1.0f) {
                    this.f7485t.L(progress3 == 0.0f);
                }
                this.f7485t.setProgress(fMax);
                eVar.d(1000);
                this.f7485t.f7152d = this.f7478m != 0.0f ? eVar.c() / this.f7481p[0] : eVar.b() / this.f7481p[1];
            } else {
                this.f7485t.f7152d = 0.0f;
            }
            this.f7483r = motionEvent.getRawX();
            this.f7484s = motionEvent.getRawY();
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0270  */
    /* JADX WARN: Code duplicated, block: B:58:0x0294  */
    /* JADX WARN: Code duplicated, block: B:61:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:63:0x02be  */
    void t(MotionEvent motionEvent, MotionLayout.e eVar, int i11, p pVar) {
        float left;
        float f11;
        int top;
        int bottom;
        int i12;
        float degrees;
        float f12;
        int i13;
        eVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f7483r = motionEvent.getRawX();
            this.f7484s = motionEvent.getRawY();
            this.f7480o = false;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            motionEvent.getRawY();
            motionEvent.getRawX();
            float width = this.f7485t.getWidth() / 2.0f;
            float height = this.f7485t.getHeight() / 2.0f;
            int i14 = this.f7476k;
            if (i14 != -1) {
                View viewFindViewById = this.f7485t.findViewById(i14);
                this.f7485t.getLocationOnScreen(this.f7482q);
                float left2 = this.f7482q[0] + ((viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f);
                height = ((viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f) + this.f7482q[1];
                width = left2;
            } else {
                int i15 = this.f7469d;
                if (i15 != -1) {
                    View viewFindViewById2 = this.f7485t.findViewById(this.f7485t.R(i15).h());
                    if (viewFindViewById2 == null) {
                        Log.e("TouchResponse", "could not find view to animate to");
                    } else {
                        this.f7485t.getLocationOnScreen(this.f7482q);
                        width = this.f7482q[0] + ((viewFindViewById2.getLeft() + viewFindViewById2.getRight()) / 2.0f);
                        height = this.f7482q[1] + ((viewFindViewById2.getTop() + viewFindViewById2.getBottom()) / 2.0f);
                    }
                }
            }
            float rawX = motionEvent.getRawX() - width;
            float rawY = motionEvent.getRawY() - height;
            double dAtan2 = Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width);
            float fAtan2 = (float) (((dAtan2 - Math.atan2(this.f7484s - height, this.f7483r - width)) * 180.0d) / 3.141592653589793d);
            if (fAtan2 > 330.0f) {
                fAtan2 -= 360.0f;
            } else if (fAtan2 < -330.0f) {
                fAtan2 += 360.0f;
            }
            if (Math.abs(fAtan2) > 0.01d || this.f7480o) {
                float progress = this.f7485t.getProgress();
                if (!this.f7480o) {
                    this.f7480o = true;
                    this.f7485t.setProgress(progress);
                }
                int i16 = this.f7469d;
                if (i16 != -1) {
                    this.f7485t.Q(i16, progress, this.f7473h, this.f7472g, this.f7481p);
                    float[] fArr = this.f7481p;
                    fArr[1] = (float) Math.toDegrees(fArr[1]);
                } else {
                    this.f7481p[1] = 360.0f;
                }
                float fMax = Math.max(Math.min(progress + ((fAtan2 * this.f7489x) / this.f7481p[1]), 1.0f), 0.0f);
                float progress2 = this.f7485t.getProgress();
                if (fMax != progress2) {
                    if (progress2 == 0.0f || progress2 == 1.0f) {
                        this.f7485t.L(progress2 == 0.0f);
                    }
                    this.f7485t.setProgress(fMax);
                    eVar.d(1000);
                    float fC = eVar.c();
                    double dB = eVar.b();
                    double d11 = fC;
                    this.f7485t.f7152d = (float) Math.toDegrees((float) ((Math.hypot(dB, d11) * Math.sin(Math.atan2(dB, d11) - dAtan2)) / Math.hypot(rawX, rawY)));
                } else {
                    this.f7485t.f7152d = 0.0f;
                }
                this.f7483r = motionEvent.getRawX();
                this.f7484s = motionEvent.getRawY();
                return;
            }
            return;
        }
        this.f7480o = false;
        eVar.d(16);
        float fC2 = eVar.c();
        float fB = eVar.b();
        float progress3 = this.f7485t.getProgress();
        float width2 = this.f7485t.getWidth() / 2.0f;
        float height2 = this.f7485t.getHeight() / 2.0f;
        int i17 = this.f7476k;
        if (i17 == -1) {
            int i18 = this.f7469d;
            if (i18 != -1) {
                View viewFindViewById3 = this.f7485t.findViewById(this.f7485t.R(i18).h());
                this.f7485t.getLocationOnScreen(this.f7482q);
                left = this.f7482q[0] + ((viewFindViewById3.getLeft() + viewFindViewById3.getRight()) / 2.0f);
                f11 = this.f7482q[1];
                top = viewFindViewById3.getTop();
                bottom = viewFindViewById3.getBottom();
            }
            float rawX2 = motionEvent.getRawX() - width2;
            float rawY2 = motionEvent.getRawY() - height2;
            double degrees2 = Math.toDegrees(Math.atan2(rawY2, rawX2));
            i12 = this.f7469d;
            if (i12 != -1) {
                this.f7485t.Q(i12, progress3, this.f7473h, this.f7472g, this.f7481p);
                float[] fArr2 = this.f7481p;
                fArr2[1] = (float) Math.toDegrees(fArr2[1]);
            } else {
                this.f7481p[1] = 360.0f;
            }
            degrees = ((float) (Math.toDegrees(Math.atan2(fB + rawY2, fC2 + rawX2)) - degrees2)) * 62.5f;
            if (Float.isNaN(degrees)) {
                f12 = progress3;
            } else {
                f12 = (((degrees * 3.0f) * this.f7489x) / this.f7481p[1]) + progress3;
            }
            if (f12 != 0.0f || f12 == 1.0f || (i13 = this.f7468c) == 3) {
                if (0.0f < f12 || 1.0f <= f12) {
                    this.f7485t.setState(MotionLayout.TransitionState.FINISHED);
                }
                return;
            }
            float fAbs = (degrees * this.f7489x) / this.f7481p[1];
            float f13 = ((double) f12) < 0.5d ? 0.0f : 1.0f;
            if (i13 == 6) {
                if (progress3 + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f13 = 1.0f;
            }
            if (this.f7468c == 7) {
                if (progress3 + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f13 = 0.0f;
            }
            this.f7485t.touchAnimateTo(this.f7468c, f13, fAbs * 3.0f);
            if (0.0f >= progress3 || 1.0f <= progress3) {
                this.f7485t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        View viewFindViewById4 = this.f7485t.findViewById(i17);
        this.f7485t.getLocationOnScreen(this.f7482q);
        left = this.f7482q[0] + ((viewFindViewById4.getLeft() + viewFindViewById4.getRight()) / 2.0f);
        f11 = this.f7482q[1];
        top = viewFindViewById4.getTop();
        bottom = viewFindViewById4.getBottom();
        height2 = f11 + ((top + bottom) / 2.0f);
        width2 = left;
        float rawX3 = motionEvent.getRawX() - width2;
        float rawY3 = motionEvent.getRawY() - height2;
        double degrees3 = Math.toDegrees(Math.atan2(rawY3, rawX3));
        i12 = this.f7469d;
        if (i12 != -1) {
            this.f7485t.Q(i12, progress3, this.f7473h, this.f7472g, this.f7481p);
            float[] fArr3 = this.f7481p;
            fArr3[1] = (float) Math.toDegrees(fArr3[1]);
        } else {
            this.f7481p[1] = 360.0f;
        }
        degrees = ((float) (Math.toDegrees(Math.atan2(fB + rawY3, fC2 + rawX3)) - degrees3)) * 62.5f;
        if (Float.isNaN(degrees)) {
            f12 = (((degrees * 3.0f) * this.f7489x) / this.f7481p[1]) + progress3;
        } else {
            f12 = progress3;
        }
        if (f12 != 0.0f) {
        }
        if (0.0f < f12) {
        }
        this.f7485t.setState(MotionLayout.TransitionState.FINISHED);
    }

    public String toString() {
        if (Float.isNaN(this.f7478m)) {
            return "rotation";
        }
        return this.f7478m + " , " + this.f7479n;
    }

    void u(float f11, float f12) {
        float progress = this.f7485t.getProgress();
        if (!this.f7480o) {
            this.f7480o = true;
            this.f7485t.setProgress(progress);
        }
        this.f7485t.Q(this.f7469d, progress, this.f7473h, this.f7472g, this.f7481p);
        float f13 = this.f7478m;
        float[] fArr = this.f7481p;
        if (Math.abs((f13 * fArr[0]) + (this.f7479n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f7481p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f14 = this.f7478m;
        float fMax = Math.max(Math.min(progress + (f14 != 0.0f ? (f11 * f14) / this.f7481p[0] : (f12 * this.f7479n) / this.f7481p[1]), 1.0f), 0.0f);
        if (fMax != this.f7485t.getProgress()) {
            this.f7485t.setProgress(fMax);
        }
    }

    void v(float f11, float f12) {
        this.f7480o = false;
        float progress = this.f7485t.getProgress();
        this.f7485t.Q(this.f7469d, progress, this.f7473h, this.f7472g, this.f7481p);
        float f13 = this.f7478m;
        float[] fArr = this.f7481p;
        float f14 = f13 != 0.0f ? (f11 * f13) / fArr[0] : (f12 * this.f7479n) / fArr[1];
        if (!Float.isNaN(f14)) {
            progress += f14 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z10 = progress != 1.0f;
            int i11 = this.f7468c;
            if ((i11 != 3) && z10) {
                this.f7485t.touchAnimateTo(i11, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f14);
            }
        }
    }

    void w(float f11, float f12) {
        this.f7483r = f11;
        this.f7484s = f12;
    }

    public void x(boolean z10) {
        if (z10) {
            float[][] fArr = H;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = G;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = H;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = G;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[] fArr5 = G[this.f7466a];
        this.f7473h = fArr5[0];
        this.f7472g = fArr5[1];
        int i11 = this.f7467b;
        float[][] fArr6 = H;
        if (i11 >= fArr6.length) {
            return;
        }
        float[] fArr7 = fArr6[i11];
        this.f7478m = fArr7[0];
        this.f7479n = fArr7[1];
    }

    public void y(int i11) {
        this.f7468c = i11;
    }

    void z(float f11, float f12) {
        this.f7483r = f11;
        this.f7484s = f12;
        this.f7480o = false;
    }
}

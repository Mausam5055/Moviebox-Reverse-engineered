package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.widget.k;

/* JADX INFO: loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent3, NestedScrollingParent2, NestedScrollingChild3, NestedScrollingChild2, NestedScrollingParent, NestedScrollingChild {
    public static final int DEFAULT = 1;
    public static final int DEFAULT_SLINGSHOT_DISTANCE = -1;
    public static final int LARGE = 0;
    private static final String P = "SwipeRefreshLayout";
    private static final int[] Q = {R.attr.enabled};
    int A;
    int B;
    androidx.swiperefreshlayout.widget.b C;
    private Animation D;
    private Animation E;
    private Animation F;
    private Animation G;
    private Animation H;
    boolean I;
    private int J;
    boolean K;
    private boolean L;
    private Animation.AnimationListener M;
    private final Animation N;
    private final Animation O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f14908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f14909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f14910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f14911d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f14912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f14913f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final NestedScrollingParentHelper f14914g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final NestedScrollingChildHelper f14915h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f14916i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f14917j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f14918k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f14919l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f14920m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f14921n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f14922o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f14923p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f14924q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f14925r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f14926s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f14927t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final DecelerateInterpolator f14928u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    androidx.swiperefreshlayout.widget.a f14929v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f14930w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f14931x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f14932y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected int f14933z;

    /* JADX INFO: loaded from: classes2.dex */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f14934a;

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

        SavedState(Parcel parcel) {
            super(parcel);
            this.f14934a = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable, boolean z10) {
            super(parcelable);
            this.f14934a = z10;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeByte(this.f14934a ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            j jVar;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f14910c) {
                swipeRefreshLayout.j();
                return;
            }
            swipeRefreshLayout.C.setAlpha(255);
            SwipeRefreshLayout.this.C.start();
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            if (swipeRefreshLayout2.I && (jVar = swipeRefreshLayout2.f14909b) != null) {
                jVar.a();
            }
            SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
            swipeRefreshLayout3.f14921n = swipeRefreshLayout3.f14929v.getTop();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class b extends Animation {
        b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f11, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class c extends Animation {
        c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f11, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class d extends Animation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f14939b;

        d(int i11, int i12) {
            this.f14938a = i11;
            this.f14939b = i12;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f11, Transformation transformation) {
            androidx.swiperefreshlayout.widget.b bVar = SwipeRefreshLayout.this.C;
            int i11 = this.f14938a;
            bVar.setAlpha((int) (i11 + ((this.f14939b - i11) * f11)));
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f14926s) {
                return;
            }
            swipeRefreshLayout.p(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class f extends Animation {
        f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f11, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int iAbs = !swipeRefreshLayout.K ? swipeRefreshLayout.A - Math.abs(swipeRefreshLayout.f14933z) : swipeRefreshLayout.A;
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            int i11 = swipeRefreshLayout2.f14931x;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i11 + ((int) ((iAbs - i11) * f11))) - swipeRefreshLayout2.f14929v.getTop());
            SwipeRefreshLayout.this.C.e(1.0f - f11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class g extends Animation {
        g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f11, Transformation transformation) {
            SwipeRefreshLayout.this.h(f11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class h extends Animation {
        h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f11, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f12 = swipeRefreshLayout.f14932y;
            swipeRefreshLayout.setAnimationProgress(f12 + ((-f12) * f11));
            SwipeRefreshLayout.this.h(f11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface i {
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface j {
        void a();
    }

    public SwipeRefreshLayout(@NonNull Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14910c = false;
        this.f14912e = -1.0f;
        this.f14916i = new int[2];
        this.f14917j = new int[2];
        this.f14918k = new int[2];
        this.f14925r = -1;
        this.f14930w = -1;
        this.M = new a();
        this.N = new f();
        this.O = new g();
        this.f14911d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f14920m = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f14928u = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.J = (int) (displayMetrics.density * 40.0f);
        c();
        setChildrenDrawingOrderEnabled(true);
        int i11 = (int) (displayMetrics.density * 64.0f);
        this.A = i11;
        this.f14912e = i11;
        this.f14914g = new NestedScrollingParentHelper(this);
        this.f14915h = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i12 = -this.J;
        this.f14921n = i12;
        this.f14933z = i12;
        h(1.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Q);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void a(int i11, Animation.AnimationListener animationListener) {
        this.f14931x = i11;
        this.N.reset();
        this.N.setDuration(200L);
        this.N.setInterpolator(this.f14928u);
        if (animationListener != null) {
            this.f14929v.b(animationListener);
        }
        this.f14929v.clearAnimation();
        this.f14929v.startAnimation(this.N);
    }

    private void b(int i11, Animation.AnimationListener animationListener) {
        if (this.f14926s) {
            q(i11, animationListener);
            return;
        }
        this.f14931x = i11;
        this.O.reset();
        this.O.setDuration(200L);
        this.O.setInterpolator(this.f14928u);
        if (animationListener != null) {
            this.f14929v.b(animationListener);
        }
        this.f14929v.clearAnimation();
        this.f14929v.startAnimation(this.O);
    }

    private void c() {
        this.f14929v = new androidx.swiperefreshlayout.widget.a(getContext());
        androidx.swiperefreshlayout.widget.b bVar = new androidx.swiperefreshlayout.widget.b(getContext());
        this.C = bVar;
        bVar.l(1);
        this.f14929v.setImageDrawable(this.C);
        this.f14929v.setVisibility(8);
        addView(this.f14929v);
    }

    private void d() {
        if (this.f14908a == null) {
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (!childAt.equals(this.f14929v)) {
                    this.f14908a = childAt;
                    return;
                }
            }
        }
    }

    private void e(float f11) {
        if (f11 > this.f14912e) {
            k(true, true);
            return;
        }
        this.f14910c = false;
        this.C.j(0.0f, 0.0f);
        b(this.f14921n, !this.f14926s ? new e() : null);
        this.C.d(false);
    }

    private boolean f(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    private void g(float f11) {
        this.C.d(true);
        float fMin = Math.min(1.0f, Math.abs(f11 / this.f14912e));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f11) - this.f14912e;
        int i11 = this.B;
        if (i11 <= 0) {
            i11 = this.K ? this.A - this.f14933z : this.A;
        }
        float f12 = i11;
        double dMax = Math.max(0.0f, Math.min(fAbs, f12 * 2.0f) / f12) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        int i12 = this.f14933z + ((int) ((f12 * fMin) + (f12 * fPow * 2.0f)));
        if (this.f14929v.getVisibility() != 0) {
            this.f14929v.setVisibility(0);
        }
        if (!this.f14926s) {
            this.f14929v.setScaleX(1.0f);
            this.f14929v.setScaleY(1.0f);
        }
        if (this.f14926s) {
            setAnimationProgress(Math.min(1.0f, f11 / this.f14912e));
        }
        if (f11 < this.f14912e) {
            if (this.C.getAlpha() > 76 && !f(this.F)) {
                o();
            }
        } else if (this.C.getAlpha() < 255 && !f(this.G)) {
            n();
        }
        this.C.j(0.0f, Math.min(0.8f, fMax * 0.8f));
        this.C.e(Math.min(1.0f, fMax));
        this.C.g((((fMax * 0.4f) - 0.25f) + (fPow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i12 - this.f14921n);
    }

    private void i(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f14925r) {
            this.f14925r = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private void k(boolean z10, boolean z11) {
        if (this.f14910c != z10) {
            this.I = z11;
            d();
            this.f14910c = z10;
            if (z10) {
                a(this.f14921n, this.M);
            } else {
                p(this.M);
            }
        }
    }

    private Animation l(int i11, int i12) {
        d dVar = new d(i11, i12);
        dVar.setDuration(300L);
        this.f14929v.b(null);
        this.f14929v.clearAnimation();
        this.f14929v.startAnimation(dVar);
        return dVar;
    }

    private void m(float f11) {
        float f12 = this.f14923p;
        float f13 = f11 - f12;
        int i11 = this.f14911d;
        if (f13 <= i11 || this.f14924q) {
            return;
        }
        this.f14922o = f12 + i11;
        this.f14924q = true;
        this.C.setAlpha(76);
    }

    private void n() {
        this.G = l(this.C.getAlpha(), 255);
    }

    private void o() {
        this.F = l(this.C.getAlpha(), 76);
    }

    private void q(int i11, Animation.AnimationListener animationListener) {
        this.f14931x = i11;
        this.f14932y = this.f14929v.getScaleX();
        h hVar = new h();
        this.H = hVar;
        hVar.setDuration(150L);
        if (animationListener != null) {
            this.f14929v.b(animationListener);
        }
        this.f14929v.clearAnimation();
        this.f14929v.startAnimation(this.H);
    }

    private void r(Animation.AnimationListener animationListener) {
        this.f14929v.setVisibility(0);
        this.C.setAlpha(255);
        b bVar = new b();
        this.D = bVar;
        bVar.setDuration(this.f14920m);
        if (animationListener != null) {
            this.f14929v.b(animationListener);
        }
        this.f14929v.clearAnimation();
        this.f14929v.startAnimation(this.D);
    }

    private void setColorViewAlpha(int i11) {
        this.f14929v.getBackground().setAlpha(i11);
        this.C.setAlpha(i11);
    }

    public boolean canChildScrollUp() {
        View view = this.f14908a;
        return view instanceof ListView ? k.a((ListView) view, -1) : view.canScrollVertically(-1);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f11, float f12, boolean z10) {
        return this.f14915h.dispatchNestedFling(f11, f12, z10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f11, float f12) {
        return this.f14915h.dispatchNestedPreFling(f11, f12);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i11, int i12, int[] iArr, int[] iArr2) {
        return this.f14915h.dispatchNestedPreScroll(i11, i12, iArr, iArr2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i11, int i12, int[] iArr, int[] iArr2, int i13) {
        return i13 == 0 && dispatchNestedPreScroll(i11, i12, iArr, iArr2);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public void dispatchNestedScroll(int i11, int i12, int i13, int i14, @Nullable int[] iArr, int i15, @NonNull int[] iArr2) {
        if (i15 == 0) {
            this.f14915h.dispatchNestedScroll(i11, i12, i13, i14, iArr, i15, iArr2);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr) {
        return this.f14915h.dispatchNestedScroll(i11, i12, i13, i14, iArr);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr, int i15) {
        return i15 == 0 && this.f14915h.dispatchNestedScroll(i11, i12, i13, i14, iArr, i15);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i11, int i12) {
        int i13 = this.f14930w;
        if (i13 < 0) {
            return i12;
        }
        if (i12 == i11 - 1) {
            return i13;
        }
        return i12 >= i13 ? i12 + 1 : i12;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f14914g.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.J;
    }

    public int getProgressViewEndOffset() {
        return this.A;
    }

    public int getProgressViewStartOffset() {
        return this.f14933z;
    }

    void h(float f11) {
        int i11 = this.f14931x;
        setTargetOffsetTopAndBottom((i11 + ((int) ((this.f14933z - i11) * f11))) - this.f14929v.getTop());
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f14915h.hasNestedScrollingParent();
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i11) {
        return i11 == 0 && hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f14915h.isNestedScrollingEnabled();
    }

    public boolean isRefreshing() {
        return this.f14910c;
    }

    void j() {
        this.f14929v.clearAnimation();
        this.C.stop();
        this.f14929v.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f14926s) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f14933z - this.f14921n);
        }
        this.f14921n = this.f14929v.getTop();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0058  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        d();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f14927t && actionMasked == 0) {
            this.f14927t = false;
        }
        if (!isEnabled() || this.f14927t || canChildScrollUp() || this.f14910c || this.f14919l) {
            return false;
        }
        if (actionMasked == 0) {
            setTargetOffsetTopAndBottom(this.f14933z - this.f14929v.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f14925r = pointerId;
            this.f14924q = false;
            int iFindPointerIndex = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex < 0) {
                return false;
            }
            this.f14923p = motionEvent.getY(iFindPointerIndex);
        } else if (actionMasked == 1) {
            this.f14924q = false;
            this.f14925r = -1;
        } else if (actionMasked == 2) {
            int i11 = this.f14925r;
            if (i11 == -1) {
                Log.e(P, "Got ACTION_MOVE event but don't have an active pointer id.");
                return false;
            }
            int iFindPointerIndex2 = motionEvent.findPointerIndex(i11);
            if (iFindPointerIndex2 < 0) {
                return false;
            }
            m(motionEvent.getY(iFindPointerIndex2));
        } else if (actionMasked == 3) {
            this.f14924q = false;
            this.f14925r = -1;
        } else if (actionMasked == 6) {
            i(motionEvent);
        }
        return this.f14924q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f14908a == null) {
            d();
        }
        View view = this.f14908a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f14929v.getMeasuredWidth();
        int measuredHeight2 = this.f14929v.getMeasuredHeight();
        int i15 = measuredWidth / 2;
        int i16 = measuredWidth2 / 2;
        int i17 = this.f14921n;
        this.f14929v.layout(i15 - i16, i17, i15 + i16, measuredHeight2 + i17);
    }

    @Override // android.view.View
    public void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (this.f14908a == null) {
            d();
        }
        View view = this.f14908a;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f14929v.measure(View.MeasureSpec.makeMeasureSpec(this.J, 1073741824), View.MeasureSpec.makeMeasureSpec(this.J, 1073741824));
        this.f14930w = -1;
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            if (getChildAt(i13) == this.f14929v) {
                this.f14930w = i13;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f11, float f12, boolean z10) {
        return dispatchNestedFling(f11, f12, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f11, float f12) {
        return dispatchNestedPreFling(f11, f12);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr) {
        if (i12 > 0) {
            float f11 = this.f14913f;
            if (f11 > 0.0f) {
                float f12 = i12;
                if (f12 > f11) {
                    iArr[1] = (int) f11;
                    this.f14913f = 0.0f;
                } else {
                    this.f14913f = f11 - f12;
                    iArr[1] = i12;
                }
                g(this.f14913f);
            }
        }
        if (this.K && i12 > 0 && this.f14913f == 0.0f && Math.abs(i12 - iArr[1]) > 0) {
            this.f14929v.setVisibility(8);
        }
        int[] iArr2 = this.f14916i;
        if (dispatchNestedPreScroll(i11 - iArr[0], i12 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr, int i13) {
        if (i13 == 0) {
            onNestedPreScroll(view, i11, i12, iArr);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i11, i12, i13, i14, 0, this.f14918k);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14, int i15) {
        onNestedScroll(view, i11, i12, i13, i14, i15, this.f14918k);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i11, int i12, int i13, int i14, int i15, @NonNull int[] iArr) {
        if (i15 != 0) {
            return;
        }
        int i16 = iArr[1];
        dispatchNestedScroll(i11, i12, i13, i14, this.f14917j, i15, iArr);
        int i17 = i14 - (iArr[1] - i16);
        int i18 = i17 == 0 ? i14 + this.f14917j[1] : i17;
        if (i18 >= 0 || canChildScrollUp()) {
            return;
        }
        float fAbs = this.f14913f + Math.abs(i18);
        this.f14913f = fAbs;
        g(fAbs);
        iArr[1] = iArr[1] + i17;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i11) {
        this.f14914g.onNestedScrollAccepted(view, view2, i11);
        startNestedScroll(i11 & 2);
        this.f14913f = 0.0f;
        this.f14919l = true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i11, int i12) {
        if (i12 == 0) {
            onNestedScrollAccepted(view, view2, i11);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setRefreshing(savedState.f14934a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.f14910c);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i11) {
        return (!isEnabled() || this.f14927t || this.f14910c || (i11 & 2) == 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i11, int i12) {
        if (i12 == 0) {
            return onStartNestedScroll(view, view2, i11);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.f14914g.onStopNestedScroll(view);
        this.f14919l = false;
        float f11 = this.f14913f;
        if (f11 > 0.0f) {
            e(f11);
            this.f14913f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i11) {
        if (i11 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f14927t && actionMasked == 0) {
            this.f14927t = false;
        }
        if (!isEnabled() || this.f14927t || canChildScrollUp() || this.f14910c || this.f14919l) {
            return false;
        }
        if (actionMasked == 0) {
            this.f14925r = motionEvent.getPointerId(0);
            this.f14924q = false;
        } else {
            if (actionMasked == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f14925r);
                if (iFindPointerIndex < 0) {
                    Log.e(P, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.f14924q) {
                    float y10 = (motionEvent.getY(iFindPointerIndex) - this.f14922o) * 0.5f;
                    this.f14924q = false;
                    e(y10);
                }
                this.f14925r = -1;
                return false;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f14925r);
                if (iFindPointerIndex2 < 0) {
                    Log.e(P, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y11 = motionEvent.getY(iFindPointerIndex2);
                m(y11);
                if (this.f14924q) {
                    float f11 = (y11 - this.f14922o) * 0.5f;
                    if (f11 <= 0.0f) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    g(f11);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        Log.e(P, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                        return false;
                    }
                    this.f14925r = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    i(motionEvent);
                }
            }
        }
        return true;
    }

    void p(Animation.AnimationListener animationListener) {
        c cVar = new c();
        this.E = cVar;
        cVar.setDuration(150L);
        this.f14929v.b(animationListener);
        this.f14929v.clearAnimation();
        this.f14929v.startAnimation(this.E);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        ViewParent parent;
        View view = this.f14908a;
        if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
            super.requestDisallowInterceptTouchEvent(z10);
        } else {
            if (this.L || (parent = getParent()) == null) {
                return;
            }
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    void setAnimationProgress(float f11) {
        this.f14929v.setScaleX(f11);
        this.f14929v.setScaleY(f11);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        d();
        this.C.f(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            iArr2[i11] = androidx.core.content.b.getColor(context, iArr[i11]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i11) {
        this.f14912e = i11;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (z10) {
            return;
        }
        j();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z10) {
        this.L = z10;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z10) {
        this.f14915h.setNestedScrollingEnabled(z10);
    }

    public void setOnChildScrollUpCallback(@Nullable i iVar) {
    }

    public void setOnRefreshListener(@Nullable j jVar) {
        this.f14909b = jVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i11) {
        setProgressBackgroundColorSchemeResource(i11);
    }

    public void setProgressBackgroundColorSchemeColor(int i11) {
        this.f14929v.setBackgroundColor(i11);
    }

    public void setProgressBackgroundColorSchemeResource(int i11) {
        setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(getContext(), i11));
    }

    public void setProgressViewEndTarget(boolean z10, int i11) {
        this.A = i11;
        this.f14926s = z10;
        this.f14929v.invalidate();
    }

    public void setProgressViewOffset(boolean z10, int i11, int i12) {
        this.f14926s = z10;
        this.f14933z = i11;
        this.A = i12;
        this.K = true;
        j();
        this.f14910c = false;
    }

    public void setRefreshing(boolean z10) {
        if (!z10 || this.f14910c == z10) {
            k(z10, false);
            return;
        }
        this.f14910c = z10;
        setTargetOffsetTopAndBottom((!this.K ? this.A + this.f14933z : this.A) - this.f14921n);
        this.I = false;
        r(this.M);
    }

    public void setSize(int i11) {
        if (i11 == 0 || i11 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i11 == 0) {
                this.J = (int) (displayMetrics.density * 56.0f);
            } else {
                this.J = (int) (displayMetrics.density * 40.0f);
            }
            this.f14929v.setImageDrawable(null);
            this.C.l(i11);
            this.f14929v.setImageDrawable(this.C);
        }
    }

    public void setSlingshotDistance(int i11) {
        this.B = i11;
    }

    void setTargetOffsetTopAndBottom(int i11) {
        this.f14929v.bringToFront();
        ViewCompat.offsetTopAndBottom(this.f14929v, i11);
        this.f14921n = this.f14929v.getTop();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i11) {
        return this.f14915h.startNestedScroll(i11);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i11, int i12) {
        return i12 == 0 && startNestedScroll(i11);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f14915h.stopNestedScroll();
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i11) {
        if (i11 == 0) {
            stopNestedScroll();
        }
    }
}

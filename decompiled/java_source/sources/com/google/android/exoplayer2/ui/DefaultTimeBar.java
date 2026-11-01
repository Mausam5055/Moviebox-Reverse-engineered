package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultTimeBar extends View implements n0 {
    public static final int BAR_GRAVITY_BOTTOM = 1;
    public static final int BAR_GRAVITY_CENTER = 0;
    public static final int DEFAULT_AD_MARKER_COLOR = -1291845888;
    public static final int DEFAULT_AD_MARKER_WIDTH_DP = 4;
    public static final int DEFAULT_BAR_HEIGHT_DP = 4;
    public static final int DEFAULT_BUFFERED_COLOR = -855638017;
    public static final int DEFAULT_PLAYED_AD_MARKER_COLOR = 872414976;
    public static final int DEFAULT_PLAYED_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_DISABLED_SIZE_DP = 0;
    public static final int DEFAULT_SCRUBBER_DRAGGED_SIZE_DP = 16;
    public static final int DEFAULT_SCRUBBER_ENABLED_SIZE_DP = 12;
    public static final int DEFAULT_TOUCH_TARGET_HEIGHT_DP = 26;
    public static final int DEFAULT_UNPLAYED_COLOR = 872415231;
    private int A;
    private long B;
    private int C;
    private Rect D;
    private ValueAnimator E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long[] N;
    private boolean[] O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f26887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f26888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f26889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f26890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f26891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f26892f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f26893g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f26894h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Paint f26895i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Paint f26896j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Drawable f26897k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f26898l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f26899m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f26900n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f26901o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f26902p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f26903q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f26904r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f26905s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f26906t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final StringBuilder f26907u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Formatter f26908v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Runnable f26909w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final CopyOnWriteArraySet f26910x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Point f26911y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final float f26912z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, attributeSet);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i11, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i11, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i11, @Nullable AttributeSet attributeSet2, int i12) {
        super(context, attributeSet, i11);
        this.f26887a = new Rect();
        this.f26888b = new Rect();
        this.f26889c = new Rect();
        this.f26890d = new Rect();
        Paint paint = new Paint();
        this.f26891e = paint;
        Paint paint2 = new Paint();
        this.f26892f = paint2;
        Paint paint3 = new Paint();
        this.f26893g = paint3;
        Paint paint4 = new Paint();
        this.f26894h = paint4;
        Paint paint5 = new Paint();
        this.f26895i = paint5;
        Paint paint6 = new Paint();
        this.f26896j = paint6;
        paint6.setAntiAlias(true);
        this.f26910x = new CopyOnWriteArraySet();
        this.f26911y = new Point();
        float f11 = context.getResources().getDisplayMetrics().density;
        this.f26912z = f11;
        this.f26906t = c(f11, -50);
        int iC = c(f11, 4);
        int iC2 = c(f11, 26);
        int iC3 = c(f11, 4);
        int iC4 = c(f11, 12);
        int iC5 = c(f11, 0);
        int iC6 = c(f11, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.DefaultTimeBar, i11, i12);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.DefaultTimeBar_scrubber_drawable);
                this.f26897k = drawable;
                if (drawable != null) {
                    m(drawable);
                    iC2 = Math.max(drawable.getMinimumHeight(), iC2);
                }
                this.f26898l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_bar_height, iC);
                this.f26899m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_touch_target_height, iC2);
                this.f26900n = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_bar_gravity, 0);
                this.f26901o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_ad_marker_width, iC3);
                this.f26902p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_enabled_size, iC4);
                this.f26903q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_disabled_size, iC5);
                this.f26904r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_dragged_size, iC6);
                int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_color, -1);
                int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_scrubber_color, -1);
                int i15 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_buffered_color, -855638017);
                int i16 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_unplayed_color, 872415231);
                int i17 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_ad_marker_color, -1291845888);
                int i18 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i13);
                paint6.setColor(i14);
                paint2.setColor(i15);
                paint3.setColor(i16);
                paint4.setColor(i17);
                paint5.setColor(i18);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            this.f26898l = iC;
            this.f26899m = iC2;
            this.f26900n = 0;
            this.f26901o = iC3;
            this.f26902p = iC4;
            this.f26903q = iC5;
            this.f26904r = iC6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f26897k = null;
        }
        StringBuilder sb2 = new StringBuilder();
        this.f26907u = sb2;
        this.f26908v = new Formatter(sb2, Locale.getDefault());
        this.f26909w = new Runnable() { // from class: com.google.android.exoplayer2.ui.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f27119a.g();
            }
        };
        Drawable drawable2 = this.f26897k;
        if (drawable2 != null) {
            this.f26905s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f26905s = (Math.max(this.f26903q, Math.max(this.f26902p, this.f26904r)) + 1) / 2;
        }
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f27121a.h(valueAnimator2);
            }
        });
        this.J = C.TIME_UNSET;
        this.B = C.TIME_UNSET;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private static int c(float f11, int i11) {
        return (int) ((i11 * f11) + 0.5f);
    }

    private void d(Canvas canvas) {
        int i11;
        if (this.J <= 0) {
            return;
        }
        Rect rect = this.f26890d;
        int iQ = com.google.android.exoplayer2.util.p0.q(rect.right, rect.left, this.f26888b.right);
        int iCenterY = this.f26890d.centerY();
        Drawable drawable = this.f26897k;
        if (drawable == null) {
            if (this.H || isFocused()) {
                i11 = this.f26904r;
            } else {
                i11 = isEnabled() ? this.f26902p : this.f26903q;
            }
            canvas.drawCircle(iQ, iCenterY, (int) ((i11 * this.F) / 2.0f), this.f26896j);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.F)) / 2;
        int intrinsicHeight = ((int) (this.f26897k.getIntrinsicHeight() * this.F)) / 2;
        this.f26897k.setBounds(iQ - intrinsicWidth, iCenterY - intrinsicHeight, iQ + intrinsicWidth, iCenterY + intrinsicHeight);
        this.f26897k.draw(canvas);
    }

    private void e(Canvas canvas) {
        int iHeight = this.f26888b.height();
        int iCenterY = this.f26888b.centerY() - (iHeight / 2);
        int i11 = iHeight + iCenterY;
        if (this.J <= 0) {
            Rect rect = this.f26888b;
            canvas.drawRect(rect.left, iCenterY, rect.right, i11, this.f26893g);
            return;
        }
        Rect rect2 = this.f26889c;
        int i12 = rect2.left;
        int i13 = rect2.right;
        int iMax = Math.max(Math.max(this.f26888b.left, i13), this.f26890d.right);
        int i14 = this.f26888b.right;
        if (iMax < i14) {
            canvas.drawRect(iMax, iCenterY, i14, i11, this.f26893g);
        }
        int iMax2 = Math.max(i12, this.f26890d.right);
        if (i13 > iMax2) {
            canvas.drawRect(iMax2, iCenterY, i13, i11, this.f26892f);
        }
        if (this.f26890d.width() > 0) {
            Rect rect3 = this.f26890d;
            canvas.drawRect(rect3.left, iCenterY, rect3.right, i11, this.f26891e);
        }
        if (this.M == 0) {
            return;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.e(this.N);
        boolean[] zArr = (boolean[]) com.google.android.exoplayer2.util.a.e(this.O);
        int i15 = this.f26901o / 2;
        for (int i16 = 0; i16 < this.M; i16++) {
            int iWidth = ((int) ((((long) this.f26888b.width()) * com.google.android.exoplayer2.util.p0.r(jArr[i16], 0L, this.J)) / this.J)) - i15;
            Rect rect4 = this.f26888b;
            int iMin = rect4.left + Math.min(rect4.width() - this.f26901o, Math.max(0, iWidth));
            canvas.drawRect(iMin, iCenterY, iMin + this.f26901o, i11, zArr[i16] ? this.f26895i : this.f26894h);
        }
    }

    private boolean f(float f11, float f12) {
        return this.f26887a.contains((int) f11, (int) f12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        q(false);
    }

    private long getPositionIncrement() {
        long j11 = this.B;
        if (j11 != C.TIME_UNSET) {
            return j11;
        }
        long j12 = this.J;
        if (j12 == C.TIME_UNSET) {
            return 0L;
        }
        return j12 / ((long) this.A);
    }

    private String getProgressText() {
        return com.google.android.exoplayer2.util.p0.h0(this.f26907u, this.f26908v, this.K);
    }

    private long getScrubberPosition() {
        if (this.f26888b.width() <= 0 || this.J == C.TIME_UNSET) {
            return 0L;
        }
        return (((long) this.f26890d.width()) * this.J) / ((long) this.f26888b.width());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(ValueAnimator valueAnimator) {
        this.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f26887a);
    }

    private void i(float f11) {
        Rect rect = this.f26890d;
        Rect rect2 = this.f26888b;
        rect.right = com.google.android.exoplayer2.util.p0.q((int) f11, rect2.left, rect2.right);
    }

    private static int j(float f11, int i11) {
        return (int) (i11 / f11);
    }

    private Point k(MotionEvent motionEvent) {
        this.f26911y.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.f26911y;
    }

    private boolean l(long j11) {
        long j12 = this.J;
        if (j12 <= 0) {
            return false;
        }
        long j13 = this.H ? this.I : this.K;
        long jR = com.google.android.exoplayer2.util.p0.r(j13 + j11, 0L, j12);
        if (jR == j13) {
            return false;
        }
        if (this.H) {
            t(jR);
        } else {
            p(jR);
        }
        r();
        return true;
    }

    private boolean m(Drawable drawable) {
        return com.google.android.exoplayer2.util.p0.f27626a >= 23 && n(drawable, getLayoutDirection());
    }

    private static boolean n(Drawable drawable, int i11) {
        return com.google.android.exoplayer2.util.p0.f27626a >= 23 && drawable.setLayoutDirection(i11);
    }

    private void o(int i11, int i12) {
        Rect rect = this.D;
        if (rect != null && rect.width() == i11 && this.D.height() == i12) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i11, i12);
        this.D = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void p(long j11) {
        this.I = j11;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.f26910x.iterator();
        while (it.hasNext()) {
            ((n0.a) it.next()).r(this, j11);
        }
    }

    private void q(boolean z10) {
        removeCallbacks(this.f26909w);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.f26910x.iterator();
        while (it.hasNext()) {
            ((n0.a) it.next()).p(this, this.I, z10);
        }
    }

    private void r() {
        this.f26889c.set(this.f26888b);
        this.f26890d.set(this.f26888b);
        long j11 = this.H ? this.I : this.K;
        if (this.J > 0) {
            int iWidth = (int) ((((long) this.f26888b.width()) * this.L) / this.J);
            Rect rect = this.f26889c;
            Rect rect2 = this.f26888b;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.f26888b.width()) * j11) / this.J);
            Rect rect3 = this.f26890d;
            Rect rect4 = this.f26888b;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.f26889c;
            int i11 = this.f26888b.left;
            rect5.right = i11;
            this.f26890d.right = i11;
        }
        invalidate(this.f26887a);
    }

    private void s() {
        Drawable drawable = this.f26897k;
        if (drawable != null && drawable.isStateful() && this.f26897k.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void t(long j11) {
        if (this.I == j11) {
            return;
        }
        this.I = j11;
        Iterator it = this.f26910x.iterator();
        while (it.hasNext()) {
            ((n0.a) it.next()).l(this, j11);
        }
    }

    @Override // com.google.android.exoplayer2.ui.n0
    public void addListener(n0.a aVar) {
        com.google.android.exoplayer2.util.a.e(aVar);
        this.f26910x.add(aVar);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        s();
    }

    @Override // com.google.android.exoplayer2.ui.n0
    public long getPreferredUpdateDelay() {
        int iJ = j(this.f26912z, this.f26888b.width());
        if (iJ != 0) {
            long j11 = this.J;
            if (j11 != 0 && j11 != C.TIME_UNSET) {
                return j11 / ((long) iJ);
            }
        }
        return Long.MAX_VALUE;
    }

    public void hideScrubber(long j11) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 0.0f);
        this.E.setDuration(j11);
        this.E.start();
    }

    public void hideScrubber(boolean z10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = z10;
        this.F = 0.0f;
        invalidate(this.f26887a);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f26897k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        e(canvas);
        d(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i11, Rect rect) {
        super.onFocusChanged(z10, i11, rect);
        if (!this.H || z10) {
            return;
        }
        q(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.J <= 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.p0.f27626a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i11 != 66) {
                switch (i11) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (l(positionIncrement)) {
                            removeCallbacks(this.f26909w);
                            postDelayed(this.f26909w, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (l(positionIncrement)) {
                            removeCallbacks(this.f26909w);
                            postDelayed(this.f26909w, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.H) {
                            q(false);
                            return true;
                        }
                        break;
                }
            } else if (this.H) {
                q(false);
                return true;
            }
        }
        return super.onKeyDown(i11, keyEvent);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int paddingBottom;
        int iMax;
        int i15 = i13 - i11;
        int i16 = i14 - i12;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i15 - getPaddingRight();
        int i17 = this.G ? 0 : this.f26905s;
        if (this.f26900n == 1) {
            paddingBottom = (i16 - getPaddingBottom()) - this.f26899m;
            int paddingBottom2 = i16 - getPaddingBottom();
            int i18 = this.f26898l;
            iMax = (paddingBottom2 - i18) - Math.max(i17 - (i18 / 2), 0);
        } else {
            paddingBottom = (i16 - this.f26899m) / 2;
            iMax = (i16 - this.f26898l) / 2;
        }
        this.f26887a.set(paddingLeft, paddingBottom, paddingRight, this.f26899m + paddingBottom);
        Rect rect = this.f26888b;
        Rect rect2 = this.f26887a;
        rect.set(rect2.left + i17, iMax, rect2.right - i17, this.f26898l + iMax);
        if (com.google.android.exoplayer2.util.p0.f27626a >= 29) {
            o(i15, i16);
        }
        r();
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i12);
        if (mode == 0) {
            size = this.f26899m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f26899m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i11), size);
        s();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i11) {
        Drawable drawable = this.f26897k;
        if (drawable == null || !n(drawable, i11)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.J > 0) {
            Point pointK = k(motionEvent);
            int i11 = pointK.x;
            int i12 = pointK.y;
            int action = motionEvent.getAction();
            if (action == 0) {
                float f11 = i11;
                if (f(f11, i12)) {
                    i(f11);
                    p(getScrubberPosition());
                    r();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.H) {
                    q(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.H) {
                        q(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.H) {
                if (i12 < this.f26906t) {
                    int i13 = this.C;
                    i(i13 + ((i11 - i13) / 3));
                } else {
                    this.C = i11;
                    i(i11);
                }
                t(getScrubberPosition());
                r();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i11, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i11, bundle)) {
            return true;
        }
        if (this.J <= 0) {
            return false;
        }
        if (i11 == 8192) {
            if (l(-getPositionIncrement())) {
                q(false);
            }
        } else {
            if (i11 != 4096) {
                return false;
            }
            if (l(getPositionIncrement())) {
                q(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void removeListener(n0.a aVar) {
        this.f26910x.remove(aVar);
    }

    @Override // com.google.android.exoplayer2.ui.n0
    public void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i11) {
        com.google.android.exoplayer2.util.a.a(i11 == 0 || !(jArr == null || zArr == null));
        this.M = i11;
        this.N = jArr;
        this.O = zArr;
        r();
    }

    public void setAdMarkerColor(int i11) {
        this.f26894h.setColor(i11);
        invalidate(this.f26887a);
    }

    public void setBufferedColor(int i11) {
        this.f26892f.setColor(i11);
        invalidate(this.f26887a);
    }

    @Override // com.google.android.exoplayer2.ui.n0
    public void setBufferedPosition(long j11) {
        if (this.L == j11) {
            return;
        }
        this.L = j11;
        r();
    }

    @Override // com.google.android.exoplayer2.ui.n0
    public void setDuration(long j11) {
        if (this.J == j11) {
            return;
        }
        this.J = j11;
        if (this.H && j11 == C.TIME_UNSET) {
            q(true);
        }
        r();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.n0
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (!this.H || z10) {
            return;
        }
        q(true);
    }

    public void setKeyCountIncrement(int i11) {
        com.google.android.exoplayer2.util.a.a(i11 > 0);
        this.A = i11;
        this.B = C.TIME_UNSET;
    }

    public void setKeyTimeIncrement(long j11) {
        com.google.android.exoplayer2.util.a.a(j11 > 0);
        this.A = -1;
        this.B = j11;
    }

    public void setPlayedAdMarkerColor(int i11) {
        this.f26895i.setColor(i11);
        invalidate(this.f26887a);
    }

    public void setPlayedColor(int i11) {
        this.f26891e.setColor(i11);
        invalidate(this.f26887a);
    }

    @Override // com.google.android.exoplayer2.ui.n0
    public void setPosition(long j11) {
        if (this.K == j11) {
            return;
        }
        this.K = j11;
        setContentDescription(getProgressText());
        r();
    }

    public void setScrubberColor(int i11) {
        this.f26896j.setColor(i11);
        invalidate(this.f26887a);
    }

    public void setUnplayedColor(int i11) {
        this.f26893g.setColor(i11);
        invalidate(this.f26887a);
    }

    public void showScrubber() {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.F = 1.0f;
        invalidate(this.f26887a);
    }

    public void showScrubber(long j11) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.E.setFloatValues(this.F, 1.0f);
        this.E.setDuration(j11);
        this.E.start();
    }
}

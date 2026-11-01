package com.google.android.material.timepicker;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
class ClockFaceView extends g implements ClockHandView.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ClockHandView f30032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f30033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f30034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f30035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SparseArray f30036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AccessibilityDelegateCompat f30037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f30038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float[] f30039k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f30040l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f30041m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f30042n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f30043o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String[] f30044p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f30045q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ColorStateList f30046r;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.l(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f30032d.j()) - ClockFaceView.this.f30040l);
            return true;
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int iIntValue = ((Integer) view.getTag(R$id.material_value_index)).intValue();
            if (iIntValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f30036h.get(iIntValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, iIntValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
            if (i11 != 16) {
                return super.performAccessibilityAction(view, i11, bundle);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            view.getHitRect(ClockFaceView.this.f30033e);
            float fCenterX = ClockFaceView.this.f30033e.centerX();
            float fCenterY = ClockFaceView.this.f30033e.centerY();
            ClockFaceView.this.f30032d.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
            ClockFaceView.this.f30032d.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
            return true;
        }
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f30033e = new Rect();
        this.f30034f = new RectF();
        this.f30035g = new Rect();
        this.f30036h = new SparseArray();
        this.f30039k = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockFaceView, i11, R$style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListA = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockNumberTextColor);
        this.f30046r = colorStateListA;
        LayoutInflater.from(context).inflate(R$layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R$id.material_clock_hand);
        this.f30032d = clockHandView;
        this.f30040l = resources.getDimensionPixelSize(R$dimen.material_clock_hand_padding);
        int colorForState = colorStateListA.getColorForState(new int[]{R.attr.state_selected}, colorStateListA.getDefaultColor());
        this.f30038j = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = g.a.a(context, R$color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA2 = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f30037i = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        z(strArr, 0);
        this.f30041m = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_height);
        this.f30042n = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_width);
        this.f30043o = resources.getDimensionPixelSize(R$dimen.material_clock_size);
    }

    private void A(int i11) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f30036h.size();
        boolean z10 = false;
        for (int i12 = 0; i12 < Math.max(this.f30044p.length, size); i12++) {
            TextView textView = (TextView) this.f30036h.get(i12);
            if (i12 >= this.f30044p.length) {
                removeView(textView);
                this.f30036h.remove(i12);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R$layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f30036h.put(i12, textView);
                    addView(textView);
                }
                textView.setText(this.f30044p[i12]);
                textView.setTag(R$id.material_value_index, Integer.valueOf(i12));
                int i13 = (i12 / 12) + 1;
                textView.setTag(R$id.material_clock_level, Integer.valueOf(i13));
                if (i13 > 1) {
                    z10 = true;
                }
                ViewCompat.setAccessibilityDelegate(textView, this.f30037i);
                textView.setTextColor(this.f30046r);
                if (i11 != 0) {
                    textView.setContentDescription(getResources().getString(i11, this.f30044p[i12]));
                }
            }
        }
        this.f30032d.t(z10);
    }

    private void t() {
        RectF rectFF = this.f30032d.f();
        TextView textViewW = w(rectFF);
        for (int i11 = 0; i11 < this.f30036h.size(); i11++) {
            TextView textView = (TextView) this.f30036h.get(i11);
            if (textView != null) {
                textView.setSelected(textView == textViewW);
                textView.getPaint().setShader(v(rectFF, textView));
                textView.invalidate();
            }
        }
    }

    private RadialGradient v(RectF rectF, TextView textView) {
        textView.getHitRect(this.f30033e);
        this.f30034f.set(this.f30033e);
        textView.getLineBounds(0, this.f30035g);
        RectF rectF2 = this.f30034f;
        Rect rect = this.f30035g;
        rectF2.inset(rect.left, rect.top);
        if (RectF.intersects(rectF, this.f30034f)) {
            return new RadialGradient(rectF.centerX() - this.f30034f.left, rectF.centerY() - this.f30034f.top, rectF.width() * 0.5f, this.f30038j, this.f30039k, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private TextView w(RectF rectF) {
        float f11 = Float.MAX_VALUE;
        TextView textView = null;
        for (int i11 = 0; i11 < this.f30036h.size(); i11++) {
            TextView textView2 = (TextView) this.f30036h.get(i11);
            if (textView2 != null) {
                textView2.getHitRect(this.f30033e);
                this.f30034f.set(this.f30033e);
                this.f30034f.union(rectF);
                float fWidth = this.f30034f.width() * this.f30034f.height();
                if (fWidth < f11) {
                    textView = textView2;
                    f11 = fWidth;
                }
            }
        }
        return textView;
    }

    private static float x(float f11, float f12, float f13) {
        return Math.max(Math.max(f11, f12), f13);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.c
    public void d(float f11, boolean z10) {
        if (Math.abs(this.f30045q - f11) > 0.001f) {
            this.f30045q = f11;
            t();
        }
    }

    @Override // com.google.android.material.timepicker.g
    public void l(int i11) {
        if (i11 != k()) {
            super.l(i11);
            this.f30032d.o(k());
        }
    }

    @Override // com.google.android.material.timepicker.g
    protected void n() {
        super.n();
        for (int i11 = 0; i11 < this.f30036h.size(); i11++) {
            ((TextView) this.f30036h.get(i11)).setVisibility(0);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f30044p.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        t();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iX = (int) (this.f30043o / x(this.f30041m / displayMetrics.heightPixels, this.f30042n / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iX, 1073741824);
        setMeasuredDimension(iX, iX);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    int u() {
        return this.f30032d.e();
    }

    void y(int i11) {
        this.f30032d.p(i11);
    }

    public void z(String[] strArr, int i11) {
        this.f30044p = strArr;
        A(i11);
    }
}

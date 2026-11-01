package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.m;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
@ViewPager.c
public class PagerTitleStrip extends ViewGroup {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f15243o = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f15244p = {R.attr.textAllCaps};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ViewPager f15245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f15246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f15247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f15248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f15250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f15251g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f15252h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f15253i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f15254j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a f15255k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WeakReference f15256l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f15257m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f15258n;

    private class a extends DataSetObserver implements ViewPager.h, ViewPager.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15259a;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void a(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.a(pagerAdapter, pagerAdapter2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.b(pagerTitleStrip.f15245a.getCurrentItem(), PagerTitleStrip.this.f15245a.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f11 = pagerTitleStrip2.f15250f;
            if (f11 < 0.0f) {
                f11 = 0.0f;
            }
            pagerTitleStrip2.c(pagerTitleStrip2.f15245a.getCurrentItem(), f11, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrollStateChanged(int i11) {
            this.f15259a = i11;
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrolled(int i11, float f11, int i12) {
            if (f11 > 0.5f) {
                i11++;
            }
            PagerTitleStrip.this.c(i11, f11, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageSelected(int i11) {
            if (this.f15259a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.b(pagerTitleStrip.f15245a.getCurrentItem(), PagerTitleStrip.this.f15245a.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f11 = pagerTitleStrip2.f15250f;
                if (f11 < 0.0f) {
                    f11 = 0.0f;
                }
                pagerTitleStrip2.c(pagerTitleStrip2.f15245a.getCurrentItem(), f11, true);
            }
        }
    }

    private static class b extends SingleLineTransformationMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Locale f15261a;

        b(Context context) {
            this.f15261a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f15261a);
            }
            return null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15249e = -1;
        this.f15250f = -1.0f;
        this.f15255k = new a();
        TextView textView = new TextView(context);
        this.f15246b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f15247c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f15248d = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f15243o);
        boolean z10 = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            m.q(this.f15246b, resourceId);
            m.q(this.f15247c, resourceId);
            m.q(this.f15248d, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f15246b.setTextColor(color);
            this.f15247c.setTextColor(color);
            this.f15248d.setTextColor(color);
        }
        this.f15252h = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.f15258n = this.f15247c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        TextView textView4 = this.f15246b;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView4.setEllipsize(truncateAt);
        this.f15247c.setEllipsize(truncateAt);
        this.f15248d.setEllipsize(truncateAt);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f15244p);
            z10 = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z10) {
            setSingleLineAllCaps(this.f15246b);
            setSingleLineAllCaps(this.f15247c);
            setSingleLineAllCaps(this.f15248d);
        } else {
            this.f15246b.setSingleLine();
            this.f15247c.setSingleLine();
            this.f15248d.setSingleLine();
        }
        this.f15251g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.f15255k);
            this.f15256l = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.f15255k);
            this.f15256l = new WeakReference(pagerAdapter2);
        }
        ViewPager viewPager = this.f15245a;
        if (viewPager != null) {
            this.f15249e = -1;
            this.f15250f = -1.0f;
            b(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    void b(int i11, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.f15253i = true;
        CharSequence pageTitle = null;
        this.f15246b.setText((i11 < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i11 - 1));
        this.f15247c.setText((pagerAdapter == null || i11 >= count) ? null : pagerAdapter.getPageTitle(i11));
        int i12 = i11 + 1;
        if (i12 < count && pagerAdapter != null) {
            pageTitle = pagerAdapter.getPageTitle(i12);
        }
        this.f15248d.setText(pageTitle);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f15246b.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f15247c.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f15248d.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f15249e = i11;
        if (!this.f15254j) {
            c(i11, this.f15250f, false);
        }
        this.f15253i = false;
    }

    void c(int i11, float f11, boolean z10) {
        int i12;
        int i13;
        int i14;
        int i15;
        if (i11 != this.f15249e) {
            b(i11, this.f15245a.getAdapter());
        } else if (!z10 && f11 == this.f15250f) {
            return;
        }
        this.f15254j = true;
        int measuredWidth = this.f15246b.getMeasuredWidth();
        int measuredWidth2 = this.f15247c.getMeasuredWidth();
        int measuredWidth3 = this.f15248d.getMeasuredWidth();
        int i16 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i17 = paddingRight + i16;
        int i18 = (width - (paddingLeft + i16)) - i17;
        float f12 = 0.5f + f11;
        if (f12 > 1.0f) {
            f12 -= 1.0f;
        }
        int i19 = ((width - i17) - ((int) (i18 * f12))) - i16;
        int i20 = measuredWidth2 + i19;
        int baseline = this.f15246b.getBaseline();
        int baseline2 = this.f15247c.getBaseline();
        int baseline3 = this.f15248d.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i21 = iMax - baseline;
        int i22 = iMax - baseline2;
        int i23 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(this.f15246b.getMeasuredHeight() + i21, this.f15247c.getMeasuredHeight() + i22), this.f15248d.getMeasuredHeight() + i23);
        int i24 = this.f15252h & 112;
        if (i24 != 16) {
            if (i24 != 80) {
                i13 = i21 + paddingTop;
                i14 = i22 + paddingTop;
                i15 = paddingTop + i23;
            } else {
                i12 = (height - paddingBottom) - iMax2;
            }
            TextView textView = this.f15247c;
            textView.layout(i19, i14, i20, textView.getMeasuredHeight() + i14);
            int iMin = Math.min(paddingLeft, (i19 - this.f15251g) - measuredWidth);
            TextView textView2 = this.f15246b;
            textView2.layout(iMin, i13, measuredWidth + iMin, textView2.getMeasuredHeight() + i13);
            int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i20 + this.f15251g);
            TextView textView3 = this.f15248d;
            textView3.layout(iMax3, i15, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i15);
            this.f15250f = f11;
            this.f15254j = false;
        }
        i12 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        i13 = i21 + i12;
        i14 = i22 + i12;
        i15 = i12 + i23;
        TextView textView4 = this.f15247c;
        textView4.layout(i19, i14, i20, textView4.getMeasuredHeight() + i14);
        int iMin2 = Math.min(paddingLeft, (i19 - this.f15251g) - measuredWidth);
        TextView textView5 = this.f15246b;
        textView5.layout(iMin2, i13, measuredWidth + iMin2, textView5.getMeasuredHeight() + i13);
        int iMax4 = Math.max((width - paddingRight) - measuredWidth3, i20 + this.f15251g);
        TextView textView6 = this.f15248d;
        textView6.layout(iMax4, i15, iMax4 + measuredWidth3, textView6.getMeasuredHeight() + i15);
        this.f15250f = f11;
        this.f15254j = false;
    }

    int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f15251g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.f15255k);
        viewPager.addOnAdapterChangeListener(this.f15255k);
        this.f15245a = viewPager;
        WeakReference weakReference = this.f15256l;
        a(weakReference != null ? (PagerAdapter) weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f15245a;
        if (viewPager != null) {
            a(viewPager.getAdapter(), null);
            this.f15245a.setInternalPageChangeListener(null);
            this.f15245a.removeOnAdapterChangeListener(this.f15255k);
            this.f15245a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        if (this.f15245a != null) {
            float f11 = this.f15250f;
            if (f11 < 0.0f) {
                f11 = 0.0f;
            }
            c(this.f15249e, f11, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int iMax;
        if (View.MeasureSpec.getMode(i11) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i12, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i11);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, (int) (size * 0.2f), -2);
        this.f15246b.measure(childMeasureSpec2, childMeasureSpec);
        this.f15247c.measure(childMeasureSpec2, childMeasureSpec);
        this.f15248d.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i12) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i12);
        } else {
            iMax = Math.max(getMinHeight(), this.f15247c.getMeasuredHeight() + paddingTop);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i12, this.f15247c.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f15253i) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i11) {
        this.f15252h = i11;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f11) {
        int i11 = ((int) (f11 * 255.0f)) & 255;
        this.f15257m = i11;
        int i12 = (i11 << 24) | (this.f15258n & 16777215);
        this.f15246b.setTextColor(i12);
        this.f15248d.setTextColor(i12);
    }

    public void setTextColor(int i11) {
        this.f15258n = i11;
        this.f15247c.setTextColor(i11);
        int i12 = (this.f15257m << 24) | (this.f15258n & 16777215);
        this.f15246b.setTextColor(i12);
        this.f15248d.setTextColor(i12);
    }

    public void setTextSize(int i11, float f11) {
        this.f15246b.setTextSize(i11, f11);
        this.f15247c.setTextSize(i11, f11);
        this.f15248d.setTextSize(i11, f11);
    }

    public void setTextSpacing(int i11) {
        this.f15251g = i11;
        requestLayout();
    }
}

package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Interpolator f1815l = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Runnable f1816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f1817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LinearLayoutCompat f1818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Spinner f1819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1821f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1822g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1823h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f1824i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected ViewPropertyAnimator f1825j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected final d f1826k;

    private class a extends BaseAdapter {
        a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f1818c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i11) {
            return ((c) ScrollingTabContainerView.this.f1818c.getChildAt(i11)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // android.widget.Adapter
        public View getView(int i11, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.c((androidx.appcompat.app.a.b) getItem(i11), true);
            }
            ((c) view).a((androidx.appcompat.app.a.b) getItem(i11));
            return view;
        }
    }

    private class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((c) view).b().e();
            int childCount = ScrollingTabContainerView.this.f1818c.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = ScrollingTabContainerView.this.f1818c.getChildAt(i11);
                childAt.setSelected(childAt == view);
            }
        }
    }

    private class c extends LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f1829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.appcompat.app.a.b f1830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f1831c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f1832d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f1833e;

        public c(Context context, androidx.appcompat.app.a.b bVar, boolean z10) {
            super(context, null, R$attr.actionBarTabStyle);
            int[] iArr = {R.attr.background};
            this.f1829a = iArr;
            this.f1830b = bVar;
            j0 j0VarV = j0.v(context, null, iArr, R$attr.actionBarTabStyle, 0);
            if (j0VarV.s(0)) {
                setBackgroundDrawable(j0VarV.g(0));
            }
            j0VarV.x();
            if (z10) {
                setGravity(8388627);
            }
            c();
        }

        public void a(androidx.appcompat.app.a.b bVar) {
            this.f1830b = bVar;
            c();
        }

        public androidx.appcompat.app.a.b b() {
            return this.f1830b;
        }

        public void c() {
            androidx.appcompat.app.a.b bVar = this.f1830b;
            View viewB = bVar.b();
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f1833e = viewB;
                TextView textView = this.f1831c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1832d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1832d.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1833e;
            if (view != null) {
                removeView(view);
                this.f1833e = null;
            }
            Drawable drawableC = bVar.c();
            CharSequence charSequenceD = bVar.d();
            if (drawableC != null) {
                if (this.f1832d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1832d = appCompatImageView;
                }
                this.f1832d.setImageDrawable(drawableC);
                this.f1832d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1832d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1832d.setImageDrawable(null);
                }
            }
            boolean zIsEmpty = TextUtils.isEmpty(charSequenceD);
            if (zIsEmpty) {
                TextView textView2 = this.f1831c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1831c.setText((CharSequence) null);
                }
            } else {
                if (this.f1831c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R$attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1831c = appCompatTextView;
                }
                this.f1831c.setText(charSequenceD);
                this.f1831c.setVisibility(0);
            }
            ImageView imageView3 = this.f1832d;
            if (imageView3 != null) {
                imageView3.setContentDescription(bVar.a());
            }
            o0.a(this, zIsEmpty ? bVar.a() : null);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i11, int i12) {
            super.onMeasure(i11, i12);
            if (ScrollingTabContainerView.this.f1821f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i13 = ScrollingTabContainerView.this.f1821f;
                if (measuredWidth > i13) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), i12);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            boolean z11 = isSelected() != z10;
            super.setSelected(z10);
            if (z11 && z10) {
                sendAccessibilityEvent(4);
            }
        }
    }

    protected class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1835a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1836b;

        protected d() {
        }

        public d a(ViewPropertyAnimator viewPropertyAnimator, int i11) {
            this.f1836b = i11;
            ScrollingTabContainerView.this.f1825j = viewPropertyAnimator;
            return this;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1835a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1835a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f1825j = null;
            scrollingTabContainerView.setVisibility(this.f1836b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1835a = false;
        }
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        this.f1826k = new d();
        setHorizontalScrollBarEnabled(false);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        setContentHeight(aVarB.f());
        this.f1822g = aVarB.e();
        LinearLayoutCompat linearLayoutCompatB = b();
        this.f1818c = linearLayoutCompatB;
        addView(linearLayoutCompatB, new ViewGroup.LayoutParams(-2, -1));
    }

    private Spinner a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R$attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    private LinearLayoutCompat b() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R$attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        return linearLayoutCompat;
    }

    private boolean d() {
        Spinner spinner = this.f1819d;
        return spinner != null && spinner.getParent() == this;
    }

    private void e() {
        if (d()) {
            return;
        }
        if (this.f1819d == null) {
            this.f1819d = a();
        }
        removeView(this.f1818c);
        addView(this.f1819d, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1819d.getAdapter() == null) {
            this.f1819d.setAdapter((SpinnerAdapter) new a());
        }
        Runnable runnable = this.f1816a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1816a = null;
        }
        this.f1819d.setSelection(this.f1824i);
    }

    private boolean f() {
        if (!d()) {
            return false;
        }
        removeView(this.f1819d);
        addView(this.f1818c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1819d.getSelectedItemPosition());
        return false;
    }

    public void addTab(androidx.appcompat.app.a.b bVar, int i11, boolean z10) {
        c cVarC = c(bVar, false);
        this.f1818c.addView(cVarC, i11, new LinearLayoutCompat.a(0, -1, 1.0f));
        Spinner spinner = this.f1819d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z10) {
            cVarC.setSelected(true);
        }
        if (this.f1820e) {
            requestLayout();
        }
    }

    public void addTab(androidx.appcompat.app.a.b bVar, boolean z10) {
        c cVarC = c(bVar, false);
        this.f1818c.addView(cVarC, new LinearLayoutCompat.a(0, -1, 1.0f));
        Spinner spinner = this.f1819d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z10) {
            cVarC.setSelected(true);
        }
        if (this.f1820e) {
            requestLayout();
        }
    }

    public void animateToTab(int i11) {
        final View childAt = this.f1818c.getChildAt(i11);
        Runnable runnable = this.f1816a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: androidx.appcompat.widget.ScrollingTabContainerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScrollingTabContainerView.this.smoothScrollTo(childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2), 0);
                ScrollingTabContainerView.this.f1816a = null;
            }
        };
        this.f1816a = runnable2;
        post(runnable2);
    }

    public void animateToVisibility(int i11) {
        ViewPropertyAnimator viewPropertyAnimator = this.f1825j;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        if (i11 != 0) {
            ViewPropertyAnimator viewPropertyAnimatorAlpha = animate().alpha(0.0f);
            viewPropertyAnimatorAlpha.setDuration(200L);
            viewPropertyAnimatorAlpha.setInterpolator(f1815l);
            viewPropertyAnimatorAlpha.setListener(this.f1826k.a(viewPropertyAnimatorAlpha, i11));
            viewPropertyAnimatorAlpha.start();
            return;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAlpha2 = animate().alpha(1.0f);
        viewPropertyAnimatorAlpha2.setDuration(200L);
        viewPropertyAnimatorAlpha2.setInterpolator(f1815l);
        viewPropertyAnimatorAlpha2.setListener(this.f1826k.a(viewPropertyAnimatorAlpha2, i11));
        viewPropertyAnimatorAlpha2.start();
    }

    c c(androidx.appcompat.app.a.b bVar, boolean z10) {
        c cVar = new c(getContext(), bVar, z10);
        if (z10) {
            cVar.setBackgroundDrawable(null);
            cVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1823h));
        } else {
            cVar.setFocusable(true);
            if (this.f1817b == null) {
                this.f1817b = new b();
            }
            cVar.setOnClickListener(this.f1817b);
        }
        return cVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1816a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f1822g = aVarB.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1816a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i11, long j11) {
        ((c) view).b().e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        boolean z10 = mode == 1073741824;
        setFillViewport(z10);
        int childCount = this.f1818c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1821f = -1;
        } else {
            if (childCount > 2) {
                this.f1821f = (int) (View.MeasureSpec.getSize(i11) * 0.4f);
            } else {
                this.f1821f = View.MeasureSpec.getSize(i11) / 2;
            }
            this.f1821f = Math.min(this.f1821f, this.f1822g);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1823h, 1073741824);
        if (z10 || !this.f1820e) {
            f();
        } else {
            this.f1818c.measure(0, iMakeMeasureSpec);
            if (this.f1818c.getMeasuredWidth() > View.MeasureSpec.getSize(i11)) {
                e();
            } else {
                f();
            }
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i11, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z10 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1824i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void removeAllTabs() {
        this.f1818c.removeAllViews();
        Spinner spinner = this.f1819d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1820e) {
            requestLayout();
        }
    }

    public void removeTabAt(int i11) {
        this.f1818c.removeViewAt(i11);
        Spinner spinner = this.f1819d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1820e) {
            requestLayout();
        }
    }

    public void setAllowCollapse(boolean z10) {
        this.f1820e = z10;
    }

    public void setContentHeight(int i11) {
        this.f1823h = i11;
        requestLayout();
    }

    public void setTabSelected(int i11) {
        this.f1824i = i11;
        int childCount = this.f1818c.getChildCount();
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = this.f1818c.getChildAt(i12);
            boolean z10 = i12 == i11;
            childAt.setSelected(z10);
            if (z10) {
                animateToTab(i11);
            }
            i12++;
        }
        Spinner spinner = this.f1819d;
        if (spinner == null || i11 < 0) {
            return;
        }
        spinner.setSelection(i11);
    }

    public void updateTab(int i11) {
        ((c) this.f1818c.getChildAt(i11)).c();
        Spinner spinner = this.f1819d;
        if (spinner != null) {
            ((a) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1820e) {
            requestLayout();
        }
    }
}

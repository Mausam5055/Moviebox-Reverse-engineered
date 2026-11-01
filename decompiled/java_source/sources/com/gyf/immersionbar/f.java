package com.gyf.immersionbar;

import android.R;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes4.dex */
class f implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImmersionBar f33107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Window f33108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f33109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f33110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f33111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f33112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f33113g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f33114h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f33115i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f33116j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f33117k;

    f(ImmersionBar immersionBar) {
        this.f33112f = 0;
        this.f33113g = 0;
        this.f33114h = 0;
        this.f33115i = 0;
        this.f33107a = immersionBar;
        Window window = immersionBar.getWindow();
        this.f33108b = window;
        View decorView = window.getDecorView();
        this.f33109c = decorView;
        FrameLayout frameLayout = (FrameLayout) decorView.findViewById(R.id.content);
        if (immersionBar.isDialogFragment()) {
            Fragment supportFragment = immersionBar.getSupportFragment();
            if (supportFragment != null) {
                this.f33111e = supportFragment.getView();
            } else {
                android.app.Fragment fragment = immersionBar.getFragment();
                if (fragment != null) {
                    this.f33111e = fragment.getView();
                }
            }
        } else {
            View childAt = frameLayout.getChildAt(0);
            this.f33111e = childAt;
            if (childAt != null && (childAt instanceof DrawerLayout)) {
                this.f33111e = ((DrawerLayout) childAt).getChildAt(0);
            }
        }
        View view = this.f33111e;
        if (view != null) {
            this.f33112f = view.getPaddingLeft();
            this.f33113g = this.f33111e.getPaddingTop();
            this.f33114h = this.f33111e.getPaddingRight();
            this.f33115i = this.f33111e.getPaddingBottom();
        }
        View view2 = this.f33111e;
        this.f33110d = view2 != null ? view2 : frameLayout;
    }

    void a() {
        if (this.f33117k) {
            this.f33109c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f33117k = false;
        }
    }

    void b() {
        if (this.f33117k) {
            if (this.f33111e != null) {
                this.f33110d.setPadding(this.f33112f, this.f33113g, this.f33114h, this.f33115i);
            } else {
                this.f33110d.setPadding(this.f33107a.getPaddingLeft(), this.f33107a.getPaddingTop(), this.f33107a.getPaddingRight(), this.f33107a.getPaddingBottom());
            }
        }
    }

    void c(int i11) {
        this.f33108b.setSoftInputMode(i11);
        if (this.f33117k) {
            return;
        }
        this.f33109c.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f33117k = true;
    }

    void d() {
        this.f33116j = 0;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ImmersionBar immersionBar = this.f33107a;
        if (immersionBar == null || immersionBar.getBarParams() == null || !this.f33107a.getBarParams().F) {
            return;
        }
        a barConfig = this.f33107a.getBarConfig();
        int iD = barConfig.n() ? barConfig.d() : barConfig.g();
        Rect rect = new Rect();
        this.f33109c.getWindowVisibleDisplayFrame(rect);
        int height = this.f33110d.getHeight() - rect.bottom;
        if (height != this.f33116j) {
            this.f33116j = height;
            int i11 = 0;
            int i12 = 1;
            if (ImmersionBar.checkFitsSystemWindows(this.f33108b.getDecorView().findViewById(R.id.content))) {
                if (height - iD > iD) {
                    i11 = i12;
                }
            } else if (this.f33111e != null) {
                if (this.f33107a.getBarParams().E) {
                    height += this.f33107a.getActionBarHeight() + barConfig.k();
                }
                if (this.f33107a.getBarParams().f33092y) {
                    height += barConfig.k();
                }
                if (height > iD) {
                    i11 = height + this.f33115i;
                } else {
                    i12 = 0;
                }
                this.f33110d.setPadding(this.f33112f, this.f33113g, this.f33114h, i11);
                i11 = i12;
            } else {
                int paddingBottom = this.f33107a.getPaddingBottom();
                int i13 = height - iD;
                if (i13 > iD) {
                    paddingBottom = i13 + iD;
                    i11 = 1;
                }
                this.f33110d.setPadding(this.f33107a.getPaddingLeft(), this.f33107a.getPaddingTop(), this.f33107a.getPaddingRight(), paddingBottom);
            }
            this.f33107a.getBarParams().getClass();
            if (i11 == 0 && this.f33107a.getBarParams().f33077j != BarHide.FLAG_SHOW_BAR) {
                this.f33107a.setBar();
            }
            if (i11 == 0) {
                this.f33107a.fitsParentBarKeyboard();
            }
        }
    }
}

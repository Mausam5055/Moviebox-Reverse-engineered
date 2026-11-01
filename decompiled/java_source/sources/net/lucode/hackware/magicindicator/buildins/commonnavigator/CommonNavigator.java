package net.lucode.hackware.magicindicator.buildins.commonnavigator;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import g00.b;
import j00.c;
import j00.d;
import java.util.ArrayList;
import java.util.List;
import net.lucode.hackware.magicindicator.R$id;
import net.lucode.hackware.magicindicator.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class CommonNavigator extends FrameLayout implements h00.a, b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HorizontalScrollView f70342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinearLayout f70343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinearLayout f70344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f70345d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j00.a f70346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f70347f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f70348g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f70349h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f70350i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f70351j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f70352k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f70353l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70354m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f70355n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f70356o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f70357p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List f70358q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private DataSetObserver f70359r;

    /* JADX INFO: loaded from: classes7.dex */
    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            CommonNavigator.this.f70347f.m(CommonNavigator.this.f70346e.a());
            CommonNavigator.this.d();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }
    }

    public CommonNavigator(Context context) {
        super(context);
        this.f70350i = 0.5f;
        this.f70351j = true;
        this.f70352k = true;
        this.f70357p = true;
        this.f70358q = new ArrayList();
        this.f70359r = new a();
        b bVar = new b();
        this.f70347f = bVar;
        bVar.k(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        removeAllViews();
        View viewInflate = this.f70348g ? LayoutInflater.from(getContext()).inflate(R$layout.pager_navigator_layout_no_scroll, this) : LayoutInflater.from(getContext()).inflate(R$layout.pager_navigator_layout, this);
        this.f70342a = (HorizontalScrollView) viewInflate.findViewById(R$id.scroll_view);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.title_container);
        this.f70343b = linearLayout;
        linearLayout.setPadding(this.f70354m, 0, this.f70353l, 0);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R$id.indicator_container);
        this.f70344c = linearLayout2;
        if (this.f70355n) {
            linearLayout2.getParent().bringChildToFront(this.f70344c);
        }
        e();
    }

    private void e() {
        LinearLayout.LayoutParams layoutParams;
        int iG = this.f70347f.g();
        for (int i11 = 0; i11 < iG; i11++) {
            Object objC = this.f70346e.c(getContext(), i11);
            if (objC instanceof View) {
                View view = (View) objC;
                if (this.f70348g) {
                    layoutParams = new LinearLayout.LayoutParams(0, -1);
                    layoutParams.weight = this.f70346e.d(getContext(), i11);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-2, -1);
                }
                this.f70343b.addView(view, layoutParams);
            }
        }
        j00.a aVar = this.f70346e;
        if (aVar != null) {
            c cVarB = aVar.b(getContext());
            this.f70345d = cVarB;
            if (cVarB instanceof View) {
                this.f70344c.addView((View) this.f70345d, new FrameLayout.LayoutParams(-1, -1));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        this.f70358q.clear();
        int iG = this.f70347f.g();
        for (int i11 = 0; i11 < iG; i11++) {
            k00.a aVar = new k00.a();
            View childAt = this.f70343b.getChildAt(i11);
            if (childAt != 0) {
                aVar.f66555a = childAt.getLeft();
                aVar.f66556b = childAt.getTop();
                aVar.f66557c = childAt.getRight();
                int bottom = childAt.getBottom();
                aVar.f66558d = bottom;
                if (childAt instanceof j00.b) {
                    j00.b bVar = (j00.b) childAt;
                    aVar.f66559e = bVar.getContentLeft();
                    aVar.f66560f = bVar.getContentTop();
                    aVar.f66561g = bVar.getContentRight();
                    aVar.f66562h = bVar.getContentBottom();
                } else {
                    aVar.f66559e = aVar.f66555a;
                    aVar.f66560f = aVar.f66556b;
                    aVar.f66561g = aVar.f66557c;
                    aVar.f66562h = bottom;
                }
            }
            this.f70358q.add(aVar);
        }
    }

    public j00.a getAdapter() {
        return this.f70346e;
    }

    public int getLeftPadding() {
        return this.f70354m;
    }

    public c getPagerIndicator() {
        return this.f70345d;
    }

    public d getPagerTitleView(int i11) {
        LinearLayout linearLayout = this.f70343b;
        if (linearLayout == null) {
            return null;
        }
        return (d) linearLayout.getChildAt(i11);
    }

    public int getRightPadding() {
        return this.f70353l;
    }

    public float getScrollPivotX() {
        return this.f70350i;
    }

    public LinearLayout getTitleContainer() {
        return this.f70343b;
    }

    public boolean isAdjustMode() {
        return this.f70348g;
    }

    public boolean isEnablePivotScroll() {
        return this.f70349h;
    }

    public boolean isFollowTouch() {
        return this.f70352k;
    }

    public boolean isIndicatorOnTop() {
        return this.f70355n;
    }

    public boolean isReselectWhenLayout() {
        return this.f70357p;
    }

    public boolean isSkimOver() {
        return this.f70356o;
    }

    public boolean isSmoothScroll() {
        return this.f70351j;
    }

    @Override // h00.a
    public void notifyDataSetChanged() {
        j00.a aVar = this.f70346e;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override // h00.a
    public void onAttachToMagicIndicator() {
        d();
    }

    @Override // g00.b.a
    public void onDeselected(int i11, int i12) {
        LinearLayout linearLayout = this.f70343b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i11);
        if (childAt instanceof d) {
            ((d) childAt).onDeselected(i11, i12);
        }
    }

    @Override // h00.a
    public void onDetachFromMagicIndicator() {
    }

    @Override // g00.b.a
    public void onEnter(int i11, int i12, float f11, boolean z10) {
        LinearLayout linearLayout = this.f70343b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i11);
        if (childAt instanceof d) {
            ((d) childAt).onEnter(i11, i12, f11, z10);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        if (this.f70346e != null) {
            f();
            c cVar = this.f70345d;
            if (cVar != null) {
                cVar.onPositionDataProvide(this.f70358q);
            }
            if (this.f70357p && this.f70347f.f() == 0) {
                onPageSelected(this.f70347f.e());
                onPageScrolled(this.f70347f.e(), 0.0f, 0);
            }
        }
    }

    @Override // g00.b.a
    public void onLeave(int i11, int i12, float f11, boolean z10) {
        LinearLayout linearLayout = this.f70343b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i11);
        if (childAt instanceof d) {
            ((d) childAt).onLeave(i11, i12, f11, z10);
        }
    }

    @Override // h00.a
    public void onPageScrollStateChanged(int i11) {
        if (this.f70346e != null) {
            this.f70347f.h(i11);
            c cVar = this.f70345d;
            if (cVar != null) {
                cVar.onPageScrollStateChanged(i11);
            }
        }
    }

    @Override // h00.a
    public void onPageScrolled(int i11, float f11, int i12) {
        if (this.f70346e != null) {
            this.f70347f.i(i11, f11, i12);
            c cVar = this.f70345d;
            if (cVar != null) {
                cVar.onPageScrolled(i11, f11, i12);
            }
            if (this.f70342a == null || this.f70358q.size() <= 0 || i11 < 0 || i11 >= this.f70358q.size() || !this.f70352k) {
                return;
            }
            int iMin = Math.min(this.f70358q.size() - 1, i11);
            int iMin2 = Math.min(this.f70358q.size() - 1, i11 + 1);
            k00.a aVar = (k00.a) this.f70358q.get(iMin);
            k00.a aVar2 = (k00.a) this.f70358q.get(iMin2);
            float fA = aVar.a() - (this.f70342a.getWidth() * this.f70350i);
            this.f70342a.scrollTo((int) (fA + (((aVar2.a() - (this.f70342a.getWidth() * this.f70350i)) - fA) * f11)), 0);
        }
    }

    @Override // h00.a
    public void onPageSelected(int i11) {
        if (this.f70346e != null) {
            this.f70347f.j(i11);
            c cVar = this.f70345d;
            if (cVar != null) {
                cVar.onPageSelected(i11);
            }
        }
    }

    @Override // g00.b.a
    public void onSelected(int i11, int i12) {
        LinearLayout linearLayout = this.f70343b;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i11);
        if (childAt instanceof d) {
            ((d) childAt).onSelected(i11, i12);
        }
        if (this.f70348g || this.f70352k || this.f70342a == null || this.f70358q.size() <= 0) {
            return;
        }
        k00.a aVar = (k00.a) this.f70358q.get(Math.min(this.f70358q.size() - 1, i11));
        if (this.f70349h) {
            float fA = aVar.a() - (this.f70342a.getWidth() * this.f70350i);
            if (this.f70351j) {
                this.f70342a.smoothScrollTo((int) fA, 0);
                return;
            } else {
                this.f70342a.scrollTo((int) fA, 0);
                return;
            }
        }
        int scrollX = this.f70342a.getScrollX();
        int i13 = aVar.f66555a;
        if (scrollX > i13) {
            if (this.f70351j) {
                this.f70342a.smoothScrollTo(i13, 0);
                return;
            } else {
                this.f70342a.scrollTo(i13, 0);
                return;
            }
        }
        int scrollX2 = this.f70342a.getScrollX() + getWidth();
        int i14 = aVar.f66557c;
        if (scrollX2 < i14) {
            if (this.f70351j) {
                this.f70342a.smoothScrollTo(i14 - getWidth(), 0);
            } else {
                this.f70342a.scrollTo(i14 - getWidth(), 0);
            }
        }
    }

    public void setAdapter(j00.a aVar) {
        j00.a aVar2 = this.f70346e;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.g(this.f70359r);
        }
        this.f70346e = aVar;
        if (aVar == null) {
            this.f70347f.m(0);
            d();
            return;
        }
        aVar.f(this.f70359r);
        this.f70347f.m(this.f70346e.a());
        if (this.f70343b != null) {
            this.f70346e.e();
        }
    }

    public void setAdjustMode(boolean z10) {
        this.f70348g = z10;
    }

    public void setEnablePivotScroll(boolean z10) {
        this.f70349h = z10;
    }

    public void setFollowTouch(boolean z10) {
        this.f70352k = z10;
    }

    public void setIndicatorOnTop(boolean z10) {
        this.f70355n = z10;
    }

    public void setLeftPadding(int i11) {
        this.f70354m = i11;
    }

    public void setReselectWhenLayout(boolean z10) {
        this.f70357p = z10;
    }

    public void setRightPadding(int i11) {
        this.f70353l = i11;
    }

    public void setScrollPivotX(float f11) {
        this.f70350i = f11;
    }

    public void setSkimOver(boolean z10) {
        this.f70356o = z10;
        this.f70347f.l(z10);
    }

    public void setSmoothScroll(boolean z10) {
        this.f70351j = z10;
    }
}

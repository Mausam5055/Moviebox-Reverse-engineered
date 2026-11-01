package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.badge;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import j00.b;
import j00.d;
import l00.a;

/* JADX INFO: loaded from: classes7.dex */
public class BadgePagerTitleView extends FrameLayout implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f70422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f70423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f70424c;

    public BadgePagerTitleView(Context context) {
        super(context);
        this.f70424c = true;
    }

    public View getBadgeView() {
        return this.f70423b;
    }

    @Override // j00.b
    public int getContentBottom() {
        d dVar = this.f70422a;
        return dVar instanceof b ? ((b) dVar).getContentBottom() : getBottom();
    }

    @Override // j00.b
    public int getContentLeft() {
        return this.f70422a instanceof b ? getLeft() + ((b) this.f70422a).getContentLeft() : getLeft();
    }

    @Override // j00.b
    public int getContentRight() {
        return this.f70422a instanceof b ? getLeft() + ((b) this.f70422a).getContentRight() : getRight();
    }

    @Override // j00.b
    public int getContentTop() {
        d dVar = this.f70422a;
        return dVar instanceof b ? ((b) dVar).getContentTop() : getTop();
    }

    public d getInnerPagerTitleView() {
        return this.f70422a;
    }

    public a getXBadgeRule() {
        return null;
    }

    public a getYBadgeRule() {
        return null;
    }

    public boolean isAutoCancelBadge() {
        return this.f70424c;
    }

    @Override // j00.d
    public void onDeselected(int i11, int i12) {
        d dVar = this.f70422a;
        if (dVar != null) {
            dVar.onDeselected(i11, i12);
        }
    }

    @Override // j00.d
    public void onEnter(int i11, int i12, float f11, boolean z10) {
        d dVar = this.f70422a;
        if (dVar != null) {
            dVar.onEnter(i11, i12, f11, z10);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        Object obj = this.f70422a;
        if (!(obj instanceof View) || this.f70423b == null) {
            return;
        }
        int[] iArr = new int[14];
        View view = (View) obj;
        iArr[0] = view.getLeft();
        iArr[1] = view.getTop();
        iArr[2] = view.getRight();
        iArr[3] = view.getBottom();
        d dVar = this.f70422a;
        if (dVar instanceof b) {
            b bVar = (b) dVar;
            iArr[4] = bVar.getContentLeft();
            iArr[5] = bVar.getContentTop();
            iArr[6] = bVar.getContentRight();
            iArr[7] = bVar.getContentBottom();
        } else {
            for (int i15 = 4; i15 < 8; i15++) {
                iArr[i15] = iArr[i15 - 4];
            }
        }
        iArr[8] = view.getWidth() / 2;
        iArr[9] = view.getHeight() / 2;
        iArr[10] = iArr[4] / 2;
        iArr[11] = iArr[5] / 2;
        int i16 = iArr[6];
        iArr[12] = i16 + ((iArr[2] - i16) / 2);
        int i17 = iArr[7];
        iArr[13] = i17 + ((iArr[3] - i17) / 2);
    }

    @Override // j00.d
    public void onLeave(int i11, int i12, float f11, boolean z10) {
        d dVar = this.f70422a;
        if (dVar != null) {
            dVar.onLeave(i11, i12, f11, z10);
        }
    }

    @Override // j00.d
    public void onSelected(int i11, int i12) {
        d dVar = this.f70422a;
        if (dVar != null) {
            dVar.onSelected(i11, i12);
        }
        if (this.f70424c) {
            setBadgeView(null);
        }
    }

    public void setAutoCancelBadge(boolean z10) {
        this.f70424c = z10;
    }

    public void setBadgeView(View view) {
        if (this.f70423b == view) {
            return;
        }
        this.f70423b = view;
        removeAllViews();
        if (this.f70422a instanceof View) {
            addView((View) this.f70422a, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.f70423b != null) {
            addView(this.f70423b, new FrameLayout.LayoutParams(-2, -2));
        }
    }

    public void setInnerPagerTitleView(d dVar) {
        if (this.f70422a == dVar) {
            return;
        }
        this.f70422a = dVar;
        removeAllViews();
        if (this.f70422a instanceof View) {
            addView((View) this.f70422a, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.f70423b != null) {
            addView(this.f70423b, new FrameLayout.LayoutParams(-2, -2));
        }
    }

    public void setXBadgeRule(a aVar) {
    }

    public void setYBadgeRule(a aVar) {
    }
}

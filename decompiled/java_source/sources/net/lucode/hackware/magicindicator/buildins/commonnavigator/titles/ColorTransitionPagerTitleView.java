package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import i00.a;

/* JADX INFO: loaded from: classes.dex */
public class ColorTransitionPagerTitleView extends SimplePagerTitleView {
    public ColorTransitionPagerTitleView(Context context) {
        super(context);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onDeselected(int i11, int i12) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onEnter(int i11, int i12, float f11, boolean z10) {
        setTextColor(a.a(f11, this.f70421b, this.f70420a));
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onLeave(int i11, int i12, float f11, boolean z10) {
        setTextColor(a.a(f11, this.f70420a, this.f70421b));
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onSelected(int i11, int i12) {
    }
}

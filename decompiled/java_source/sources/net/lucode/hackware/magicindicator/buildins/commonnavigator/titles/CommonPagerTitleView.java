package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes7.dex */
public class CommonPagerTitleView extends FrameLayout implements j00.b {

    public interface a {
    }

    public interface b {
    }

    public CommonPagerTitleView(Context context) {
        super(context);
    }

    @Override // j00.b
    public int getContentBottom() {
        return getBottom();
    }

    @Override // j00.b
    public int getContentLeft() {
        return getLeft();
    }

    public a getContentPositionDataProvider() {
        return null;
    }

    @Override // j00.b
    public int getContentRight() {
        return getRight();
    }

    @Override // j00.b
    public int getContentTop() {
        return getTop();
    }

    public b getOnPagerTitleChangeListener() {
        return null;
    }

    @Override // j00.d
    public void onDeselected(int i11, int i12) {
    }

    @Override // j00.d
    public void onEnter(int i11, int i12, float f11, boolean z10) {
    }

    @Override // j00.d
    public void onLeave(int i11, int i12, float f11, boolean z10) {
    }

    @Override // j00.d
    public void onSelected(int i11, int i12) {
    }

    public void setContentPositionDataProvider(a aVar) {
    }

    public void setContentView(int i11) {
        setContentView(LayoutInflater.from(getContext()).inflate(i11, (ViewGroup) null), null);
    }

    public void setContentView(View view) {
        setContentView(view, null);
    }

    public void setContentView(View view, FrameLayout.LayoutParams layoutParams) {
        removeAllViews();
        if (view != null) {
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            addView(view, layoutParams);
        }
    }

    public void setOnPagerTitleChangeListener(b bVar) {
    }
}

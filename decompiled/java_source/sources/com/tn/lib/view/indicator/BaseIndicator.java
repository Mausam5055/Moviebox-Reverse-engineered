package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes4.dex */
public class BaseIndicator extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f41332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Paint f41333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f41334c;

    public BaseIndicator(Context context) {
        this(context, null);
    }

    public BaseIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseIndicator(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41332a = new a();
        Paint paint = new Paint();
        this.f41333b = paint;
        paint.setAntiAlias(true);
        this.f41333b.setColor(0);
        this.f41333b.setColor(this.f41332a.g());
    }

    public a getIndicatorConfig() {
        return this.f41332a;
    }

    @NonNull
    public View getIndicatorView() {
        if (this.f41332a.l()) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            int iB = this.f41332a.b();
            if (iB == 0) {
                layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            } else if (iB == 1) {
                layoutParams.gravity = 81;
            } else if (iB == 2) {
                layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END;
            }
            layoutParams.leftMargin = this.f41332a.f().f41359a;
            layoutParams.rightMargin = this.f41332a.f().f41361c;
            layoutParams.topMargin = this.f41332a.f().f41360b;
            layoutParams.bottomMargin = this.f41332a.f().f41362d;
            setLayoutParams(layoutParams);
        }
        return this;
    }

    public void onPageChanged(int i11, int i12) {
        this.f41332a.n(i11);
        this.f41332a.m(i12);
        requestLayout();
    }

    public void onPageScrollStateChanged(int i11) {
    }

    public void onPageScrolled(int i11, float f11, int i12) {
        this.f41334c = f11;
        invalidate();
    }

    public void onPageSelected(int i11) {
        this.f41332a.m(i11);
        invalidate();
    }
}

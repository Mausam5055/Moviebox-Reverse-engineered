package com.bytedance.adsdk.ugeno.uA.HiB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.Jcg.Dq;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends FrameLayout {
    private EjP Dq;
    private float EjP;
    private LinearLayout HiB;
    private Context Jcg;
    private float Sj;
    private double TKC;
    private float sP;
    private LinearLayout vS;

    public Sj(Context context) {
        super(context);
        this.Jcg = context;
        this.HiB = new LinearLayout(context);
        this.vS = new LinearLayout(context);
        this.HiB.setOrientation(0);
        this.HiB.setGravity(GravityCompat.START);
        this.vS.setOrientation(0);
        this.vS.setGravity(GravityCompat.START);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.Sj, (int) this.sP);
        float f11 = this.EjP;
        layoutParams.leftMargin = (int) f11;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = (int) f11;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public void Sj(double d11, int i11, int i12, float f11, int i13) {
        removeAllViews();
        this.HiB.removeAllViews();
        this.vS.removeAllViews();
        this.Sj = (int) Dq.Sj(this.Jcg, f11);
        this.sP = (int) Dq.Sj(this.Jcg, f11);
        this.TKC = d11;
        this.EjP = i13;
        for (int i14 = 0; i14 < 5; i14++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setImageResource(com.bytedance.adsdk.ugeno.Jcg.EjP.Sj(this.Jcg, "tt_ugen_rating_star"));
            starImageView.setColorFilter(i11, PorterDuff.Mode.SRC_IN);
            this.vS.addView(starImageView);
        }
        for (int i15 = 0; i15 < 5; i15++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageResource(com.bytedance.adsdk.ugeno.Jcg.EjP.Sj(this.Jcg, "tt_ugen_rating_star"));
            starImageView2.setColorFilter(i12);
            this.HiB.addView(starImageView2);
        }
        addView(this.HiB);
        addView(this.vS);
        requestLayout();
    }

    public void Sj(EjP ejP) {
        this.Dq = ejP;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Sj(i11, i12, i13, i14);
        }
        super.onLayout(z10, i11, i12, i13, i14);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Sj(i11, i12);
        }
        super.onMeasure(i11, i12);
        this.HiB.measure(i11, i12);
        double dFloor = Math.floor(this.TKC);
        float f11 = this.EjP;
        float f12 = this.Sj;
        this.vS.measure(View.MeasureSpec.makeMeasureSpec((int) ((((double) (f11 + f11 + f12)) * dFloor) + ((double) f11) + ((this.TKC - dFloor) * ((double) f12))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.HiB.getMeasuredHeight(), 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.sP(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }
}

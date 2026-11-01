package com.bytedance.sdk.component.adexpress.vS;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends zR {
    private ImageView EjP;
    private int HiB;
    private TextView Sj;
    private ImageView TKC;
    private ImageView sP;
    private AnimatorSet vS;

    public Dq(Context context) {
        super(context);
        this.vS = new AnimatorSet();
        sP(context);
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.setDuration(2000L);
        objectAnimatorOfInt.setRepeatCount(-1);
        objectAnimatorOfInt.start();
    }

    private void sP(Context context) {
        addView(com.bytedance.sdk.component.adexpress.TKC.Sj.sP(context));
        this.sP = (ImageView) findViewById(2097610751);
        this.TKC = (ImageView) findViewById(2097610750);
        this.EjP = (ImageView) findViewById(2097610749);
        this.Sj = (TextView) findViewById(2097610748);
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.zR
    public void Sj() {
        EjP();
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.zR
    protected void Sj(Context context) {
    }

    public float getAlphaColor() {
        return this.HiB;
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.zR
    public void sP() {
        this.vS.cancel();
    }

    public void setAlphaColor(int i11) {
        if (i11 < 0 || i11 > 60) {
            return;
        }
        int i12 = i11 + 195;
        ImageView imageView = this.EjP;
        int iRgb = Color.rgb(i12, i12, i12);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(iRgb, mode);
        int i13 = ((i11 + 20) % 60) + 195;
        this.TKC.setColorFilter(Color.rgb(i13, i13, i13), mode);
        int i14 = ((i11 + 40) % 60) + 195;
        this.sP.setColorFilter(Color.rgb(i14, i14, i14), mode);
    }

    public void setButtonText(String str) {
        if (this.Sj == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.Sj.setText(str);
    }
}

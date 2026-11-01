package com.mbridge.msdk.dycreator.baseview.rewardpopview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class MBGradientAndShadowTextView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f34713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearGradient f34717e;
    public float mShadowDx;
    public float mShadowDy;
    public float mShadowRadius;

    public static class GradientAndShadowParameters {
        public int gradientEndColor;
        public int gradientStartColor;
        public int shadowColor;
        public int textSize = 40;
        public float shadowRadius = 3.0f;
        public float shadowDx = 1.5f;
        public float shadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context) {
        super(context);
        this.f34713a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f34714b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f34715c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f34716d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
        a();
    }

    public MBGradientAndShadowTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34713a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f34714b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f34715c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f34716d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34713a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f34714b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f34715c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f34716d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f34713a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f34714b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f34715c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f34716d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context, GradientAndShadowParameters gradientAndShadowParameters) {
        super(context);
        this.f34713a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f34714b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f34715c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f34716d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
        if (gradientAndShadowParameters != null) {
            this.f34713a = gradientAndShadowParameters.gradientStartColor;
            this.f34714b = gradientAndShadowParameters.gradientEndColor;
            this.f34715c = gradientAndShadowParameters.shadowColor;
            this.f34716d = gradientAndShadowParameters.textSize;
            this.mShadowRadius = gradientAndShadowParameters.shadowRadius;
            this.mShadowDx = gradientAndShadowParameters.shadowDx;
            this.mShadowDy = gradientAndShadowParameters.shadowDy;
        }
        a();
    }

    private void a() {
        setTextSize(this.f34716d);
        setTypeface(Typeface.defaultFromStyle(3));
        this.f34717e = new LinearGradient(0.0f, 0.0f, 0.0f, getTextSize(), this.f34713a, this.f34714b, Shader.TileMode.CLAMP);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        getPaint().setShader(null);
        getPaint().setShadowLayer(3.0f, 1.5f, 1.8f, this.f34715c);
        super.onDraw(canvas);
        getPaint().clearShadowLayer();
        getPaint().setShader(this.f34717e);
        super.onDraw(canvas);
    }
}

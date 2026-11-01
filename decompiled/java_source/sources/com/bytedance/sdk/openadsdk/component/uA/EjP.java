package com.bytedance.sdk.openadsdk.component.uA;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TEQ;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends TKC {
    private final com.bytedance.sdk.openadsdk.core.HiB.TKC Fmk;
    private final com.bytedance.sdk.openadsdk.core.HiB.Dq Zq;
    private final com.bytedance.sdk.openadsdk.core.HiB.HiB dNu;
    private final Zq sef;
    private final com.bytedance.sdk.openadsdk.core.HiB.EjP uvD;

    private static final class Sj extends Drawable {
        private static final int HiB = Color.parseColor("#b0000000");
        private static final int vS = Color.parseColor("#40000000");
        private final boolean EjP;
        private final RectF Sj = new RectF();
        private final Paint sP = new Paint();
        private final Path TKC = new Path();

        public Sj(Context context) {
            this.EjP = com.bytedance.sdk.component.adexpress.EjP.sP.Sj(context);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            canvas.drawPath(this.TKC, this.sP);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(@NonNull Rect rect) {
            float[] fArr;
            super.onBoundsChange(rect);
            this.Sj.set(rect);
            this.TKC.reset();
            int iHeight = rect.height() / 2;
            Path path = this.TKC;
            RectF rectF = this.Sj;
            if (this.EjP) {
                float f11 = iHeight;
                fArr = new float[]{f11, f11, 0.0f, 0.0f, 0.0f, 0.0f, f11, f11};
            } else {
                float f12 = iHeight;
                fArr = new float[]{0.0f, 0.0f, f12, f12, f12, f12, 0.0f, 0.0f};
            }
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
            float f13 = rect.right;
            boolean z10 = this.EjP;
            this.sP.setShader(new LinearGradient(0.0f, 0.0f, f13, 0.0f, new int[]{z10 ? vS : HiB, z10 ? HiB : vS}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i11) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
        }
    }

    public EjP(Context context, sU sUVar) {
        super(context);
        setId(520093753);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(0);
        int iSP = FPG.sP(context, 8.0f);
        int iSP2 = FPG.sP(context, 9.0f);
        int iSP3 = FPG.sP(context, 10.0f);
        int iSP4 = FPG.sP(context, 40.0f);
        com.bytedance.sdk.openadsdk.core.widget.TKC tkc = new com.bytedance.sdk.openadsdk.core.widget.TKC(context);
        this.f21012aa = tkc;
        tkc.setPadding(iSP2, 0, iSP2, 0);
        this.f21012aa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(FPG.sP(context, 32.0f), FPG.sP(context, 14.0f));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, iSP3, iSP3);
        this.f21012aa.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        this.Fmk = tkc2;
        tkc2.setBackgroundColor(-1);
        tkc2.setId(520093758);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, FPG.sP(context, 107.0f));
        layoutParams2.addRule(12);
        tkc2.setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(0);
        hiB.setGravity(16);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        hiB.setLayoutParams(layoutParams3);
        tkc2.addView(hiB);
        uvD uvd = new uvD(context);
        this.vS = uvd;
        uvd.setId(520093759);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(iSP4, iSP4);
        layoutParams4.rightMargin = iSP;
        layoutParams4.setMarginEnd(iSP);
        this.vS.setLayoutParams(layoutParams4);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.Jcg = dq2;
        dq2.setId(520093761);
        this.Jcg.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = this.Jcg;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq3.setEllipsize(truncateAt);
        this.Jcg.setMaxLines(2);
        this.Jcg.setTextColor(Color.parseColor("#161823"));
        this.Jcg.setTextSize(30.0f);
        hiB.addView(this.vS);
        hiB.addView(this.Jcg);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc3 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(2, tkc2.getId());
        layoutParams5.addRule(10);
        tkc3.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        this.Sj = ejP;
        ejP.setId(520093754);
        this.Sj.setScaleType(ImageView.ScaleType.CENTER_CROP);
        tkc3.addView(this.Sj, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc4 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        this.sP = tkc4;
        tkc4.setId(520093755);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.gravity = 17;
        tkc3.addView(this.sP, layoutParams6);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        this.TKC = ejP2;
        ejP2.setId(520093756);
        tkc3.addView(this.TKC, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.HiB = dq4;
        dq4.setId(520093717);
        this.HiB.setBackground(TEQ.Sj(context, Color.parseColor("#b3000000"), 24));
        this.HiB.setEllipsize(truncateAt);
        this.HiB.setGravity(17);
        this.HiB.setSingleLine(true);
        this.HiB.setText(ib.Sj(context, "tt_video_download_apk"));
        this.HiB.setTextColor(-1);
        this.HiB.setTextSize(1, 16.0f);
        this.HiB.setTag("open_ad_click_button_tag");
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(FPG.sP(context, 236.0f), FPG.sP(context, 48.0f));
        layoutParams7.gravity = 81;
        layoutParams7.bottomMargin = FPG.sP(context, 32.0f);
        tkc3.addView(this.HiB, layoutParams7);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        this.dNu = hiB2;
        hiB2.setOrientation(0);
        hiB2.setGravity(16);
        hiB2.setBackground(new Sj(context));
        hiB2.setPadding(FPG.sP(context, 16.0f), FPG.sP(context, 8.0f), FPG.sP(context, 16.0f), FPG.sP(context, 8.0f));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(10);
        layoutParams8.topMargin = FPG.sP(context, 90.0f);
        hiB2.setLayoutParams(layoutParams8);
        uvD uvd2 = new uvD(context);
        this.uvD = uvd2;
        hiB2.addView(uvd2, new LinearLayout.LayoutParams(FPG.sP(context, 36.0f), FPG.sP(context, 36.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB3.setOrientation(1);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams9.leftMargin = FPG.sP(context, 8.0f);
        hiB2.addView(hiB3, layoutParams9);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq5 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.Zq = dq5;
        dq5.setTextColor(-1);
        hiB3.addView(dq5, new LinearLayout.LayoutParams(-2, -2));
        Zq zq2 = new Zq(context, true);
        this.sef = zq2;
        hiB3.addView(zq2, new LinearLayout.LayoutParams(-2, -2));
        PAGLogoView pAGLogoViewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(context, sUVar);
        this.EjP = pAGLogoViewCreatePAGLogoViewByMaterial;
        pAGLogoViewCreatePAGLogoViewByMaterial.setId(520093757);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, FPG.sP(context, 14.0f));
        layoutParams10.gravity = 83;
        tkc3.addView(this.EjP, layoutParams10);
        addView(tkc3);
        addView(this.f21012aa);
        addView(tkc2);
        addView(this.Dq);
        addView(hiB2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.EjP getAdIconView() {
        return this.uvD;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.Dq getAdTitleTextView() {
        return this.Zq;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.HiB getOverlayLayout() {
        return this.dNu;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public Zq getScoreBar() {
        return this.sef;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public View getUserInfo() {
        return this.Fmk;
    }
}

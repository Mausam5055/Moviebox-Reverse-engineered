package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.uvD;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TEQ extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    protected com.bytedance.sdk.openadsdk.core.HiB.Dq EjP;
    protected com.bytedance.sdk.openadsdk.core.HiB.Dq HiB;
    protected com.bytedance.sdk.openadsdk.core.HiB.TKC Sj;
    protected uvD TKC;
    protected com.bytedance.sdk.openadsdk.core.HiB.EjP sP;
    protected com.bytedance.sdk.openadsdk.core.HiB.Dq vS;

    public TEQ(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Sj(context);
    }

    protected PAGLogoView Dq(Context context) {
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        pAGLogoView.setId(520093739);
        return pAGLogoView;
    }

    protected com.bytedance.sdk.openadsdk.core.HiB.Dq EjP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_backup_btn_1"));
        dq2.setGravity(17);
        dq2.setText(ib.Sj(context, "tt_video_download_apk"));
        dq2.setTextColor(-1);
        dq2.setTextSize(2, 14.0f);
        return dq2;
    }

    protected com.bytedance.sdk.openadsdk.core.HiB.TKC HiB(Context context) {
        return new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
    }

    protected uvD Jcg(Context context) {
        uvD uvd = new uvD(context);
        uvd.setScaleType(ImageView.ScaleType.FIT_XY);
        uvd.setBackgroundColor(0);
        return uvd;
    }

    protected abstract void Sj(Context context);

    protected com.bytedance.sdk.openadsdk.core.HiB.Dq TKC(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setEllipsize(TextUtils.TruncateAt.END);
        dq2.setMaxLines(1);
        dq2.setSingleLine();
        dq2.setTextColor(Color.parseColor("#FF999999"));
        dq2.setTextSize(2, 12.0f);
        return dq2;
    }

    public FrameLayout getTtAdContainer() {
        return this.Sj;
    }

    public TextView getTtFullAdAppName() {
        return this.EjP;
    }

    public TextView getTtFullAdDesc() {
        return this.HiB;
    }

    public TextView getTtFullAdDownload() {
        return this.vS;
    }

    public uvD getTtFullAdIcon() {
        return this.TKC;
    }

    public ImageView getTtFullImg() {
        return this.sP;
    }

    protected com.bytedance.sdk.openadsdk.core.HiB.Dq sP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setEllipsize(TextUtils.TruncateAt.END);
        dq2.setMaxLines(1);
        dq2.setTextColor(Color.parseColor("#FF999999"));
        dq2.setTextSize(2, 16.0f);
        return dq2;
    }

    protected com.bytedance.sdk.openadsdk.core.HiB.EjP vS(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return ejP;
    }
}

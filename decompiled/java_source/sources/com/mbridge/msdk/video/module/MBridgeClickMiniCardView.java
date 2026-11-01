package com.mbridge.msdk.video.module;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.b;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeClickMiniCardView extends MBridgeH5EndCardView {
    private boolean P;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                o0.a(MBridgeBaseView.TAG, "webviewshow");
                String string = "";
                try {
                    int[] iArr = new int[2];
                    MBridgeClickMiniCardView.this.f39276p.getLocationOnScreen(iArr);
                    o0.b(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("startX", t0.b(c.m().d(), (float) iArr[0]));
                    jSONObject.put("startY", t0.b(c.m().d(), (float) iArr[1]));
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                }
                f.a().a((WebView) MBridgeClickMiniCardView.this.f39276p, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public MBridgeClickMiniCardView(Context context) {
        super(context);
        this.P = false;
    }

    public MBridgeClickMiniCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.P = false;
    }

    private void setContentLayoutParams(View view) {
        int iG = t0.g(this.f39225a);
        int iF = (int) ((t0.f(this.f39225a) * 0.7f) + 0.5f);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) ((iG * 0.7f) + 0.5f);
        layoutParams.height = iF;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        return layoutParams;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected String getURL() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null) {
            return null;
        }
        CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
        String strC = rewardTemplateMode != null ? rewardTemplateMode.c() : null;
        if (TextUtils.isEmpty(strC) || !strC.contains(".zip")) {
            return strC;
        }
        String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(strC);
        return !TextUtils.isEmpty(h5ResAddress) ? h5ResAddress : strC;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected void j() {
        super.j();
        if (this.f39229e) {
            setBackgroundResource(findColor("mbridge_reward_minicard_bg"));
            setContentLayoutParams(this.f39273m);
            setClickable(true);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        if (this.f39229e) {
            setContentLayoutParams(this.f39273m);
        }
        super.onSelfConfigurationChanged(configuration);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(b bVar) {
        super.preLoadData(bVar);
        setCloseVisible(0);
    }

    public void resizeMiniCard(int i11, int i12) {
        View viewFindViewById = ((Activity) this.f39225a).getWindow().findViewById(R.id.content);
        int width = viewFindViewById.getWidth();
        int height = viewFindViewById.getHeight();
        if (i11 <= 0 || i12 <= 0 || i11 > width || i12 > height) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f39273m.getLayoutParams();
        layoutParams.width = i11;
        layoutParams.height = i12;
        this.f39273m.setLayoutParams(layoutParams);
    }

    public void setMBridgeClickMiniCardViewClickable(boolean z10) {
        setClickable(z10);
    }

    public void setMBridgeClickMiniCardViewTransparent() {
        setBackgroundColor(0);
    }

    public void setMiniCardLocation(int i11, int i12, int i13, int i14) {
        this.P = true;
        resizeMiniCard(i13, i14);
    }

    public void setRadius(int i11) {
        if (i11 > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(t0.a(getContext(), i11));
            gradientDrawable.setColor(-1);
            this.f39276p.setBackground(gradientDrawable);
            this.f39276p.setClipToOutline(true);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.f39276p;
        if (windVaneWebView != null) {
            windVaneWebView.post(new a());
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
            d.b().a("2000133", this.f39226b, eVar);
        }
    }
}

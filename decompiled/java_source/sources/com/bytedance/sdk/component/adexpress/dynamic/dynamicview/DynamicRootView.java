package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicRootView extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.EjP, com.bytedance.sdk.component.adexpress.theme.Sj {
    private String bgColor;
    private Map<Integer, String> bgMaterialCenterCalcColor;
    private HiB dynamicBaseWidget;
    private int logoUnionHeight;
    private Context mContext;
    private com.bytedance.sdk.component.adexpress.dynamic.vS.Sj mDynamicClickListener;
    boolean mIsMute;
    private ThemeStatusBroadcastReceiver mReceiver;
    private com.bytedance.sdk.component.adexpress.sP.Ym mRenderListener;
    private com.bytedance.sdk.component.adexpress.sP.Fmk mRenderRequest;
    private ViewGroup mTimeOut;
    private com.bytedance.sdk.component.adexpress.dynamic.sP muteListener;
    protected final com.bytedance.sdk.component.adexpress.sP.sef renderResult;
    private int scoreCountWithIcon;
    private List<com.bytedance.sdk.component.adexpress.dynamic.TKC> timeOutListener;
    private int timedown;
    private com.bytedance.sdk.component.adexpress.dynamic.HiB videoListener;
    public View videoView;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.sP.Fmk fmk, com.bytedance.sdk.component.adexpress.dynamic.vS.Sj sj2) {
        super(context);
        this.mTimeOut = null;
        this.timedown = 0;
        this.timeOutListener = new ArrayList();
        this.logoUnionHeight = 0;
        this.scoreCountWithIcon = 0;
        this.mContext = context;
        com.bytedance.sdk.component.adexpress.sP.sef sefVar = new com.bytedance.sdk.component.adexpress.sP.sef();
        this.renderResult = sefVar;
        sefVar.Sj(2);
        this.mDynamicClickListener = sj2;
        sj2.Sj(this);
        this.mReceiver = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.Sj(this);
        this.mIsMute = z10;
        this.mRenderRequest = fmk;
    }

    private void checkCanOpenLandingPage(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB hiBTEQ = dq2.TEQ();
        if (hiBTEQ == null || (vSVarHiB = hiBTEQ.HiB()) == null) {
            return;
        }
        this.renderResult.sP(vSVarHiB.Aw());
    }

    private boolean checkSizeValid() {
        HiB hiB = this.dynamicBaseWidget;
        return hiB.HiB > 0.0f && hiB.vS > 0.0f;
    }

    private void setClipChildren(ViewGroup viewGroup, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null || !dq2.kF()) {
            return;
        }
        viewGroup2.setClipChildren(false);
        viewGroup2.setClipToPadding(false);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    public void beginHideFromVisible() {
        beginShowFromInvisible(this.dynamicBaseWidget, 4);
    }

    public void beginShowFromInvisible() {
        beginShowFromInvisible(this.dynamicBaseWidget, 0);
    }

    public void beginShowFromInvisible(HiB hiB, int i11) {
        if (hiB == null) {
            return;
        }
        if (hiB.getBeginInvisibleAndShow()) {
            hiB.setVisibility(i11);
            View view = hiB.Zq;
            if (view != null) {
                view.setVisibility(i11);
            }
        }
        int childCount = hiB.getChildCount();
        if (childCount <= 0) {
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            if (hiB.getChildAt(i12) instanceof HiB) {
                beginShowFromInvisible((HiB) hiB.getChildAt(i12), i11);
            }
        }
    }

    public void callBackRenderFail(int i11, String str) {
        this.renderResult.Sj(false);
        this.renderResult.sP(i11);
        this.renderResult.Sj(str);
        this.mRenderListener.Sj(this.renderResult);
    }

    public String getBgColor() {
        return this.bgColor;
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.bgMaterialCenterCalcColor;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.vS.Sj getDynamicClickListener() {
        return this.mDynamicClickListener;
    }

    public int getLogoUnionHeight() {
        return this.logoUnionHeight;
    }

    public com.bytedance.sdk.component.adexpress.sP.Ym getRenderListener() {
        return this.mRenderListener;
    }

    public com.bytedance.sdk.component.adexpress.sP.Fmk getRenderRequest() {
        return this.mRenderRequest;
    }

    public int getScoreCountWithIcon() {
        return this.scoreCountWithIcon;
    }

    public ViewGroup getTimeOut() {
        return this.mTimeOut;
    }

    public List<com.bytedance.sdk.component.adexpress.dynamic.TKC> getTimeOutListener() {
        return this.timeOutListener;
    }

    public int getTimedown() {
        return this.timedown;
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.Sj
    public void onThemeChanged(int i11) {
        HiB hiB = this.dynamicBaseWidget;
        if (hiB == null) {
            return;
        }
        hiB.Sj(i11);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void onvideoComplate() {
        try {
            this.videoListener.Sj();
        } catch (Exception unused) {
        }
    }

    public void render(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, int i11) {
        this.dynamicBaseWidget = renderDynamicView(dq2, this, i11);
        this.renderResult.Sj(true);
        this.renderResult.Sj(this.dynamicBaseWidget.HiB);
        this.renderResult.sP(this.dynamicBaseWidget.vS);
        this.renderResult.Sj(this.videoView);
        this.mRenderListener.Sj(this.renderResult);
    }

    public HiB renderDynamicView(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, ViewGroup viewGroup, int i11) {
        if (dq2 == null) {
            return null;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm = dq2.Ym();
        HiB hiBSj = com.bytedance.sdk.component.adexpress.dynamic.Sj.sP.Sj(this.mContext, this, dq2);
        if (hiBSj instanceof LD) {
            callBackRenderFail(i11 == 3 ? 128 : Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, "unknow widget");
            return null;
        }
        checkCanOpenLandingPage(dq2);
        hiBSj.TKC();
        if (viewGroup != null) {
            viewGroup.addView(hiBSj);
            setClipChildren(viewGroup, dq2);
        }
        if (listYm == null || listYm.size() <= 0) {
            return null;
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = listYm.iterator();
        while (it.hasNext()) {
            renderDynamicView(it.next(), hiBSj, i11);
        }
        return hiBSj;
    }

    public void setBgColor(String str) {
        this.bgColor = str;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.bgMaterialCenterCalcColor = map;
    }

    public void setDislikeView(View view) {
        this.mDynamicClickListener.sP(view);
    }

    public void setLogoUnionHeight(int i11) {
        this.logoUnionHeight = i11;
    }

    public void setMuteListener(com.bytedance.sdk.component.adexpress.dynamic.sP sPVar) {
        this.muteListener = sPVar;
    }

    public void setRenderListener(com.bytedance.sdk.component.adexpress.sP.Ym ym2) {
        this.mRenderListener = ym2;
        this.mDynamicClickListener.Sj(ym2);
    }

    public void setScoreCountWithIcon(int i11) {
        this.scoreCountWithIcon = i11;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setSoundMute(boolean z10) {
        com.bytedance.sdk.component.adexpress.dynamic.sP sPVar = this.muteListener;
        if (sPVar != null) {
            sPVar.setSoundMute(z10);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setTime(CharSequence charSequence, int i11, int i12, boolean z10) {
        for (int i13 = 0; i13 < this.timeOutListener.size(); i13++) {
            if (this.timeOutListener.get(i13) != null) {
                this.timeOutListener.get(i13).Sj(charSequence, i11 == 1, i12, z10);
            }
        }
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.mTimeOut = viewGroup;
    }

    public void setTimeOutListener(com.bytedance.sdk.component.adexpress.dynamic.TKC tkc) {
        this.timeOutListener.add(tkc);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setTimeUpdate(int i11) {
        this.videoListener.setTimeUpdate(i11);
    }

    public void setTimedown(int i11) {
        this.timedown = i11;
    }

    public void setVideoListener(com.bytedance.sdk.component.adexpress.dynamic.HiB hiB) {
        this.videoListener = hiB;
    }

    public void updateRenderInfoForVideo(double d11, double d12, double d13, double d14, float f11) {
        this.renderResult.TKC(d11);
        this.renderResult.EjP(d12);
        this.renderResult.HiB(d13);
        this.renderResult.vS(d14);
        this.renderResult.Sj(f11);
        this.renderResult.sP(f11);
        this.renderResult.TKC(f11);
        this.renderResult.EjP(f11);
    }
}

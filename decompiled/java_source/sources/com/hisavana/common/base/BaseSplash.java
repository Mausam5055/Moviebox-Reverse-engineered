package com.hisavana.common.base;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IadView;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.utils.AdLogUtil;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseSplash<T extends View> extends BaseAd implements IadView {
    View logoLayout;
    protected Float mLogoLayoutHeightRatio;
    private int orientation;
    T splash;
    protected int splashMode;

    public BaseSplash(Context context, Network network) {
        super(context, network);
        this.splashMode = 1;
        this.orientation = 1;
    }

    private void addLogoLayout(WrapTadView wrapTadView, T t11, View view) {
        int i11;
        if (view == null || t11 == null || wrapTadView == null) {
            return;
        }
        int iF = h.f();
        if (iF > 0) {
            Float f11 = this.mLogoLayoutHeightRatio;
            float fFloatValue = f11 != null ? f11.floatValue() : 0.2f;
            AdLogUtil.Log().i("BaseSplash", "mediation sdk addLogoLayout heightRatio = " + fFloatValue);
            i11 = (int) (((float) iF) * fFloatValue);
        } else {
            i11 = 0;
        }
        if (i11 == 0) {
            return;
        }
        AdLogUtil.Log().d("BaseSplash", "addLogoLayout logoHeight = " + i11 + " screenHeight = " + iF);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, i11);
        t11.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i11);
        layoutParams2.addRule(12);
        wrapTadView.addView(view, layoutParams2);
    }

    public void addLogoLayout(View view) {
        this.logoLayout = view;
    }

    public boolean canShow() {
        return true;
    }

    protected boolean checkNeedAddLogo() {
        return false;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        T t11 = this.splash;
        if (t11 != null && t11.getParent() != null && (this.splash.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.splash.getParent()).removeView(this.splash);
        }
        View view = this.logoLayout;
        if (view != null && view.getParent() != null && (this.logoLayout.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.logoLayout.getParent()).removeView(this.logoLayout);
        }
        this.logoLayout = null;
        this.splash = null;
        super.destroyAd();
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public int getAdType() {
        return 4;
    }

    protected float getLogoHeightDefaultRatio() {
        return 0.2f;
    }

    public View getLogoLayout() {
        return this.logoLayout;
    }

    public int getOrientation() {
        return this.orientation;
    }

    protected abstract T getSplash();

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        return false;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.Iad
    public void loadAd() {
        T t11 = (T) getSplash();
        this.splash = t11;
        if (t11 != null) {
            super.loadAd();
            onSplashStartLoad();
        }
    }

    protected void onSkipClick() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onSkipClick();
        }
    }

    protected abstract void onSplashShow();

    protected abstract void onSplashStartLoad();

    protected void onTimeReach() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onTimeReach();
        }
    }

    public void pauseAd() {
    }

    public void resumeAd() {
    }

    public void setLogoLayoutHeightRatio(Float f11) {
        this.mLogoLayoutHeightRatio = f11;
    }

    public void setOrientation(int i11) {
        this.orientation = i11;
    }

    public void setSplashMode(int i11) {
        this.splashMode = i11;
    }

    @Override // com.hisavana.common.interfacz.IadView
    public void show(WrapTadView wrapTadView, String str, String str2) {
        T t11 = this.splash;
        if (t11 == null || wrapTadView == null) {
            AdLogUtil.Log().w("BaseSplash", "Splash is null " + getLogString());
            onTimeReach();
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        wrapTadView.removeAllViews();
        if (t11.getParent() != null && (t11.getParent() instanceof ViewGroup)) {
            ((ViewGroup) t11.getParent()).removeView(t11);
        }
        wrapTadView.addView(t11, layoutParams);
        wrapTadView.setVisibility(0);
        if (checkNeedAddLogo()) {
            addLogoLayout(wrapTadView, t11, this.logoLayout);
        }
        onSplashShow();
        logTrigerShow(str, str2);
    }
}

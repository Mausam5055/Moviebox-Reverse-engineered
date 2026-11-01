package com.hisavana.common.base;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.IadView;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseBanner<T extends View> extends BaseAd implements IadView {
    private final String TAG;
    protected boolean isCloseDirectly;
    protected boolean isHideAdCloseView;
    protected int mBannerAdMaxHeight;
    protected int mBannerAdWidth;

    public BaseBanner(Context context, Network network) {
        super(context, network);
        this.TAG = "BaseBanner";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.hisavana.common.base.BaseAd
    public void adFailedToLoad(TAdErrorCode tAdErrorCode) {
        if (!this.isLoaded) {
            super.adFailedToLoad(tAdErrorCode);
            return;
        }
        Bundle bundle = new Bundle();
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : 30003;
        bundle.putInt("error_code", errorCode != 0 ? errorCode : 30003);
        bundle.putString(TrackingKey.ERROR_MESSAGE, tAdErrorCode == null ? "null" : TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        adReturnTracking(bundle);
        AdLogUtil.Log().e("BaseBanner", "banner have been Loaded, but refresh banner failed " + getLogString());
    }

    @Override // com.hisavana.common.base.BaseAd
    public void adLoaded() {
        if (!this.isLoaded) {
            super.adLoaded();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        adReturnTracking(bundle);
        AdLogUtil.Log().e("BaseBanner", "banner have been Loaded, but refresh banner success " + getLogString());
    }

    public boolean canShow() {
        return true;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        this.isLoaded = false;
        View banner = getBanner();
        if (banner != null) {
            ViewParent parent = banner.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(banner);
            }
            onBannerDestroy();
        }
    }

    public boolean destroyFoldAd() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public int getAdType() {
        return 2;
    }

    protected abstract T getBanner();

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isOfflineAd() {
        return false;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.Iad
    public void loadAd() {
        if (getBanner() != null) {
            super.loadAd();
            onBannerLoad();
        }
    }

    protected abstract void onBannerDestroy();

    protected abstract void onBannerLoad();

    public void pauseAd() {
    }

    public void resumeAd() {
    }

    public void setBannerAdMaxHeight(int i11) {
        this.mBannerAdMaxHeight = i11;
    }

    public void setBannerAdWidth(int i11) {
        this.mBannerAdWidth = i11;
    }

    public void setCloseDirectlyWithoutJumping(boolean z10) {
        this.isCloseDirectly = z10;
    }

    public void setHideAdCloseView(boolean z10) {
        this.isHideAdCloseView = z10;
    }

    @Override // com.hisavana.common.interfacz.IadView
    public void show(WrapTadView wrapTadView, String str, String str2) {
        View banner = getBanner();
        if (banner != null && wrapTadView != null) {
            logTrigerShow(str, str2);
            wrapTadView.onAddView(banner);
            showBanner();
        } else {
            AdLogUtil.Log().w("BaseBanner", "banner is null " + getLogString());
        }
    }

    protected abstract void showBanner();
}

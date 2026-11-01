package com.hisavana.common.interfacz;

import androidx.annotation.NonNull;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WrapTAdAllianceListener extends TInnerAdListener {
    protected TInnerAdListener adListenerAdapter;

    public TInnerAdListener getAdListener() {
        return this.adListenerAdapter;
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onAdActivate(@NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onAdActivate(additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onClosed(int i11) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onClosed(i11);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onClosed(TAdNativeInfo tAdNativeInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onClosed(tAdNativeInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onError(TAdErrorCode tAdErrorCode) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onError(tAdErrorCode);
        }
    }

    public void onLoad(List<TAdNativeInfo> list) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onLoad();
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onNativeFeedClicked(int i11, TAdNativeInfo tAdNativeInfo, @NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onNativeFeedClicked(i11, tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onNativeFeedShow(int i11, TAdNativeInfo tAdNativeInfo, @NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onNativeFeedShow(i11, tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onRewarded() {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onRewarded();
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onShowError(TAdErrorCode tAdErrorCode) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onShowError(tAdErrorCode);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onShowed(@NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onShowed(additionalInfo);
        }
    }

    public void setAdListener(TInnerAdListener tInnerAdListener) {
        this.adListenerAdapter = tInnerAdListener;
    }
}

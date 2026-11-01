package com.hisavana.common.interfacz;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TInnerAdListener {
    public void onAdActivate(@NonNull AdditionalInfo additionalInfo) {
    }

    public void onClicked(int i11) {
    }

    public void onClosed(int i11) {
    }

    public void onClosed(@Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public void onError(@Nullable TAdErrorCode tAdErrorCode) {
    }

    public void onLoad() {
    }

    public void onNativeFeedClicked(int i11, @Nullable TAdNativeInfo tAdNativeInfo, @NonNull AdditionalInfo additionalInfo) {
    }

    public void onNativeFeedShow(int i11, @Nullable TAdNativeInfo tAdNativeInfo, @NonNull AdditionalInfo additionalInfo) {
    }

    public void onRewarded() {
    }

    public void onShow(int i11) {
    }

    public void onShowError(@Nullable TAdErrorCode tAdErrorCode) {
    }

    public void onShowed(@NonNull AdditionalInfo additionalInfo) {
    }

    public void onSkipClick() {
    }

    public void onTimeReach() {
    }
}
